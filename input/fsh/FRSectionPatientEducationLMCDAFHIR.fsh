Instance: FRSectionPatientEducationLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMEducationPatient → FRCDAEducationDuPatient → FRCompositionDocument.section:patientEducation"
Description: "Mapping des éléments du modèle métier FRLMEducationPatient vers la section CDA FRCDAEducationDuPatient, puis vers la section FHIR FRCompositionDocument.section:patientEducation."
* title = "Mapping Métier/CDA/FHIR : \"Education du patient\""
* status = #draft
// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-education-patient"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-education-du-patient"
// élément racine
* group[=].element[+].code = #FRLMEducationPatient
* group[=].element[=].target[+].code = #FRCDAEducationDuPatient
* group[=].element[=].target[=].equivalence = #equivalent
// code de la section
* group[=].element[+].code = #FRLMEducationPatient.codeSection
* group[=].element[=].target[+].code = #FRCDAEducationDuPatient.code
* group[=].element[=].target[=].equivalence = #equivalent
// titre de la section
* group[=].element[+].code = #FRLMEducationPatient.titreSection
* group[=].element[=].target[+].code = #FRCDAEducationDuPatient.title
* group[=].element[=].target[=].equivalence = #equivalent
// bloc narratif de la section
* group[=].element[+].code = #FRLMEducationPatient.blocNarratif
* group[=].element[=].target[+].code = #FRCDAEducationDuPatient.text
* group[=].element[=].target[=].equivalence = #equivalent
// Entrée Acte
* group[=].element[+].code = #FRLMEducationPatient.entree.acte
* group[=].element[=].target[+].code = #FRCDAEducationDuPatient.entry:frActe
* group[=].element[=].target[=].equivalence = #equivalent
// Entrée Simple observation
* group[=].element[+].code = #FRLMEducationPatient.entree.observation
* group[=].element[=].target[+].code = #FRCDAEducationDuPatient.entry:frSimpleObservation
* group[=].element[=].target[=].equivalence = #equivalent
// Entrée References externes
* group[=].element[+].code = #FRLMEducationPatient.entree.reference
* group[=].element[=].target[+].code = #FRCDAEducationDuPatient.entry:frReferencesExternes
* group[=].element[=].target[=].equivalence = #equivalent

// Groupe Mapping 2 : CDA → FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-education-du-patient"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-composition-document"
// élément racine   
* group[=].element[+].code = #FRCDAEducationDuPatient
* group[=].element[=].target[+].code = #FRCompositionDocument.section:patientEducation
* group[=].element[=].target[=].equivalence = #equivalent
// code de la section
* group[=].element[+].code = #FRCDAEducationDuPatient.code
* group[=].element[=].target[+].code = #FRCompositionDocument.section:patientEducation.code
* group[=].element[=].target[=].equivalence = #equivalent
// titre de la section
* group[=].element[+].code = #FRCDAEducationDuPatient.title
* group[=].element[=].target[+].code = #FRCompositionDocument.section:patientEducation.title
* group[=].element[=].target[=].equivalence = #equivalent
// bloc narratif de la section
* group[=].element[+].code = #FRCDAEducationDuPatient.text
* group[=].element[=].target[+].code = #FRCompositionDocument.section:patientEducation.text
* group[=].element[=].target[=].equivalence = #equivalent
// Entrée Acte
* group[=].element[+].code = #FRCDAEducationDuPatient.entry:frActe
* group[=].element[=].target[+].code = #FRCompositionDocument.section:patientEducation.entry:FRProcedureActDocument
* group[=].element[=].target[=].equivalence = #equivalent
// Entrée Simple observation
* group[=].element[+].code = #FRCDAEducationDuPatient.entry:frSimpleObservation
* group[=].element[=].target[+].code = #FRCompositionDocument.section:patientEducation.entry:Observation
* group[=].element[=].target[=].equivalence = #equivalent
// Entrée References externes
* group[=].element[+].code = #FRCDAEducationDuPatient.entry:frReferencesExternes
* group[=].element[=].target[+].code = #FRCompositionDocument.section:patientEducation.entry:FRDocumentReferenceDocument
* group[=].element[=].target[=].equivalence = #equivalent