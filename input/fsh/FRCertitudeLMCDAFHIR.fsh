Instance: FRCertitudeLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMCertitude → FRCDACertitude → FRConditionDocument.verificationStatus et FRAllergyIntoleranceDocument.verificationStatus"
Description: "Mapping des éléments du modèle métier FRLMCertitude vers le profil CDA FRCDACertitude, puis vers les profils FHIR FRConditionDocument.verificationStatus et FRAllergyIntoleranceDocument.verificationStatus."
* title = "Mapping Métier/CDA/FHIR : \"Certitude\""
* status = #draft

// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-certitude"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-certitude"
// Élément racine
* group[=].element[+].code = #FRLMCertitude
* group[=].element[=].target.code = #FRCDACertitude
* group[=].element[=].target.equivalence = #equivalent
// Identifiant de l'observation
* group[=].element[+].code = #FRLMCertitude.identifiant
* group[=].element[=].target.code = #FRCDACertitude.id
* group[=].element[=].target.equivalence = #equivalent
// Code de l'observation
* group[=].element[+].code = #FRLMCertitude.code
* group[=].element[=].target.code = #FRCDACertitude.code
* group[=].element[=].target.equivalence = #equivalent
// Statut de l'observation
* group[=].element[+].code = #FRLMCertitude.statut
* group[=].element[=].target.code = #FRCDACertitude.statusCode
* group[=].element[=].target.equivalence = #equivalent
// Date de l'observation
* group[=].element[+].code = #FRLMCertitude.date
* group[=].element[=].target.code = #FRCDACertitude.effectiveTime
* group[=].element[=].target.equivalence = #equivalent
// Description narrative
* group[=].element[+].code = #FRLMCertitude.descriptionNarrative
* group[=].element[=].target.code = #FRCDACertitude.text
* group[=].element[=].target.equivalence = #equivalent
// Valeur de l'observation
* group[=].element[+].code = #FRLMCertitude.valeur
* group[=].element[=].target.code = #FRCDACertitude.value
* group[=].element[=].target.equivalence = #equivalent

// Groupe Mapping 2 : CDA → FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-certitude"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-condition-document"
// valeur de l'observation
* group[=].element[+].code = #FRCDACertitude.value
* group[=].element[=].target.code = #FRConditionDocument.verificationStatus
* group[=].element[=].target.equivalence = #equivalent

// Groupe Mapping 3 : CDA → FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-certitude"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-allergy-intolerance-document"
// valeur de l'observation
* group[=].element[+].code = #FRCDACertitude.value
* group[=].element[=].target.code = #FRAllergyIntoleranceDocument.verificationStatus
* group[=].element[=].target.equivalence = #equivalent