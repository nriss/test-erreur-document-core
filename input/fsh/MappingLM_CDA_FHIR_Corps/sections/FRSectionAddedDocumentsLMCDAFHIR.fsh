Instance: FRSectionAddedDocumentsLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMDocumentsAjoutes → FRCDADocumentsAjoutes → FRCompositionDocument.section:addedDocuments"
Description: "Mapping des éléments du modèle métier FRLMDocumentsAjoutes vers la section CDA FRCDADocumentsAjoutes, puis vers la section FHIR FRCompositionDocument.section:addedDocuments."
* title = "Mapping Métier/CDA/FHIR : \"Documents ajoutés\""
* status = #draft

// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-documents-ajoutes"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-documents-ajoutes"
// élément racine
* group[=].element[+].code = #FRLMDocumentsAjoutes
* group[=].element[=].target[+].code = #FRCDADocumentsAjoutes
* group[=].element[=].target[=].equivalence = #equivalent
// code de la section
* group[=].element[+].code = #FRLMDocumentsAjoutes.codeSection
* group[=].element[=].target[+].code = #FRCDADocumentsAjoutes.code
* group[=].element[=].target[=].equivalence = #equivalent
// titre de la section
* group[=].element[+].code = #FRLMDocumentsAjoutes.titreSection
* group[=].element[=].target[+].code = #FRCDADocumentsAjoutes.title
* group[=].element[=].target[=].equivalence = #equivalent
// bloc narratif de la section
* group[=].element[+].code = #FRLMDocumentsAjoutes.blocNarratif
* group[=].element[=].target[+].code = #FRCDADocumentsAjoutes.text
* group[=].element[=].target[=].equivalence = #equivalent
// Entrée Document attaché
* group[=].element[+].code = #FRLMDocumentsAjoutes.entree.documentAttache
* group[=].element[=].target[+].code = #FRCDADocumentsAjoutes.entry:frDocumentAttache
* group[=].element[=].target[=].equivalence = #equivalent
// Entrée Simple observation
* group[=].element[+].code = #FRLMDocumentsAjoutes.entree.simpleObservation
* group[=].element[=].target[+].code = #FRCDADocumentsAjoutes.entry:frSimpleObservation
* group[=].element[=].target[=].equivalence = #equivalent

// Groupe Mapping 2 : CDA → FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-documents-ajoutes"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-composition-document"
// élément racine
* group[=].element[+].code = #FRCDADocumentsAjoutes
* group[=].element[=].target[+].code = #FRCompositionDocument.section:addedDocuments
* group[=].element[=].target[=].equivalence = #equivalent
// code de la section
* group[=].element[+].code = #FRCDADocumentsAjoutes.code
* group[=].element[=].target[+].code = #FRCompositionDocument.section:addedDocuments.code
* group[=].element[=].target[=].equivalence = #equivalent
// titre de la section
* group[=].element[+].code = #FRCDADocumentsAjoutes.title
* group[=].element[=].target[+].code = #FRCompositionDocument.section:addedDocuments.title
* group[=].element[=].target[=].equivalence = #equivalent
// bloc narratif de la section
* group[=].element[+].code = #FRCDADocumentsAjoutes.text
* group[=].element[=].target[+].code = #FRCompositionDocument.section:addedDocuments.text
* group[=].element[=].target[=].equivalence = #equivalent
// Entrée Document attaché
* group[=].element[+].code = #FRCDADocumentsAjoutes.entry:frDocumentAttache
* group[=].element[=].target[+].code = #FRCompositionDocument.section:addedDocuments.entry:FRDocumentReferenceDocument
* group[=].element[=].target[=].equivalence = #equivalent
// Entrée Simple observation
* group[=].element[+].code = #FRCDADocumentsAjoutes.entry:frSimpleObservation
* group[=].element[=].target[+].code = #FRCompositionDocument.section:addedDocuments.entry:Observation
* group[=].element[=].target[=].equivalence = #equivalent