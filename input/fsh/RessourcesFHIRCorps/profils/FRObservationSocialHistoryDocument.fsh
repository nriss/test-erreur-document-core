Profile: FRObservationSocialHistoryDocument
Parent: Observation
Id: fr-observation-social-history-document
Title: "Observation - FR Observation Social History Document"
Description: "FRObservationSocialHistoryDocument décrit les habitudes de vie du patient (Habitus / Mode de vie)."

// mettre le bon canonical à partir de HL7 Europe Base and Core FHIR IG
//* ^extension[$imposeProfile].valueCanonical = Canonical()

* category 1..1 MS
* category ^short = "Catégorie de l'observation"
* category = $observation-category#social-history "Social History"

* code MS
/*Lorsque l’élément social ne figure pas dans ce ValueSet, le code 'Autre élément social' du VS est utilisé, 
et la précision exacte de l’élément est précisée via component.code (ex. “Activité professionnelle”) et le résultat dans component.value */ 
* code from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-social-history-code-cisis (required)
* code ^short = "Élément observé"
* value[x] MS
* value[x] ^short = "Résultat de l’observation effectuée : si aucune précision sur le code n’est nécessaire"
* component ^short = "Précision de l'élément social"
// l'équivalent de qualifier en CDA si le code provenant du jdv-social-history-code-cisis est #11345-6 "Autre élément social" (http://loinc.org) et qu'une précision est nécessaire
* component 0..1 
* component.code ^short = "Précision du code" // Exemple : * component.code = https://smt.esante.gouv.fr/CodeSystem/TA_ASIP#ORG-075 "Activité professionnelle"
* component.value[x] ^short  = "Résultat de l’observation effectuée pour la précision de l'élément social"

* obeys obs-social-result-required

Invariant: obs-social-result-required
Description: "Un résultat est obligatoire : soit via value[x], soit via component.value[x] lorsque le code est 'autre élément social' (LOINC 11345-6)."
Severity: #error
Expression: "(
   code.coding.where(system='http://loinc.org' and code='11345-6').exists() and component.value.exists() and value.empty()
 ) or (
   code.coding.where(system='http://loinc.org' and code='11345-6').empty() and value.exists() and component.value.empty()
 )"