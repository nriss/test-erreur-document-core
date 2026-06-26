Instance: FRSectionUncodedReasonForRecommendationLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMRaisonRecommandationNonCode → FRCDARaisonDeLaRecommandationNonCode → FRCompositionDocument.section:reasonForRecommendation"
Description: "Mapping des éléments du modèle métier FRLMRaisonRecommandationNonCode vers la section CDA FRCDARaisonDeLaRecommandationNonCode, puis vers la section FHIR FRCompositionDocument.section:reasonForRecommendation."
* title = "Mapping Métier/CDA/FHIR : \"Raison de la recommandation\""
* status = #draft
// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-raison-recommandation-non-code"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-raison-de-la-recommandation-non-code"
// élément racine
* group[=].element[+].code = #FRLMRaisonRecommandationNonCode
* group[=].element[=].target[+].code = #FRCDARaisonDeLaRecommandationNonCode
* group[=].element[=].target[=].equivalence = #equivalent
// code de la section
* group[=].element[+].code = #FRLMRaisonRecommandationNonCode.codeSection
* group[=].element[=].target[+].code = #FRCDARaisonDeLaRecommandationNonCode.code
* group[=].element[=].target[=].equivalence = #equivalent
// titre de la section
* group[=].element[+].code = #FRLMRaisonRecommandationNonCode.titreSection
* group[=].element[=].target[+].code = #FRCDARaisonDeLaRecommandationNonCode.title
* group[=].element[=].target[=].equivalence = #equivalent
// bloc narratif de la section
* group[=].element[+].code = #FRLMRaisonRecommandationNonCode.blocNarratif
* group[=].element[=].target[+].code = #FRCDARaisonDeLaRecommandationNonCode.text
* group[=].element[=].target[=].equivalence = #equivalent

// Groupe Mapping 2 : CDA → FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-raison-de-la-recommandation-non-code"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-composition-document"
// élément racine
* group[=].element[+].code = #FRCDARaisonDeLaRecommandationNonCode
* group[=].element[=].target[+].code = #FRCompositionDocument.section:reasonForRecommendation
* group[=].element[=].target[=].equivalence = #equivalent
// code de la section
* group[=].element[+].code = #FRCDARaisonDeLaRecommandationNonCode.code
* group[=].element[=].target[+].code = #FRCompositionDocument.section:reasonForRecommendation.code
* group[=].element[=].target[=].equivalence = #equivalent
// titre de la section
* group[=].element[+].code = #FRCDARaisonDeLaRecommandationNonCode.title
* group[=].element[=].target[+].code = #FRCompositionDocument.section:reasonForRecommendation.title
* group[=].element[=].target[=].equivalence = #equivalent
// bloc narratif de la section
* group[=].element[+].code = #FRCDARaisonDeLaRecommandationNonCode.text
* group[=].element[=].target[+].code = #FRCompositionDocument.section:reasonForRecommendation.text
* group[=].element[=].target[=].equivalence = #equivalent
