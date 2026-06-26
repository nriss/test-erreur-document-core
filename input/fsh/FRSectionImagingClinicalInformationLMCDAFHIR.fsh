Instance: FRSectionImagingClinicalInformationLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMInformationsCliniques → FRCDADICOMHistoriqueMedical → FRCompositionDocument.section:History (Observation / FRConditionDocument/ FRObservationPregnancyDocument / FRObservationContraIndicationsImagingDocument / FRDeviceAuteurDocument / FRMedicationAdministrationDocument)"
Description: "Mapping des éléments du modèle métier FRLMInformationsCliniques vers la section CDA FRCDADICOMHistoriqueMedical puis vers les profils FHIR Observation, FRConditionDocument, FRObservationPregnancyDocument, FRObservationContraIndicationsImagingDocument, FRDeviceAuteurDocument et FRMedicationAdministrationDocument."
* title = "Mapping Métier/CDA/FHIR : Informations cliniques d'imagerie"
* status = #draft

// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-informations-cliniques"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-dicom-historique-medical"
// élément racine
* group[=].element[+].code = #FRLMInformationsCliniques
* group[=].element[=].target.code = #FRCDADICOMHistoriqueMedical
* group[=].element[=].target.equivalence = #equivalent
// titre de la section non codée
* group[=].element[+].code = #FRLMInformationsCliniques.titreSection
* group[=].element[=].target.code = #FRCDADICOMHistoriqueMedical.title
* group[=].element[=].target.equivalence = #equivalent
// bloc narratif : antécédents médicaux, grossesse, contre-indications, dispositifs médicaux implantés, traitements en cours
* group[=].element[+].code = #FRLMInformationsCliniques.blocNarratif
* group[=].element[=].target.code = #FRCDADICOMHistoriqueMedical.text
* group[=].element[=].target.equivalence = #equivalent
// antécédents médicaux
* group[=].element[+].code = #FRLMInformationsCliniques.entree.antecedentsMedicaux
* group[=].element[=].target.code = #FRCDADICOMHistoriqueMedical.entry.observation:antecedentsMedicaux
* group[=].element[=].target.equivalence = #equivalent
// antécédents chirurgicaux
* group[=].element[+].code = #FRLMInformationsCliniques.entree.antecedentsChirurgicaux
* group[=].element[=].target.code = #FRCDADICOMHistoriqueMedical.entry.observation:antecedentsChirurgicaux
* group[=].element[=].target.equivalence = #equivalent
// grossesse
* group[=].element[+].code = #FRLMInformationsCliniques.entree.statutGrossesse
* group[=].element[=].target.code = #FRCDADICOMHistoriqueMedical.entry.observation:grossesse
* group[=].element[=].target.equivalence = #equivalent
// contre-indications
* group[=].element[+].code = #FRLMInformationsCliniques.entree.contreIndications
* group[=].element[=].target.code = #FRCDADICOMHistoriqueMedical.entry.observation:contreIndications
* group[=].element[=].target.equivalence = #equivalent
// Problème
* group[=].element[+].code = #FRLMInformationsCliniques.entree.probleme
* group[=].element[=].target.equivalence = #unmatched
// dispositifs médicaux
* group[=].element[+].code = #FRLMInformationsCliniques.entree.dispositifMedical
* group[=].element[=].target.equivalence = #unmatched
// administration de produit de santé
* group[=].element[+].code = #FRLMInformationsCliniques.entree.administrationProduitDeSante
* group[=].element[=].target.equivalence = #unmatched
// sexe clinique
* group[=].element[+].code = #FRLMInformationsCliniques.entree.sexeClinique
* group[=].element[=].target.equivalence = #unmatched

// Groupe Mapping 2 : CDA (section FRCDADICOMHistoriqueMedical) → FHIR Observation
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-dicom-historique-medical"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/observation"
// le slicing sur la section section:history sera fait dans l'IG spécifique au volet
* group[=].element[+].code = #FRCDADICOMHistoriqueMedical
* group[=].element[=].target.code = #FRCompositionDocument.section:history
* group[=].element[=].target.equivalence = #equivalent
// Titre de la section
* group[=].element[+].code = #FRCDADICOMHistoriqueMedical.title
* group[=].element[=].target.code = #FRCompositionDocument.section:history.title
* group[=].element[=].target.equivalence = #equivalent
// antécédents médicaux
* group[=].element[+].code = #FRCDADICOMHistoriqueMedical.entry.observation:antecedentsMedicaux
* group[=].element[=].target.code = #FRCompositionDocument.section:history.entry:Observation
* group[=].element[=].target.equivalence = #equivalent
// antécédents chirurgicaux
* group[=].element[+].code = #FRCDADICOMHistoriqueMedical.entry.observation:antecedentsChirurgicaux
* group[=].element[=].target.code = #FRCompositionDocument.section:history.entry:Observation
* group[=].element[=].target.equivalence = #equivalent

// Groupe Mapping 3 : CDA (section FRCDADICOMHistoriqueMedical) → FHIR FRObservationPregnancyDocument
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-dicom-historique-medical"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-observation-pregnancy-document"
// grossesse
* group[=].element[+].code = #FRCDADICOMHistoriqueMedical.entry.observation:grossesse
* group[=].element[=].target.code = #FRCompositionDocument.section:history.entry:FRObservationPregnancyDocument
* group[=].element[=].target.equivalence = #equivalent

// Groupe Mapping 4 : CDA (section FRCDADICOMHistoriqueMedical) → FHIR FRObservationContraIndicationsImagingDocument
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-dicom-historique-medical"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-observation-contra-indications-imaging-document"
// contre-indications
* group[=].element[+].code = #FRCDADICOMHistoriqueMedical.entry.observation:contreIndications
* group[=].element[=].target.code = #FRCompositionDocument.section:history.entry:FRObservationContraIndicationsImagingDocument
* group[=].element[=].target.equivalence = #equivalent

// Groupe Mapping 5 : CDA (section FRCDADICOMHistoriqueMedical) → FHIR FRDeviceAuteurDocument
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-dicom-historique-medical"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-device-auteur-document"
// dispositifs médicaux
* group[=].element[+].target.code = #FRCompositionDocument.section:history.entry:FRDeviceAuteurDocument
* group[=].element[=].target.equivalence = #unmatched

// Groupe Mapping 6 : CDA (section FRCDADICOMHistoriqueMedical) → FHIR FRMedicationAdministrationDocument
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-dicom-historique-medical"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-medication-administration-document"
// administration de produit de santé
* group[=].element[+].target.code = #FRCompositionDocument.section:history.entry:FRMedicationAdministrationDocument
* group[=].element[=].target.equivalence = #unmatched

// Groupe Mapping 7 : CDA (section FRCDADICOMHistoriqueMedical) → FHIR FRConditionDocument
* group[=].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-dicom-historique-medical"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-condition-document"
// Problème
* group[=].element[+].target.code = #FRCompositionDocument.section:history.entry:FRConditionDocument
* group[=].element[=].target.equivalence = #unmatched