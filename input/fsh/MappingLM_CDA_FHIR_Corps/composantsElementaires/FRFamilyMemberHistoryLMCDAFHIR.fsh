Instance: FRFamilyMemberHistoryLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMAntecedentFamilialObserve → FRCDAAntecedentFamilialObserve → FRFamilyMemberHistoryDocument"
Description: "Mapping des éléments du modèle métier FRLMAntecedentFamilialObserve vers le profil CDA FRCDAAntecedentFamilialObserve, puis vers le profil FHIR FRFamilyMemberHistoryDocument."
* title = "Mapping Métier/CDA/FHIR : \"Antécédent familial observé\""
* status = #draft

// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-antecedent-familial-observe"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-antecedent-familial-observe"
// Élément racine
* group[=].element[+].code = #FRLMAntecedentFamilialObserve
* group[=].element[=].target.code = #FRCDAAntecedentFamilialObserve
* group[=].element[=].target.equivalence = #equivalent
// Identifiant
* group[=].element[+].code = #FRLMAntecedentFamilialObserve.identifiant
* group[=].element[=].target.code = #FRCDAAntecedentFamilialObserve.id
* group[=].element[=].target.equivalence = #equivalent
// Statut de l'observation
* group[=].element[+].code = #FRLMAntecedentFamilialObserve.statut
* group[=].element[=].target.code = #FRCDAAntecedentFamilialObserve.statusCode
* group[=].element[=].target.equivalence = #equivalent
// Code de l'observation
* group[=].element[+].code = #FRLMAntecedentFamilialObserve.code
* group[=].element[=].target.code = #FRCDAAntecedentFamilialObserve.code
* group[=].element[=].target.equivalence = #equivalent
// Description narrative de l'observation
* group[=].element[+].code = #FRLMAntecedentFamilialObserve.descriptionNarrative
* group[=].element[=].target.code = #FRCDAAntecedentFamilialObserve.text
* group[=].element[=].target.equivalence = #equivalent
// Horodatage de l'entrée
* group[=].element[+].code = #FRLMAntecedentFamilialObserve.horodatage
* group[=].element[=].target.code = #FRCDAAntecedentFamilialObserve.effectiveTime
* group[=].element[=].target.equivalence = #equivalent
// Résultat de l'observation effectuée
* group[=].element[+].code = #FRLMAntecedentFamilialObserve.resultat
* group[=].element[=].target.code = #FRCDAAntecedentFamilialObserve.value
* group[=].element[=].target.equivalence = #equivalent
// Interprétation
* group[=].element[+].code = #FRLMAntecedentFamilialObserve.interpretation
* group[=].element[=].target.code = #FRCDAAntecedentFamilialObserve.interpretationCode
* group[=].element[=].target.equivalence = #equivalent
// Méthode utilisée
* group[=].element[+].code = #FRLMAntecedentFamilialObserve.methode
* group[=].element[=].target.code = #FRCDAAntecedentFamilialObserve.methodCode
* group[=].element[=].target.equivalence = #equivalent
// Site
* group[=].element[+].code = #FRLMAntecedentFamilialObserve.site
* group[=].element[=].target.code = #FRCDAAntecedentFamilialObserve.targetSiteCode
* group[=].element[=].target.equivalence = #equivalent
// Auteur de l'observation
* group[=].element[+].code = #FRLMAntecedentFamilialObserve.auteur
* group[=].element[=].target.code = #FRCDAAntecedentFamilialObserve.author
* group[=].element[=].target.equivalence = #equivalent

// Groupe Mapping 2 : CDA → FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-antecedent-familial-observe"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-family-member-history-document"
// Élément racine
* group[=].element[+].code = #FRCDAAntecedentFamilialObserve
* group[=].element[=].target.code = #FRFamilyMemberHistoryDocument.condition
* group[=].element[=].target.equivalence = #equivalent
// Identification de l'observation
* group[=].element[+].code = #FRCDAAntecedentFamilialObserve.id
* group[=].element[=].target.code = #FRFamilyMemberHistoryDocument.identifier
* group[=].element[=].target.equivalence = #equivalent
// Statut de l'observation
* group[=].element[+].code = #FRCDAAntecedentFamilialObserve.statusCode
* group[=].element[=].target.code = #FRFamilyMemberHistoryDocument.status
* group[=].element[=].target.equivalence = #equivalent
// Horodatage de l'entrée
* group[=].element[+].code = #FRCDAAntecedentFamilialObserve.effectiveTime
* group[=].element[=].target.code = #FRFamilyMemberHistoryDocument.condition.onset[x]
* group[=].element[=].target.equivalence = #equivalent
// Code de l'observation
* group[=].element[+].code = #FRCDAAntecedentFamilialObserve.code
* group[=].element[=].target.code = #FRFamilyMemberHistoryDocument.condition.code
* group[=].element[=].target.equivalence = #equivalent
// Description narrative de l'observation
* group[=].element[+].code = #FRCDAAntecedentFamilialObserve.text
* group[=].element[=].target.code = #FRFamilyMemberHistoryDocument.condition.note
* group[=].element[=].target.equivalence = #equivalent
// Résultat de l'observation effectuée  
* group[=].element[+].code = #FRCDAAntecedentFamilialObserve.value
* group[=].element[=].target.code = #FRFamilyMemberHistoryDocument.condition.outcome
* group[=].element[=].target.equivalence = #equivalent
// Interprétation
* group[=].element[+].code = #FRCDAAntecedentFamilialObserve.interpretationCode
* group[=].element[=].target.code = #FRFamilyMemberHistoryDocument.condition.extension:FRInterpretationExtension
* group[=].element[=].target.equivalence = #equivalent  
// Méthode utilisée
* group[=].element[+].code = #FRCDAAntecedentFamilialObserve.methodCode
* group[=].element[=].target.code = #FRFamilyMemberHistoryDocument.condition.extension:FRMethodExtension
* group[=].element[=].target.equivalence = #equivalent
// Site
* group[=].element[+].code = #FRCDAAntecedentFamilialObserve.targetSiteCode
* group[=].element[=].target.code = #FRFamilyMemberHistoryDocument.condition.extension:FRFamilyMemberHistoryBodySiteExtension
* group[=].element[=].target.equivalence = #equivalent
// Auteur de l'observation
* group[=].element[+].code = #FRCDAAntecedentFamilialObserve.author 
* group[=].element[=].target.code = #FRFamilyMemberHistoryDocument.condition.extension:FRActorExtension
* group[=].element[=].target.equivalence = #equivalent