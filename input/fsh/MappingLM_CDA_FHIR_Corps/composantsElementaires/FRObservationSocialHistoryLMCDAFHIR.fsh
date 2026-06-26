Instance: FRObservationSocialHistoryLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMHabitusModeDeVieEntree → FRCDAHabitusModeDeVie → FRObservationSocialHistoryDocument"
Description: "Mapping des éléments du modèle métier FRLMHabitusModeDeVieEntree vers le profil CDA FRCDAHabitusModeDeVie, puis vers le profil FHIR FRObservationSocialHistoryDocument."
* title = "Mapping Métier/CDA/FHIR : \"Habitus Mode de vie\""
* status = #draft

// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-habitus-mode-de-vie-entree"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-habitus-mode-de-vie"
// Élément racine
* group[=].element[+].code = #FRLMHabitusModeDeVieEntree
* group[=].element[=].target.code = #FRCDAHabitusModeDeVie
* group[=].element[=].target.equivalence = #equivalent
// Identifiant de l'entrée
* group[=].element[+].code = #FRLMHabitusModeDeVieEntree.identifiant
* group[=].element[=].target.code = #FRCDAHabitusModeDeVie.id
* group[=].element[=].target.equivalence = #equivalent
// Code de l'entrée
* group[=].element[+].code = #FRLMHabitusModeDeVieEntree.code
* group[=].element[=].target.code = #FRCDAHabitusModeDeVie.code
* group[=].element[=].target.equivalence = #equivalent
// precision sur l'élément observé
* group[=].element[+].code = #FRLMHabitusModeDeVieEntree.code.precision
* group[=].element[=].target.code = #FRCDAHabitusModeDeVie.code.qualifier
* group[=].element[=].target.equivalence = #equivalent
//  - nom du qualifier
* group[=].element[+].code = #FRLMHabitusModeDeVieEntree.code.precision.name
* group[=].element[=].target.code = #FRCDAHabitusModeDeVie.code.qualifier.name
* group[=].element[=].target.equivalence = #equivalent
//  - valeur du qualifier
* group[=].element[+].code = #FRLMHabitusModeDeVieEntree.code.precision.value
* group[=].element[=].target.code = #FRCDAHabitusModeDeVie.code.qualifier.value
* group[=].element[=].target.equivalence = #equivalent
// Description narrative
* group[=].element[+].code = #FRLMHabitusModeDeVieEntree.description
* group[=].element[=].target.code = #FRCDAHabitusModeDeVie.text
* group[=].element[=].target.equivalence = #equivalent
// Statut de l'entrée
* group[=].element[+].code = #FRLMHabitusModeDeVieEntree.statut
* group[=].element[=].target.code = #FRCDAHabitusModeDeVie.statusCode
* group[=].element[=].target.equivalence = #equivalent
// Horodatage de l'entrée
* group[=].element[+].code = #FRLMHabitusModeDeVieEntree.horodatage
* group[=].element[=].target.code = #FRCDAHabitusModeDeVie.effectiveTime
* group[=].element[=].target.equivalence = #equivalent
// Résultat de l’observation effectuée
* group[=].element[+].code = #FRLMHabitusModeDeVieEntree.resultat
* group[=].element[=].target.code = #FRCDAHabitusModeDeVie.value
* group[=].element[=].target.equivalence = #equivalent

// Groupe Mapping 2 : CDA → FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-habitus-mode-de-vie"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-observation-social-history-document"
// Élément racine
* group[=].element[+].code = #FRCDAHabitusModeDeVie
* group[=].element[=].target.code = #FRObservationSocialHistoryDocument 
* group[=].element[=].target.equivalence = #equivalent
// Identifiant de l'entrée
* group[=].element[+].code = #FRCDAHabitusModeDeVie.id
* group[=].element[=].target.code = #FRObservationSocialHistoryDocument.identifier
* group[=].element[=].target.equivalence = #equivalent
// Code de l'entrée
* group[=].element[+].code = #FRCDAHabitusModeDeVie.code
* group[=].element[=].target.code = #FRObservationSocialHistoryDocument.code
* group[=].element[=].target.equivalence = #equivalent
// precision sur l'élément observé (le code 'Autre élément social' du VS jdv-social-history-code-cisis est utilisé)
* group[=].element[+].code = #FRCDAHabitusModeDeVie.code.qualifier
* group[=].element[=].target.code = #FRObservationSocialHistoryDocument.component
* group[=].element[=].target.equivalence = #equivalent
//  - nom du qualifier
* group[=].element[+].code = #FRCDAHabitusModeDeVie.code.qualifier.name
* group[=].element[=].target.code = #FRObservationSocialHistoryDocument.component.code
* group[=].element[=].target.equivalence = #equivalent
//  - valeur du qualifier
* group[=].element[+].code = #FRCDAHabitusModeDeVie.code.qualifier.value
* group[=].element[=].target.code = #FRObservationSocialHistoryDocument.component.value
* group[=].element[=].target.equivalence = #equivalent
// Description narrative
* group[=].element[+].code = #FRCDAHabitusModeDeVie.text
* group[=].element[=].target.code = #FRObservationSocialHistoryDocument.note
* group[=].element[=].target.equivalence = #equivalent
// Statut de l'entrée
* group[=].element[+].code = #FRCDAHabitusModeDeVie.statusCode
* group[=].element[=].target.code = #FRObservationSocialHistoryDocument.status
* group[=].element[=].target.equivalence = #equivalent
// Horodatage de l'entrée   
* group[=].element[+].code = #FRCDAHabitusModeDeVie.effectiveTime
* group[=].element[=].target.code = #FRObservationSocialHistoryDocument.effectiveDateTime
* group[=].element[=].target.equivalence = #equivalent
// Résultat de l’observation effectuée
* group[=].element[+].code = #FRCDAHabitusModeDeVie.value
* group[=].element[=].target.code = #FRObservationSocialHistoryDocument.value
* group[=].element[=].target.equivalence = #equivalent