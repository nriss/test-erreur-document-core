Instance: FRSectionActiveProblemsLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMProblemesActifs → FRCDAProblemesActifs → FRCompositionDocument.section:activeProblems"
Description: "Mapping des éléments du modèle métier FRLMProblemesActifs vers la section CDA FRCDAProblemesActifs, puis vers la section FHIR FRCompositionDocument.section:activeProblems."
* title = "Mapping Métier/CDA/FHIR : \"Problèmes actifs\""
* status = #draft
// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-problemes-actifs"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-problemes-actifs"
// élément racine
* group[=].element[+].code = #FRLMProblemesActifs
* group[=].element[=].target[+].code = #FRCDAProblemesActifs
* group[=].element[=].target[=].equivalence = #equivalent
// code de la section
* group[=].element[+].code = #FRLMProblemesActifs.codeSection
* group[=].element[=].target[+].code = #FRCDAProblemesActifs.code
* group[=].element[=].target[=].equivalence = #equivalent
// titre de la section
* group[=].element[+].code = #FRLMProblemesActifs.titreSection
* group[=].element[=].target[+].code = #FRCDAProblemesActifs.title
* group[=].element[=].target[=].equivalence = #equivalent
// bloc narratif de la section
* group[=].element[+].code = #FRLMProblemesActifs.blocNarratif
* group[=].element[=].target[+].code = #FRCDAProblemesActifs.text
* group[=].element[=].target[=].equivalence = #equivalent
// Entrée Problèmes actifs
* group[=].element[+].code = #FRLMProblemesActifs.entree.problemes
* group[=].element[=].target[+].code = #FRCDAProblemesActifs.entry:FRCDAListeDesProblemes
* group[=].element[=].target[=].equivalence = #equivalent

// Groupe Mapping 2 : CDA → FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-problemes-actifs"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-composition-document"
// élément racine   
* group[=].element[+].code = #FRCDAProblemesActifs
* group[=].element[=].target[+].code = #FRCompositionDocument.section:activeProblems
* group[=].element[=].target[=].equivalence = #equivalent
// code de la section
* group[=].element[+].code = #FRCDAProblemesActifs.code
* group[=].element[=].target[+].code = #FRCompositionDocument.section:activeProblems.code
* group[=].element[=].target[=].equivalence = #equivalent
// titre de la section
* group[=].element[+].code = #FRCDAProblemesActifs.title
* group[=].element[=].target[+].code = #FRCompositionDocument.section:activeProblems.title
* group[=].element[=].target[=].equivalence = #equivalent
// bloc narratif de la section
* group[=].element[+].code = #FRCDAProblemesActifs.text
* group[=].element[=].target[+].code = #FRCompositionDocument.section:activeProblems.text
* group[=].element[=].target[=].equivalence = #equivalent
// Entrée Problèmes actifs
* group[=].element[+].code = #FRCDAProblemesActifs.entry:FRCDAListeDesProblemes
* group[=].element[=].target[+].code = #FRCompositionDocument.section:activeProblems.entry:FRConditionDocument
* group[=].element[=].target[=].equivalence = #equivalent