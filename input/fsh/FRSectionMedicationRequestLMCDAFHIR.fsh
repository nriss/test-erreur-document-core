Instance: FRSectionMedicationRequestLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMPrescriptionMedicaments → FRCDAPrescriptionMedicaments → FRCompositionDocument.section:medicationRequest"
Description: "Mapping des éléments du modèle métier FRLMPrescriptionMedicaments vers la section CDA FRCDAPrescriptionMedicaments, puis vers la section FHIR FRCompositionDocument.section:medicationRequest."
* title = "Mapping Métier/CDA/FHIR : \"Prescription de médicaments\""
* status = #draft
// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-prescription-medicaments"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-prescription-medicaments"
// élément racine
* group[=].element[+].code = #FRLMPrescriptionMedicaments
* group[=].element[=].target[+].code = #FRCDAPrescriptionMedicaments
* group[=].element[=].target[=].equivalence = #equivalent
// auteur de la prescription
* group[=].element[+].code = #FRLMPrescriptionMedicaments.auteur
* group[=].element[=].target[+].code = #FRCDAPrescriptionMedicaments.author
* group[=].element[=].target[=].equivalence = #equivalent
// code de la section
* group[=].element[+].code = #FRLMPrescriptionMedicaments.codeSection
* group[=].element[=].target[+].code = #FRCDAPrescriptionMedicaments.code
* group[=].element[=].target[=].equivalence = #equivalent
// titre de la section
* group[=].element[+].code = #FRLMPrescriptionMedicaments.titreSection
* group[=].element[=].target[+].code = #FRCDAPrescriptionMedicaments.title
* group[=].element[=].target[=].equivalence = #equivalent
// bloc narratif de la section
* group[=].element[+].code = #FRLMPrescriptionMedicaments.blocNarratif
* group[=].element[=].target[+].code = #FRCDAPrescriptionMedicaments.text
* group[=].element[=].target[=].equivalence = #equivalent
// Entrée Traitement prescrit
* group[=].element[+].code = #FRLMPrescriptionMedicaments.entree.traitementPrescrit
* group[=].element[=].target[+].code = #FRCDAPrescriptionMedicaments.entry:FRCDATraitementPrescrit
* group[=].element[=].target[=].equivalence = #equivalent

// Groupe Mapping 2 : CDA → FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-prescription-medicaments"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-composition-document"
// élément racine
* group[=].element[+].code = #FRCDAPrescriptionMedicaments
* group[=].element[=].target[+].code = #FRCompositionDocument.section:medicationRequest
* group[=].element[=].target[=].equivalence = #equivalent   
// auteur de la prescription
* group[=].element[+].code = #FRCDAPrescriptionMedicaments.author
* group[=].element[=].target[+].code = #FRCompositionDocument.section:medicationRequest.author
* group[=].element[=].target[=].equivalence = #equivalent
// code de la section
* group[=].element[+].code = #FRCDAPrescriptionMedicaments.code
* group[=].element[=].target[+].code = #FRCompositionDocument.section:medicationRequest.code
* group[=].element[=].target[=].equivalence = #equivalent
// titre de la section
* group[=].element[+].code = #FRCDAPrescriptionMedicaments.title
* group[=].element[=].target[+].code = #FRCompositionDocument.section:medicationRequest.title
* group[=].element[=].target[=].equivalence = #equivalent
// bloc narratif de la section
* group[=].element[+].code = #FRCDAPrescriptionMedicaments.text
* group[=].element[=].target[+].code = #FRCompositionDocument.section:medicationRequest.text
* group[=].element[=].target[=].equivalence = #equivalent
// Entrée Traitement prescrit
* group[=].element[+].code = #FRCDAPrescriptionMedicaments.entry:FRCDATraitementPrescrit
* group[=].element[=].target[+].code = #FRCompositionDocument.section:medicationRequest.entry:FRMedicationRequestDocument
* group[=].element[=].target[=].equivalence = #equivalent