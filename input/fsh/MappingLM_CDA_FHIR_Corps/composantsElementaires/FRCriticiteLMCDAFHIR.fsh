Instance: FRCriticiteLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMCriticite -> FRCDACriticite -> FRAllergyIntoleranceDocument.criticality"
Description: "Mapping des éléments du modele metier FRLMCriticite vers le profil CDA FRCDACriticite, puis vers le profil FHIR FRAllergyIntoleranceDocument.criticality."
* title = "Mapping Metier/CDA/FHIR : \"Criticite\""
* status = #draft

// Groupe Mapping 1 : modele metier -> CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-criticite"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-criticite"
// Element racine
* group[=].element[+].code = #FRLMCriticite
* group[=].element[=].target.code = #FRCDACriticite
* group[=].element[=].target.equivalence = #equivalent
// Identifiant de l'observation
* group[=].element[+].code = #FRLMCriticite.identifiant
* group[=].element[=].target.code = #FRCDACriticite.id
* group[=].element[=].target.equivalence = #equivalent
// Code de l'observation
* group[=].element[+].code = #FRLMCriticite.code
* group[=].element[=].target.code = #FRCDACriticite.code
* group[=].element[=].target.equivalence = #equivalent
// Statut de l'observation
* group[=].element[+].code = #FRLMCriticite.statut
* group[=].element[=].target.code = #FRCDACriticite.statusCode
* group[=].element[=].target.equivalence = #equivalent
// Date de l'observation
* group[=].element[+].code = #FRLMCriticite.date
* group[=].element[=].target.code = #FRCDACriticite.effectiveTime
* group[=].element[=].target.equivalence = #equivalent
// Description narrative
* group[=].element[+].code = #FRLMCriticite.descriptionNarrative
* group[=].element[=].target.code = #FRCDACriticite.text
* group[=].element[=].target.equivalence = #equivalent
// Valeur de l'observation
* group[=].element[+].code = #FRLMCriticite.valeur
* group[=].element[=].target.code = #FRCDACriticite.value
* group[=].element[=].target.equivalence = #equivalent

// Groupe Mapping 2 : CDA -> FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-criticite"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-allergy-intolerance-document"
// valeur de l'observation
* group[=].element[+].code = #FRCDACriticite.value
* group[=].element[=].target.code = #FRAllergyIntoleranceDocument.criticality
* group[=].element[=].target.equivalence = #equivalent
