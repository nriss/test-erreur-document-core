Instance: FRSectionDocumentStatusLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMStatutDocument -> FRCDAStatutDuDocument -> FRComposition.section"
Description: "Mapping des éléments du modèle métier FRLMStatutDocument vers la section CDA FRCDAStatutDuDocument, puis vers la section FHIR FRCompositionDocument.section:documentStatus."
* title = "Mapping Métier/CDA/FHIR : \"Statut du document\""
* status = #draft

// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-statut-document"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-statut-du-document"
// élément racine
* group[=].element[+].code = #FRLMStatutDocument
* group[=].element[=].target[+].code = #FRCDAStatutDuDocument
* group[=].element[=].target[=].equivalence = #equivalent
// code de la section
* group[=].element[+].code = #FRLMStatutDocument.codeSection
* group[=].element[=].target[+].code = #FRCDAStatutDuDocument.code
* group[=].element[=].target[=].equivalence = #equivalent   
// titre de la section
* group[=].element[+].code = #FRLMStatutDocument.titreSection
* group[=].element[=].target[+].code = #FRCDAStatutDuDocument.title
* group[=].element[=].target[=].equivalence = #equivalent
// bloc narratif de la section
* group[=].element[+].code = #FRLMStatutDocument.blocNarratif
* group[=].element[=].target[+].code = #FRCDAStatutDuDocument.text
* group[=].element[=].target[=].equivalence = #equivalent
// Entrée Statut du document
* group[=].element[+].code = #FRLMStatutDocument.entree.statutDocument
* group[=].element[=].target[+].code = #FRCDAStatutDuDocument.entry:FRCDAStatutDocument
* group[=].element[=].target[=].equivalence = #equivalent

// Groupe Mapping 2 : CDA → FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-statut-du-document"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-composition-document"
// élément racine
* group[=].element[+].code = #FRCDAStatutDuDocument
* group[=].element[=].target[+].code = #FRCompositionDocument.section:documentStatus
* group[=].element[=].target[=].equivalence = #equivalent
// code de la section
* group[=].element[+].code = #FRCDAStatutDuDocument.code
* group[=].element[=].target[+].code = #FRCompositionDocument.section:documentStatus.code
* group[=].element[=].target[=].equivalence = #equivalent
// titre de la section
* group[=].element[+].code = #FRCDAStatutDuDocument.title
* group[=].element[=].target[+].code = #FRCompositionDocument.section:documentStatus.title
* group[=].element[=].target[=].equivalence = #equivalent
// bloc narratif de la section
* group[=].element[+].code = #FRCDAStatutDuDocument.text
* group[=].element[=].target[+].code = #FRCompositionDocument.section:documentStatus.text
* group[=].element[=].target[=].equivalence = #equivalent
// Entrée Statut du document
* group[=].element[+].code = #FRCDAStatutDuDocument.entry:FRCDAStatutDocument
* group[=].element[=].target[+].code = #FRCompositionDocument.section:documentStatus.entry:Observation.status.extension:FRStatusReasonExtension
* group[=].element[=].target[=].equivalence = #equivalent

