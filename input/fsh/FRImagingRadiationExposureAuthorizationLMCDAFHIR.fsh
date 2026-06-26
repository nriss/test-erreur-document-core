Instance: FRImagingRadiationExposureAuthorizationLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMAutorisationExposition → FRCDADICOMExpositionPatient → FRObservationRadiationExposureDocument.performer:professionnelAutorisantExposition"
Description: "Mapping des éléments du modèle métier FRLMAutorisationExposition vers le profil CDA FRCDADICOMExpositionPatient, puis vers le profil FHIR FRObservationRadiationExposureDocument.performer:professionnelAutorisantExposition."
* title = "Mapping Métier/CDA/FHIR : Professionnel autorisant l'exposition aux radiations"
* status = #draft

// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-autorisation-exposition"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-dicom-exposition-patient"
// Élément racine
* group[=].element[+].code = #FRLMAutorisationExposition
* group[=].element[=].target.code = #FRCDADICOMExpositionPatient
* group[=].element[=].target.equivalence = #equivalent
// code : Exposition du patient aux rayonnements ionisants
* group[=].element[+].code = #FRLMAutorisationExposition.code
* group[=].element[=].target.code = #FRCDADICOMExpositionPatient.code
* group[=].element[=].target.equivalence = #equivalent
// professionnel autorisant l'exposition
* group[=].element[+].code = #FRLMAutorisationExposition.participant
* group[=].element[=].target.code = #FRCDADICOMExpositionPatient.participant
* group[=].element[=].target.equivalence = #equivalent

// Groupe Mapping 2 : CDA → FHIR ObservationRadiationExposureDocument.performer:professionnelAutorisantExposition
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-dicom-exposition-patient"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-observation-radiation-exposure-document"
// Élément racine
* group[=].element[+].code = #FRCDADICOMExpositionPatient
* group[=].element[=].target.code = #FRObservationRadiationExposureDocument.performer:professionnelAutorisantExposition
* group[=].element[=].target.equivalence = #equivalent
// code : Exposition du patient aux rayonnements ionisants
* group[=].element[+].code = #FRCDADICOMExpositionPatient.code
* group[=].element[=].target.equivalence = #unmatched
// professionnel autorisant l'exposition
* group[=].element[+].code = #FRCDADICOMExpositionPatient.participant
* group[=].element[=].target.code = #FRObservationRadiationExposureDocument.performer:professionnelAutorisantExposition
* group[=].element[=].target.equivalence = #equivalent
