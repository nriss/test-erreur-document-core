Instance: FRSectionReasonForRecommendationLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMRaisonRecommandation → FRCDARaisonDeLaRecommandation → FRCompositionDocument.section:reasonForRecommendation"
Description: "Mapping des éléments du modèle métier FRLMRaisonRecommandation vers la section CDA FRCDARaisonDeLaRecommandation, puis vers la section FHIR FRCompositionDocument.section:reasonForRecommendation."
* title = "Mapping Métier/CDA/FHIR : \"Raison de la recommandation\""
* status = #draft
// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-raison-recommandation"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-raison-de-la-recommandation"
// élément racine
* group[=].element[+].code = #FRLMRaisonRecommandation
* group[=].element[=].target[+].code = #FRCDARaisonDeLaRecommandation
* group[=].element[=].target[=].equivalence = #equivalent
// code de la section
* group[=].element[+].code = #FRLMRaisonRecommandation.codeSection
* group[=].element[=].target[+].code = #FRCDARaisonDeLaRecommandation.code
* group[=].element[=].target[=].equivalence = #equivalent
// titre de la section
* group[=].element[+].code = #FRLMRaisonRecommandation.titreSection
* group[=].element[=].target[+].code = #FRCDARaisonDeLaRecommandation.title
* group[=].element[=].target[=].equivalence = #equivalent
// bloc narratif de la section
* group[=].element[+].code = #FRLMRaisonRecommandation.blocNarratif
* group[=].element[=].target[+].code = #FRCDARaisonDeLaRecommandation.text
* group[=].element[=].target[=].equivalence = #equivalent
// Entrée Simple observation
* group[=].element[+].code = #FRLMRaisonRecommandation.entree.observation
* group[=].element[=].target[+].code = #FRCDARaisonDeLaRecommandation.entry:FRCDASimpleObservation
* group[=].element[=].target[=].equivalence = #equivalent
// Entrée Problème
* group[=].element[+].code = #FRLMRaisonRecommandation.entree.problemes
* group[=].element[=].target[+].code = #FRCDARaisonDeLaRecommandation.entry:FRCDAProbleme
* group[=].element[=].target[=].equivalence = #equivalent

// Groupe Mapping 2 : CDA → FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-raison-de-la-recommandation"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-composition-document"
// élément racine
* group[=].element[+].code = #FRCDARaisonDeLaRecommandation
* group[=].element[=].target[+].code = #FRCompositionDocument.section:reasonForRecommendation
* group[=].element[=].target[=].equivalence = #equivalent
// code de la section
* group[=].element[+].code = #FRCDARaisonDeLaRecommandation.code
* group[=].element[=].target[+].code = #FRCompositionDocument.section:reasonForRecommendation.code
* group[=].element[=].target[=].equivalence = #equivalent
// titre de la section
* group[=].element[+].code = #FRCDARaisonDeLaRecommandation.title
* group[=].element[=].target[+].code = #FRCompositionDocument.section:reasonForRecommendation.title
* group[=].element[=].target[=].equivalence = #equivalent
// bloc narratif de la section
* group[=].element[+].code = #FRCDARaisonDeLaRecommandation.text
* group[=].element[=].target[+].code = #FRCompositionDocument.section:reasonForRecommendation.text
* group[=].element[=].target[=].equivalence = #equivalent
// Entrée Simple observation
* group[=].element[+].code = #FRCDARaisonDeLaRecommandation.entry:FRCDASimpleObservation
* group[=].element[=].target[+].code = #FRCompositionDocument.section:reasonForRecommendation.entry:Observation
* group[=].element[=].target[=].equivalence = #equivalent
// Entrée Problème
* group[=].element[+].code = #FRCDARaisonDeLaRecommandation.entry:FRCDAProbleme
* group[=].element[=].target[+].code = #FRCompositionDocument.section:reasonForRecommendation.entry:FRConditionDocument
* group[=].element[=].target[=].equivalence = #equivalent
