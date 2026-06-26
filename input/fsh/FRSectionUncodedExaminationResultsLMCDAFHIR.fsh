Instance: FRSectionUncodedExaminationResultsLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMResultatsExamensNonCode → FRCDAResultatsExamensNonCode → FRCompositionDocument.section:Results"
Description: "Mapping des éléments du modèle métier FRLMResultatsExamensNonCode vers la section CDA FRCDAResultatsExamensNonCode puis vers le profil FHIR FRCompositionDocument.section:Results."
* title = "Mapping Métier/CDA/FHIR : Résultats d'examen"
* status = #draft

// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-resultats-examens-non-code"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-resultats-examens-non-code"
// Élément racine
* group[=].element[+].code = #FRLMResultatsExamensNonCode
* group[=].element[=].target.code = #FRCDAResultatsExamensNonCode    
* group[=].element[=].target.equivalence = #equivalent
// code de la section
* group[=].element[+].code = #FRLMResultatsExamensNonCode.codeSection
* group[=].element[=].target.code = #FRCDAResultatsExamensNonCode.code
* group[=].element[=].target.equivalence = #equivalent
// titre de la section
* group[=].element[+].code = #FRLMResultatsExamensNonCode.titreSection
* group[=].element[=].target.code = #FRCDAResultatsExamensNonCode.title
* group[=].element[=].target.equivalence = #equivalent
// texte narratif
* group[=].element[+].code = #FRLMResultatsExamensNonCode.blocNarratif
* group[=].element[=].target.code = #FRCDAResultatsExamensNonCode.text
* group[=].element[=].target.equivalence = #equivalent

// Groupe Mapping 2 : CDA → FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-resultats-examens"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-composition-document"
// Élément racine
* group[=].element[+].code = #FRCDAResultatsExamensNonCode
* group[=].element[=].target.code = #FRCompositionDocument.section:Results  
* group[=].element[=].target.equivalence = #equivalent
// code de la section
* group[=].element[+].code = #FRCDAResultatsExamensNonCode.code
* group[=].element[=].target.code = #FRCompositionDocument.section:Results.code
* group[=].element[=].target.equivalence = #equivalent
// titre de la section
* group[=].element[+].code = #FRCDAResultatsExamensNonCode.title
* group[=].element[=].target.code = #FRCompositionDocument.section:Results.title
* group[=].element[=].target.equivalence = #equivalent
// texte narratif
* group[=].element[+].code = #FRCDAResultatsExamensNonCode.text
* group[=].element[=].target.code = #FRCompositionDocument.section:Results.text
* group[=].element[=].target.equivalence = #equivalent