Instance: FRSectionMedicalDeviceLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMDispositifsMedicaux → FRCDADispositifsMedicaux → FRCompositionDocument.section:medicalDevice"
Description: "Mapping des éléments du modèle métier FRLMDispositifsMedicaux vers la section CDA FRCDADispositifsMedicaux, puis vers la section FHIR FRCompositionDocument.section:medicalDevice."
* title = "Mapping Métier/CDA/FHIR : \"Dispositifs médicaux\""
* status = #draft
// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-dispositifs-medicaux"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-dispositifs-medicaux"
// élément racine
* group[=].element[+].code = #FRLMDispositifsMedicaux
* group[=].element[=].target[+].code = #FRCDADispositifsMedicaux
* group[=].element[=].target[=].equivalence = #equivalent
// code de la section
* group[=].element[+].code = #FRLMDispositifsMedicaux.codeSection
* group[=].element[=].target[+].code = #FRCDADispositifsMedicaux.code
* group[=].element[=].target[=].equivalence = #equivalent
// titre de la section
* group[=].element[+].code = #FRLMDispositifsMedicaux.titreSection
* group[=].element[=].target[+].code = #FRCDADispositifsMedicaux.title
* group[=].element[=].target[=].equivalence = #equivalent
// bloc narratif de la section
* group[=].element[+].code = #FRLMDispositifsMedicaux.blocNarratif
* group[=].element[=].target[+].code = #FRCDADispositifsMedicaux.text
* group[=].element[=].target[=].equivalence = #equivalent
// Entrée Dispositif medical
* group[=].element[+].code = #FRLMDispositifsMedicaux.entree.dispositifsMedicaux
* group[=].element[=].target[+].code = #FRCDADispositifsMedicaux.entry:FRCDADispositifMedical
* group[=].element[=].target[=].equivalence = #equivalent

// Groupe Mapping 2 : CDA → FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-dispositifs-medicaux"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-composition-document"
// élément racine
* group[=].element[+].code = #FRCDADispositifsMedicaux
* group[=].element[=].target[+].code = #FRCompositionDocument.section:medicalDevice
* group[=].element[=].target[=].equivalence = #equivalent
// code de la section
* group[=].element[+].code = #FRCDADispositifsMedicaux.code
* group[=].element[=].target[+].code = #FRCompositionDocument.section:medicalDevice.code
* group[=].element[=].target[=].equivalence = #equivalent
// titre de la section
* group[=].element[+].code = #FRCDADispositifsMedicaux.title
* group[=].element[=].target[+].code = #FRCompositionDocument.section:medicalDevice.title
* group[=].element[=].target[=].equivalence = #equivalent
// bloc narratif de la section
* group[=].element[+].code = #FRCDADispositifsMedicaux.text
* group[=].element[=].target[+].code = #FRCompositionDocument.section:medicalDevice.text
* group[=].element[=].target[=].equivalence = #equivalent
// Entrée Dispositif medical
* group[=].element[+].code = #FRCDADispositifsMedicaux.entry:FRCDADispositifMedical
* group[=].element[=].target[+].code = #FRCompositionDocument.section:medicalDevice.entry:FRDeviceRequestDocument
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[+].code = #FRCompositionDocument.section:medicalDevice.entry:FRDeviceUseStatementDocument
* group[=].element[=].target[=].equivalence = #equivalent