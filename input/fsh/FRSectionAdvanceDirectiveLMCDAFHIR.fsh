Instance: FRSectionAdvanceDirectiveLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMDirectivesAnticipees → FRCDADirectivesAnticipees → FRAdvanceDirectiveDocument"
Description: "Mapping des éléments du modèle métier FRLMDirectivesAnticipees vers la section CDA FRCDADirectivesAnticipees, puis vers le profil FHIR FRAdvanceDirectiveDocument."
* title = "Mapping Métier/CDA/FHIR : \"Directives anticipées\""
* status = #draft

// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-directives-anticipees"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-directives-anticipees"
// Élément racine
* group[=].element[+].code = #FRLMDirectivesAnticipees
* group[=].element[=].target.code = #FRCDADirectivesAnticipees
* group[=].element[=].target.equivalence = #equivalent
//code de la section
* group[=].element[+].code = #FRLMDirectivesAnticipees.codeSection
* group[=].element[=].target.code = #FRCDADirectivesAnticipees.code
* group[=].element[=].target.equivalence = #equivalent
// Titre de la section
* group[=].element[+].code = #FRLMDirectivesAnticipees.titreSection
* group[=].element[=].target.code = #FRCDADirectivesAnticipees.title
* group[=].element[=].target.equivalence = #equivalent
// texte de la section
* group[=].element[+].code = #FRLMDirectivesAnticipees.blocNarratif
* group[=].element[=].target.code = #FRCDADirectivesAnticipees.text
* group[=].element[=].target.equivalence = #equivalent
// Entrée Directive anticipée
* group[=].element[+].code = #FRLMDirectivesAnticipees.entree
* group[=].element[=].target.code = #FRCDADirectivesAnticipees.entry:FRCDADirectiveAnticipee
* group[=].element[=].target.equivalence = #equivalent

// Groupe Mapping 2 : CDA → FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-directives-anticipees"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-composition-document"
// Élément racine
* group[=].element[+].code = #FRCDADirectivesAnticipees
* group[=].element[=].target.code = #FRCompositionDocument.section:advanceDirective
* group[=].element[=].target.equivalence = #equivalent
// code de la section
* group[=].element[+].code = #FRCDADirectivesAnticipees.code
* group[=].element[=].target.code = #FRCompositionDocument.section:advanceDirective.code
* group[=].element[=].target.equivalence = #equivalent
// Titre de la section
* group[=].element[+].code = #FRCDADirectivesAnticipees.title
* group[=].element[=].target.code = #FRCompositionDocument.section:advanceDirective.title
* group[=].element[=].target.equivalence = #equivalent
// texte de la section
* group[=].element[+].code = #FRCDADirectivesAnticipees.text
* group[=].element[=].target.code = #FRCompositionDocument.section:advanceDirective.text
* group[=].element[=].target.equivalence = #equivalent
// Entrées Directives anticipées
* group[=].element[+].code = #FRCDADirectivesAnticipees.entry:FRCDADirectiveAnticipee
* group[=].element[=].target.code = #FRCompositionDocument.section:advanceDirective.entry:FRAdvanceDirectiveDocument
* group[=].element[=].target.equivalence = #equivalent