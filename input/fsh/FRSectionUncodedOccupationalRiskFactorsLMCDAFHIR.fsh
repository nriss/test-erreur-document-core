Instance: FRSectionUncodedOccupationalRiskFactorsLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMFacteursDeRisqueProfessionnelsNonCode → FRCDAFacteursDeRisqueProfessionnelsNonCode → FRCompositionDocument.section:uncodedOccupationalRiskFactors"
Description: "Mapping des éléments du modèle métier FRLMFacteursDeRisqueProfessionnelsNonCode vers la section CDA FRCDAFacteursDeRisqueProfessionnelsNonCode, puis vers la section FHIR FRCompositionDocument.section:uncodedOccupationalRiskFactors."
* title = "Mapping Métier/CDA/FHIR : \"Facteurs de risque professionnels non codés\""
* status = #draft

// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-facteurs-de-risque-professionnels-non-code"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-facteurs-de-risque-professionnels-non-code"
// élément racine
* group[=].element[+].code = #FRLMFacteursDeRisqueProfessionnelsNonCode
* group[=].element[=].target[+].code = #FRCDAFacteursDeRisqueProfessionnelsNonCode
* group[=].element[=].target[=].equivalence = #equivalent
// code de la section
* group[=].element[+].code = #FRLMFacteursDeRisqueProfessionnelsNonCode.codeSection
* group[=].element[=].target[+].code = #FRCDAFacteursDeRisqueProfessionnelsNonCode.code
* group[=].element[=].target[=].equivalence = #equivalent
// titre de la section
* group[=].element[+].code = #FRLMFacteursDeRisqueProfessionnelsNonCode.titreSection
* group[=].element[=].target[+].code = #FRCDAFacteursDeRisqueProfessionnelsNonCode.title
* group[=].element[=].target[=].equivalence = #equivalent
// bloc narratif de la section
* group[=].element[+].code = #FRLMFacteursDeRisqueProfessionnelsNonCode.blocNarratif
* group[=].element[=].target[+].code = #FRCDAFacteursDeRisqueProfessionnelsNonCode.text
* group[=].element[=].target[=].equivalence = #equivalent

// Groupe Mapping 2 : CDA → FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-facteurs-de-risque-professionnels-non-code"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-composition-document"
// élément racine
* group[=].element[+].code = #FRCDAFacteursDeRisqueProfessionnelsNonCode
* group[=].element[=].target[+].code = #FRCompositionDocument.section:uncodedOccupationalRiskFactors
* group[=].element[=].target[=].equivalence = #equivalent
// code de la section
* group[=].element[+].code = #FRCDAFacteursDeRisqueProfessionnelsNonCode.code
* group[=].element[=].target[+].code = #FRCompositionDocument.section:uncodedOccupationalRiskFactors.code
* group[=].element[=].target[=].equivalence = #equivalent
// titre de la section
* group[=].element[+].code = #FRCDAFacteursDeRisqueProfessionnelsNonCode.title
* group[=].element[=].target[+].code = #FRCompositionDocument.section:uncodedOccupationalRiskFactors.title
* group[=].element[=].target[=].equivalence = #equivalent
// bloc narratif de la section
* group[+].element[+].code = #FRCDAFacteursDeRisqueProfessionnelsNonCode.text
* group[=].element[=].target[+].code = #FRCompositionDocument.section:uncodedOccupationalRiskFactors.text
* group[=].element[=].target[=].equivalence = #equivalent