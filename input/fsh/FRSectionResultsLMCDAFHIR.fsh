Instance: FRSectionResultsLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMResultats → FRCDAResultats → FRCompositionDocument.section:results"
Description: "Mapping des éléments du modèle métier FRLMResultats vers la section CDA FRCDAResultats, puis vers la section FHIR FRCompositionDocument.section:results."
* title = "Mapping Métier/CDA/FHIR : \"Résultats\""
* status = #draft
// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-resultats"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-resultats"
// élément racine
* group[=].element[+].code = #FRLMResultats
* group[=].element[=].target[+].code = #FRCDAResultats
* group[=].element[=].target[=].equivalence = #equivalent
// code de la section
* group[=].element[+].code = #FRLMResultats.codeSection
* group[=].element[=].target[+].code = #FRCDAResultats.code
* group[=].element[=].target[=].equivalence = #equivalent
// titre de la section
* group[=].element[+].code = #FRLMResultats.titreSection
* group[=].element[=].target[+].code = #FRCDAResultats.title
* group[=].element[=].target[=].equivalence = #equivalent
// bloc narratif de la section
* group[=].element[+].code = #FRLMResultats.blocNarratif
* group[=].element[=].target[+].code = #FRCDAResultats.text
* group[=].element[=].target[=].equivalence = #equivalent
// Entrée Resultats
* group[=].element[+].code = #FRLMResultats.entree.resultatsEntry
* group[=].element[=].target[+].code = #FRCDAResultats.entry:FRCDAResultats
* group[=].element[=].target[=].equivalence = #equivalent

// Groupe Mapping 2 : CDA → FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-resultats"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-composition-document"
// élément racine
* group[=].element[+].code = #FRCDAResultats
* group[=].element[=].target[+].code = #FRCompositionDocument.section:results
* group[=].element[=].target[=].equivalence = #equivalent
// code de la section
* group[=].element[+].code = #FRCDAResultats.code
* group[=].element[=].target[+].code = #FRCompositionDocument.section:results.code
* group[=].element[=].target[=].equivalence = #equivalent
// titre de la section
* group[=].element[+].code = #FRCDAResultats.title
* group[=].element[=].target[+].code = #FRCompositionDocument.section:results.title
* group[=].element[=].target[=].equivalence = #equivalent
// bloc narratif de la section
* group[=].element[+].code = #FRCDAResultats.text
* group[=].element[=].target[+].code = #FRCompositionDocument.section:results.text
* group[=].element[=].target[=].equivalence = #equivalent
// Entrée Resultats
* group[=].element[+].code = #FRCDAResultats.entry:FRCDAResultats
* group[=].element[=].target[+].code = #FRCompositionDocument.section:results.entry:FRDiagnosticReportDocument
* group[=].element[=].target[=].equivalence = #equivalent