Instance: FRSectionExaminationResultsLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMResultatsExamens → FRCDAResultatsExamens → FRCompositionDocument.section:Results"
Description: "Mapping des éléments du modèle métier FRLMResultatsExamens vers la section CDA FRCDAResultatsExamens puis vers le profil FHIR FRCompositionDocument.section:Results."
* title = "Mapping Métier/CDA/FHIR : Résultats d'examen"
* status = #draft

// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-resultats-examens"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-resultats-examens"
// Élément racine
* group[=].element[+].code = #FRLMResultatsExamens
* group[=].element[=].target.code = #FRCDAResultatsExamens    
* group[=].element[=].target.equivalence = #equivalent
// code de la section
* group[=].element[+].code = #FRLMResultatsExamens.codeSection
* group[=].element[=].target.code = #FRCDAResultatsExamens.code
* group[=].element[=].target.equivalence = #equivalent
// titre de la section
* group[=].element[+].code = #FRLMResultatsExamens.titreSection
* group[=].element[=].target.code = #FRCDAResultatsExamens.title
* group[=].element[=].target.equivalence = #equivalent
// texte narratif
* group[=].element[+].code = #FRLMResultatsExamens.blocNarratif
* group[=].element[=].target.code = #FRCDAResultatsExamens.text
* group[=].element[=].target.equivalence = #equivalent
// actes
* group[=].element[+].code = #FRLMResultatsExamens.entree.actes
* group[=].element[=].target.code = #FRCDAResultatsExamens.entry:FRCDAActe
* group[=].element[=].target.equivalence = #equivalent
// références externes
* group[=].element[+].code = #FRLMResultatsExamens.entree.referencesExternes
* group[=].element[=].target.code = #FRCDAResultatsExamens.entry:FRCDAReferencesExternes
* group[=].element[=].target.equivalence = #equivalent
// observations
* group[=].element[+].code = #FRLMResultatsExamens.entree.observation
* group[=].element[=].target.code = #FRCDAResultatsExamens.entry:FRCDASimpleObservation
* group[=].element[=].target.equivalence = #equivalent

// Groupe Mapping 2 : CDA → FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-resultats-examens"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-composition-document"
// Élément racine
* group[=].element[+].code = #FRCDAResultatsExamens
* group[=].element[=].target.code = #FRCompositionDocument.section:Results  
* group[=].element[=].target.equivalence = #equivalent
// code de la section
* group[=].element[+].code = #FRCDAResultatsExamens.code
* group[=].element[=].target.code = #FRCompositionDocument.section:Results.code
* group[=].element[=].target.equivalence = #equivalent
// titre de la section
* group[=].element[+].code = #FRCDAResultatsExamens.title
* group[=].element[=].target.code = #FRCompositionDocument.section:Results.title
* group[=].element[=].target.equivalence = #equivalent
// texte narratif
* group[=].element[+].code = #FRCDAResultatsExamens.text
* group[=].element[=].target.code = #FRCompositionDocument.section:Results.text
* group[=].element[=].target.equivalence = #equivalent
// actes
* group[=].element[+].code = #FRCDAResultatsExamens.entry:FRCDAActe
* group[=].element[=].target.code = #FRCompositionDocument.section:Results.entry:FRProcedureActDocument
* group[=].element[=].target.equivalence = #equivalent
// références externes
* group[=].element[+].code = #FRCDAResultatsExamens.entry:FRCDAReferencesExternes
* group[=].element[=].target.code = #FRCompositionDocument.section:Results.entry:FRDocumentReferenceDocument
* group[=].element[=].target.equivalence = #equivalent
// observations
* group[=].element[+].code = #FRCDAResultatsExamens.entry:FRCDASimpleObservation
* group[=].element[=].target.code = #FRCompositionDocument.section:Results.entry:Observation
* group[=].element[=].target.equivalence = #equivalent