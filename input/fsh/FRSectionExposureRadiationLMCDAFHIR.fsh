Instance: FRSectionExposureRadiationLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMExpositionRadiations → FRCDADICOMExpositionAuxRadiations → FRCompositionDocument.section:exposureRadiation"
Description: "Mapping des éléments du modèle métier FRLMExpositionRadiations vers la section CDA FRCDADICOMExpositionAuxRadiations, puis vers la section FHIR FRCompositionDocument.section:exposureRadiation."
* title = "Mapping Métier/CDA/FHIR : \"Exposition aux radiations\""
* status = #draft

// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-exposition-radiations"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-dicom-exposition-aux-radiations"
// élément racine
* group[=].element[+].code = #FRLMExpositionRadiations
* group[=].element[=].target[+].code = #FRCDADICOMExpositionAuxRadiations
* group[=].element[=].target[=].equivalence = #equivalent
// code de la section
* group[=].element[+].code = #FRLMExpositionRadiations.codeSection
* group[=].element[=].target[+].code = #FRCDADICOMExpositionAuxRadiations.code
* group[=].element[=].target[=].equivalence = #equivalent
// titre de la section
* group[=].element[+].code = #FRLMExpositionRadiations.titreSection
* group[=].element[=].target[+].code = #FRCDADICOMExpositionAuxRadiations.title
* group[=].element[=].target[=].equivalence = #equivalent
// bloc narratif de la section
* group[=].element[+].code = #FRLMExpositionRadiations.blocNarratif
* group[=].element[=].target[+].code = #FRCDADICOMExpositionAuxRadiations.text
* group[=].element[=].target[=].equivalence = #equivalent
// Entrée Autorisation à l'exposition aux rayonnements ionisants
* group[=].element[+].code = #FRLMExpositionRadiations.entree.autorisationExposition
* group[=].element[=].target[+].code = #FRCDADICOMExpositionAuxRadiations.entry:frDICOMExpositionPatient
* group[=].element[=].target[=].equivalence = #equivalent
// Entrée Quantité
* group[=].element[+].code = #FRLMExpositionRadiations.entree.quantiteExposition
* group[=].element[=].target[+].code = #FRCDADICOMExpositionAuxRadiations.entry:frDICOMQuantite
* group[=].element[=].target[=].equivalence = #equivalent
// Entrée administration des produits radiopharmaceutiques
* group[=].element[+].code = #FRLMExpositionRadiations.entree.administrationRadiopharmaceutique
* group[=].element[=].target[+].code = #FRCDADICOMExpositionAuxRadiations.entry:frDICOMAdministrationRadiopharmaceutique
* group[=].element[=].target[=].equivalence = #equivalent
// Entrée observation de grossesse
* group[=].element[+].code = #FRLMExpositionRadiations.entree.observationGrossesse
* group[=].element[=].target[+].code = #FRCDADICOMExpositionAuxRadiations.entry:frDicomObservationGrossesse
* group[=].element[=].target[=].equivalence = #equivalent
// Entrée observation indication
* group[=].element[+].code = #FRLMExpositionRadiations.entree.observationIndication
* group[=].element[=].target[+].code = #FRCDADICOMExpositionAuxRadiations.entry:frDicomObservationIndication
* group[=].element[=].target[=].equivalence = #equivalent

// Groupe Mapping 2 : CDA → FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-dicom-exposition-aux-radiations"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-composition-document"
// élément racine
* group[=].element[+].code = #FRCDADICOMExpositionAuxRadiations
* group[=].element[=].target[+].code = #FRCompositionDocument.section:exposureRadiation
* group[=].element[=].target[=].equivalence = #equivalent
// code de la section
* group[=].element[+].code = #FRCDADICOMExpositionAuxRadiations.code
* group[=].element[=].target[+].code = #FRCompositionDocument.section:exposureRadiation.code
* group[=].element[=].target[=].equivalence = #equivalent
// titre de la section
* group[=].element[+].code = #FRCDADICOMExpositionAuxRadiations.title
* group[=].element[=].target[+].code = #FRCompositionDocument.section:exposureRadiation.title
* group[=].element[=].target[=].equivalence = #equivalent
// bloc narratif de la section
* group[=].element[+].code = #FRCDADICOMExpositionAuxRadiations.text
* group[=].element[=].target[+].code = #FRCompositionDocument.section:exposureRadiation.text
* group[=].element[=].target[=].equivalence = #equivalent
// Entrée Autorisation à l'exposition aux rayonnements ionisants
* group[=].element[+].code = #FRCDADICOMExpositionAuxRadiations.entry:frDICOMExpositionPatient
* group[=].element[=].target[+].code = #FRCompositionDocument.section:exposureRadiation.entry:FRObservationRadiationExposureDocument.performer:professionnelAutorisantExposition
* group[=].element[=].target[=].equivalence = #equivalent
// Entrée Quantité
* group[=].element[+].code = #FRCDADICOMExpositionAuxRadiations.entry:frDICOMQuantite
* group[=].element[=].target[+].code = #FRCompositionDocument.section:exposureRadiation.entry:FRObservationRadiationExposureDocument.component
* group[=].element[=].target[=].equivalence = #equivalent
// Entrée administration des produits radiopharmaceutiques
* group[=].element[+].code = #FRCDADICOMExpositionAuxRadiations.entry:frDICOMAdministrationRadiopharmaceutique
* group[=].element[=].target[+].code = #FRCompositionDocument.section:exposureRadiation.entry:FRObservationRadiationExposureDocument.partOf:medicationAdministrationRef
* group[=].element[=].target[=].equivalence = #equivalent
// Entrée observation de grossesse
* group[=].element[+].code = #FRCDADICOMExpositionAuxRadiations.entry:frDicomObservationGrossesse
* group[=].element[=].target[+].code = #FRCompositionDocument.section:exposureRadiation.entry:FRObservationRadiationExposureDocument.hasMember:observationGrossesse
* group[=].element[=].target[=].equivalence = #equivalent
// Entrée observation indication
* group[=].element[+].code = #FRCDADICOMExpositionAuxRadiations.entry:frDicomObservationIndication
* group[=].element[=].target[+].code = #FRCompositionDocument.section:exposureRadiation.entry:FRObservationRadiationExposureDocument.hasMember:observationIndication
* group[=].element[=].target[=].equivalence = #equivalent