Instance: FRSectionPDFDocumentCopyLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMDocumentPDFCopie → FRCDADocumentPDFCopie → FRCompositionDocument.section:pdfDocumentCopy"
Description: "Mapping des éléments du modèle métier FRLMDocumentPDFCopie vers la section CDA FRCDADocumentPDFCopie, puis vers la section FHIR FRCompositionDocument.section:pdfDocumentCopy."
* title = "Mapping Métier/CDA/FHIR : \"Document PDF-copie\""
* status = #draft

// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-document-pdf-copie"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-document-pdf-copie"
// élément racine
* group[=].element[+].code = #FRLMDocumentPDFCopie
* group[=].element[=].target[+].code = #FRCDADocumentPDFCopie
* group[=].element[=].target[=].equivalence = #equivalent
// code de la section
* group[=].element[+].code = #FRLMDocumentPDFCopie.codeSection
* group[=].element[=].target[+].code = #FRCDADocumentPDFCopie.code
* group[=].element[=].target[=].equivalence = #equivalent
// titre de la section
* group[=].element[+].code = #FRLMDocumentPDFCopie.titreSection
* group[=].element[=].target[+].code = #FRCDADocumentPDFCopie.title
* group[=].element[=].target[=].equivalence = #equivalent
// bloc narratif de la section
* group[=].element[+].code = #FRLMDocumentPDFCopie.blocNarratif
* group[=].element[=].target[+].code = #FRCDADocumentPDFCopie.text
* group[=].element[=].target[=].equivalence = #equivalent
// Entrée Document attaché
* group[=].element[+].code = #FRLMDocumentPDFCopie.entree.documentAttache
* group[=].element[=].target[+].code = #FRCDADocumentPDFCopie.entry:FRCDADocumentAttache
* group[=].element[=].target[=].equivalence = #equivalent

// Groupe Mapping 2 : CDA → FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-document-pdf-copie"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-composition-document"
// élément racine
* group[=].element[+].code = #FRCDADocumentPDFCopie
* group[=].element[=].target[+].code = #FRCompositionDocument.section:pdfDocumentCopy
* group[=].element[=].target[=].equivalence = #equivalent
// code de la section
* group[=].element[+].code = #FRCDADocumentPDFCopie.code
* group[=].element[=].target[+].code = #FRCompositionDocument.section:pdfDocumentCopy.code
* group[=].element[=].target[=].equivalence = #equivalent
// titre de la section
* group[=].element[+].code = #FRCDADocumentPDFCopie.title
* group[=].element[=].target[+].code = #FRCompositionDocument.section:pdfDocumentCopy.title
* group[=].element[=].target[=].equivalence = #equivalent
// bloc narratif de la section
* group[=].element[+].code = #FRCDADocumentPDFCopie.text
* group[=].element[=].target[+].code = #FRCompositionDocument.section:pdfDocumentCopy.text
* group[=].element[=].target[=].equivalence = #equivalent
// Entrée Document attaché
* group[=].element[+].code = #FRCDADocumentPDFCopie.entry:FRCDADocumentAttache
* group[=].element[=].target[+].code = #FRCompositionDocument.section:pdfDocumentCopy.entry:FRDocumentReferenceDocument
* group[=].element[=].target[=].equivalence = #equivalent