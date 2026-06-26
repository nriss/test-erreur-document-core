Instance: FRSectionPrescriptionOfMedicalDevicesLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMPrescriptionDispositifsMedicaux → FRCDAPrescriptionDispositifsMedicaux → FRCompositionDocument.section:medicalDevicePrescription"
Description: "Mapping des éléments du modèle métier FRLMPrescriptionDispositifsMedicaux vers la section CDA FRCDAPrescriptionDispositifsMedicaux, puis vers la section FHIR FRCompositionDocument.section:medicalDevicePrescription."
* title = "Mapping Métier/CDA/FHIR : \"Prescription de dispositifs médicaux\""
* status = #draft
// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-prescription-dispositifs-medicaux"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-prescription-dispositifs-medicaux"
// élément racine
* group[=].element[+].code = #FRLMPrescriptionDispositifsMedicaux
* group[=].element[=].target[+].code = #FRCDAPrescriptionDispositifsMedicaux
* group[=].element[=].target[=].equivalence = #equivalent
// auteur de la prescription
* group[=].element[+].code = #FRLMPrescriptionDispositifsMedicaux.auteur
* group[=].element[=].target[+].code = #FRCDAPrescriptionDispositifsMedicaux.author
* group[=].element[=].target[=].equivalence = #equivalent
// code de la section
* group[=].element[+].code = #FRLMPrescriptionDispositifsMedicaux.codeSection
* group[=].element[=].target[+].code = #FRCDAPrescriptionDispositifsMedicaux.code
* group[=].element[=].target[=].equivalence = #equivalent
// titre de la section
* group[=].element[+].code = #FRLMPrescriptionDispositifsMedicaux.titreSection
* group[=].element[=].target[+].code = #FRCDAPrescriptionDispositifsMedicaux.title
* group[=].element[=].target[=].equivalence = #equivalent
// bloc narratif de la section
* group[=].element[+].code = #FRLMPrescriptionDispositifsMedicaux.blocNarratif
* group[=].element[=].target[+].code = #FRCDAPrescriptionDispositifsMedicaux.text
* group[=].element[=].target[=].equivalence = #equivalent
// Entrée Dispositif medical prescrit
* group[=].element[+].code = #FRLMPrescriptionDispositifsMedicaux.entree.dispositifMedical
* group[=].element[=].target[+].code = #FRCDAPrescriptionDispositifsMedicaux.entry:FRCDADispositifMedical
* group[=].element[=].target[=].equivalence = #equivalent

// Groupe Mapping 2 : CDA → FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-prescription-dispositifs-medicaux"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-composition-document"
// élément racine
* group[=].element[+].code = #FRCDAPrescriptionDispositifsMedicaux
* group[=].element[=].target[+].code = #FRCompositionDocument.section:medicalDevicePrescription
* group[=].element[=].target[=].equivalence = #equivalent
// auteur de la prescription
* group[=].element[+].code = #FRCDAPrescriptionDispositifsMedicaux.author
* group[=].element[=].target[+].code = #FRCompositionDocument.section:medicalDevicePrescription.author
* group[=].element[=].target[=].equivalence = #equivalent
// code de la section
* group[=].element[+].code = #FRCDAPrescriptionDispositifsMedicaux.code
* group[=].element[=].target[+].code = #FRCompositionDocument.section:medicalDevicePrescription.code
* group[=].element[=].target[=].equivalence = #equivalent
// titre de la section
* group[=].element[+].code = #FRCDAPrescriptionDispositifsMedicaux.title
* group[=].element[=].target[+].code = #FRCompositionDocument.section:medicalDevicePrescription.title
* group[=].element[=].target[=].equivalence = #equivalent
// bloc narratif de la section
* group[=].element[+].code = #FRCDAPrescriptionDispositifsMedicaux.text
* group[=].element[=].target[+].code = #FRCompositionDocument.section:medicalDevicePrescription.text
* group[=].element[=].target[=].equivalence = #equivalent
// Entrée Dispositif medical prescrit
* group[=].element[+].code = #FRCDAPrescriptionDispositifsMedicaux.entry:FRCDADispositifMedical
* group[=].element[=].target[+].code = #FRCompositionDocument.section:medicalDevicePrescription.entry:FRDeviceRequestDocument
* group[=].element[=].target[=].equivalence = #equivalent