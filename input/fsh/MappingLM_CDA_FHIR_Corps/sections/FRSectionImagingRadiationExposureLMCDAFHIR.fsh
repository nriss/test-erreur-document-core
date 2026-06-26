Instance: FRSectionImagingRadiationExposureLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMExpositionRadiations → FRCDADICOMExpositionAuxRadiations → FRCompositionDocument.section:radiationExposure"
Description: "Mapping des éléments du modèle métier FRLMExpositionRadiations vers la section CDA FRCDADICOMExpositionAuxRadiations puis vers le profil FHIR FRCompositionDocument.section:radiationExposure."
* title = "Mapping Métier/CDA/FHIR : Exposition aux radiations"
* status = #draft

// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-exposition-radiations"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-dicom-exposition-aux-radiations"
// Élément racine
* group[=].element[+].code = #FRLMExpositionRadiations
* group[=].element[=].target.code = #FRCDADICOMExpositionAuxRadiations
* group[=].element[=].target.equivalence = #equivalent
// code de la section
* group[=].element[+].code = #FRLMExpositionRadiations.codeSection
* group[=].element[=].target.code = #FRCDADICOMExpositionAuxRadiations.code
* group[=].element[=].target.equivalence = #equivalent
// titreSection
* group[=].element[+].code = #FRLMExpositionRadiations.titreSection
* group[=].element[=].target.code = #FRCDADICOMExpositionAuxRadiations.title
* group[=].element[=].target.equivalence = #equivalent
// texte narratif
* group[=].element[+].code = #FRLMExpositionRadiations.blocNarratif
* group[=].element[=].target.code = #FRCDADICOMExpositionAuxRadiations.text
* group[=].element[=].target.equivalence = #equivalent
// autorisation exposition
* group[=].element[+].code = #FRLMExpositionRadiations.entree.autorisationExposition
* group[=].element[=].target.code = #FRCDADICOMExpositionAuxRadiations.entry:FRCDADICOMExpositionPatient
* group[=].element[=].target.equivalence = #equivalent
// quantité d'exposition aux radiations
* group[=].element[+].code = #FRLMExpositionRadiations.entree.quantiteExposition
* group[=].element[=].target.code = #FRCDADICOMExpositionAuxRadiations.entry:FRCDADICOMQuantite
* group[=].element[=].target.equivalence = #equivalent
// administration radiopharmaceutique
* group[=].element[+].code = #FRLMExpositionRadiations.entree.administrationRadiopharmaceutique
* group[=].element[=].target.code = #FRCDADICOMExpositionAuxRadiations.entry:FRCDADICOMAdministrationRadiopharmaceutique
* group[=].element[=].target.equivalence = #equivalent

// Groupe Mapping 2 : CDA → FHIR ObservationRadiationExposureDocument
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-dicom-exposition-aux-radiations"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-composition-document"
// Élément racine
* group[=].element[+].code = #FRCDADICOMExpositionAuxRadiations
* group[=].element[=].target.code = #FRCompositionDocument.section:radiationExposure
* group[=].element[=].target.equivalence = #equivalent
// code de la section
* group[=].element[+].code = #FRCDADICOMExpositionAuxRadiations.code
* group[=].element[=].target.code = #FRCompositionDocument.section:radiationExposure.code
* group[=].element[=].target.equivalence = #equivalent
// Titre de la section
* group[=].element[+].code = #FRCDADICOMExpositionAuxRadiations.title
* group[=].element[=].target.code = #FRCompositionDocument.section:radiationExposure.title
* group[=].element[=].target.equivalence = #equivalent
// Texte narratif
* group[=].element[+].code = #FRCDADICOMExpositionAuxRadiations.text
* group[=].element[=].target.code = #FRCompositionDocument.section:radiationExposure.text
* group[=].element[=].target.equivalence = #equivalent
// autorisation exposition
* group[=].element[+].code = #FRCDADICOMExpositionAuxRadiations.entry:FRCDADICOMExpositionPatient
* group[=].element[=].target.code = #FRCompositionDocument.section:radiationExposure.entry:FRObservationRadiationExposureDocument.performer:professionnelAutorisantExposition
* group[=].element[=].target.equivalence = #equivalent
// quantité d'exposition aux radiations
* group[=].element[+].code = #FRCDADICOMExpositionAuxRadiations.entry:FRCDADICOMQuantite
* group[=].element[=].target.code = #FRCompositionDocument.section:radiationExposure.entry:FRObservationRadiationExposureDocument.component
* group[=].element[=].target.equivalence = #equivalent
// administration radiopharmaceutique
* group[=].element[+].code = #FRCDADICOMExpositionAuxRadiations.entry:FRCDADICOMAdministrationRadiopharmaceutique
* group[=].element[=].target.code = #FRCompositionDocument.section:radiationExposure.entry:FRObservationRadiationExposureDocument.partOf:medicationAdministrationRef
* group[=].element[=].target.equivalence = #equivalent

