Instance: FRObservationMedicalSummaryLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMSyntheseMedicaleSejour → FRCDASyntheseMedicaleSejour → FRObservationMedicalSummaryDocument"
Description: "Mapping des éléments du modèle métier FRLMSyntheseMedicaleSejour vers la sous-entrée CDA FRCDASyntheseMedicaleSejour puis vers le profil FHIR FRObservationMedicalSummaryDocument."
* title = "Mapping Métier/CDA/FHIR : Synthèse médicale de séjour"
* status = #draft

// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-synthese-medicale-sejour"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-synthese-medicale-sejour"
// élément racine
* group[=].element[+].code = #FRLMSyntheseMedicaleSejour
* group[=].element[=].target.code = #FRCDASyntheseMedicaleSejour
* group[=].element[=].target.equivalence = #equivalent
// identifiant
* group[=].element[+].code = #FRLMSyntheseMedicaleSejour.identifiant
* group[=].element[=].target.code = #FRCDASyntheseMedicaleSejour.id
* group[=].element[=].target.equivalence = #equivalent
// code
* group[=].element[+].code = #FRLMSyntheseMedicaleSejour.code
* group[=].element[=].target.code = #FRCDASyntheseMedicaleSejour.code
* group[=].element[=].target.equivalence = #equivalent
// description
* group[=].element[+].code = #FRLMSyntheseMedicaleSejour.description
* group[=].element[=].target.code = #FRCDASyntheseMedicaleSejour.text
* group[=].element[=].target.equivalence = #equivalent
// statut
* group[=].element[+].code = #FRLMSyntheseMedicaleSejour.statut
* group[=].element[=].target.code = #FRCDASyntheseMedicaleSejour.statusCode
* group[=].element[=].target.equivalence = #equivalent
// date
* group[=].element[+].code = #FRLMSyntheseMedicaleSejour.date
* group[=].element[=].target.code = #FRCDASyntheseMedicaleSejour.effectiveTime
* group[=].element[=].target.equivalence = #equivalent
// statutDocument
* group[=].element[+].code = #FRLMSyntheseMedicaleSejour.statutDocument
* group[=].element[=].target.code = #FRCDASyntheseMedicaleSejour.value
* group[=].element[=].target.equivalence = #equivalent
// auteur
* group[=].element[+].code = #FRLMSyntheseMedicaleSejour.auteur
* group[=].element[=].target.code = #FRCDASyntheseMedicaleSejour.author
* group[=].element[=].target.equivalence = #equivalent

// Groupe Mapping 2 : CDA → FHIR ObservationMedicalSummaryDocument
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-synthese-medicale-sejour"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-observation-medical-summary-document"
// Identifiant
* group[=].element[+].code = #FRCDASyntheseMedicaleSejour.id
* group[=].element[=].target.code = #FRObservationMedicalSummaryDocument.identifier
* group[=].element[=].target.equivalence = #equivalent
// Code
* group[=].element[+].code = #FRCDASyntheseMedicaleSejour.code
* group[=].element[=].target.code = #FRObservationMedicalSummaryDocument.code
* group[=].element[=].target.equivalence = #equivalent
// Description
* group[=].element[+].code = #FRCDASyntheseMedicaleSejour.text
* group[=].element[=].target.code = #FRObservationMedicalSummaryDocument.code.text
* group[=].element[=].target.equivalence = #equivalent
// Statut
* group[=].element[+].code = #FRCDASyntheseMedicaleSejour.statusCode
* group[=].element[=].target.code = #FRObservationMedicalSummaryDocument.status 
* group[=].element[=].target.equivalence = #equivalent
// Date
* group[=].element[+].code = #FRCDASyntheseMedicaleSejour.effectiveTime
* group[=].element[=].target.code = #FRObservationMedicalSummaryDocument.effective[x]
* group[=].element[=].target.equivalence = #equivalent
// StatutDocument
* group[=].element[+].code = #FRCDASyntheseMedicaleSejour.value
* group[=].element[=].target.code = #FRObservationMedicalSummaryDocument.valueString
* group[=].element[=].target.equivalence = #equivalent
// Auteur
* group[=].element[+].code = #FRCDASyntheseMedicaleSejour.author
* group[=].element[=].target.code = #FRObservationMedicalSummaryDocument.performer.extension:author
* group[=].element[=].target.equivalence = #equivalent
