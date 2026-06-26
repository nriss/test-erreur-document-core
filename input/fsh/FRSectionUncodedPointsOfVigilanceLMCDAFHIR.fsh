Instance: FRSectionUncodedPointsOfVigilanceLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMPointsDeVigilancesNonCode → FRCDAPointsDeVigilancesNonCode → FRCompositionDocument.section:uncodedPointsOfVigilance"
Description: "Mapping des éléments du modèle métier FRLMPointsDeVigilancesNonCode vers la section CDA FRCDAPointsDeVigilancesNonCode, puis vers la section FHIR FRCompositionDocument.section:uncodedPointsOfVigilance."
* title = "Mapping Métier/CDA/FHIR : \"Points de vigilance (non-codés)\""
* status = #draft
// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-points-de-vigilances-non-code"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-points-de-vigilances-non-code"
// élément racine
* group[=].element[+].code = #FRLMPointsDeVigilancesNonCode
* group[=].element[=].target[+].code = #FRCDAPointsDeVigilancesNonCode
* group[=].element[=].target[=].equivalence = #equivalent
// code de la section
* group[=].element[+].code = #FRLMPointsDeVigilancesNonCode.codeSection
* group[=].element[=].target[+].code = #FRCDAPointsDeVigilancesNonCode.code
* group[=].element[=].target[=].equivalence = #equivalent
// titre de la section
* group[=].element[+].code = #FRLMPointsDeVigilancesNonCode.titreSection
* group[=].element[=].target[+].code = #FRCDAPointsDeVigilancesNonCode.title
* group[=].element[=].target[=].equivalence = #equivalent
// bloc narratif de la section
* group[=].element[+].code = #FRLMPointsDeVigilancesNonCode.blocNarratif
* group[=].element[=].target[+].code = #FRCDAPointsDeVigilancesNonCode.text
* group[=].element[=].target[=].equivalence = #equivalent

// Groupe Mapping 2 : CDA → FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-points-de-vigilances-non-code"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-composition-document"
// élément racine
* group[=].element[+].code = #FRCDAPointsDeVigilancesNonCode
* group[=].element[=].target[+].code = #FRCompositionDocument.section:uncodedPointsOfVigilance
* group[=].element[=].target[=].equivalence = #equivalent
// code de la section
* group[=].element[+].code = #FRCDAPointsDeVigilancesNonCode.code
* group[=].element[=].target[+].code = #FRCompositionDocument.section:uncodedPointsOfVigilance.code
* group[=].element[=].target[=].equivalence = #equivalent
// titre de la section
* group[=].element[+].code = #FRCDAPointsDeVigilancesNonCode.title
* group[=].element[=].target[+].code = #FRCompositionDocument.section:uncodedPointsOfVigilance.title
* group[=].element[=].target[=].equivalence = #equivalent
// bloc narratif de la section
* group[=].element[+].code = #FRCDAPointsDeVigilancesNonCode.text
* group[=].element[=].target[+].code = #FRCompositionDocument.section:uncodedPointsOfVigilance.text
* group[=].element[=].target[=].equivalence = #equivalent