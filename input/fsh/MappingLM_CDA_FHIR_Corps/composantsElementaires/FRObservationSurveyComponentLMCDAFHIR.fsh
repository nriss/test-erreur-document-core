Instance: FRObservationSurveyComponentLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMEvaluationComposant → FRCDAEvaluationComposant → FRObservationSurveyDocument"
Description: "Mapping des éléments du modèle métier FRLMEvaluationComposant vers le profil CDA FRCDAEvaluationComposant, puis vers le profil FHIR FRObservationSurveyDocument."
* title = "Mapping Métier/CDA/FHIR : \"Composant d'évaluation\""
* status = #draft   
// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-evaluation-composant"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-evaluation-composant"
// Élément racine   
* group[=].element[+].code = #FRLMEvaluationComposant
* group[=].element[=].target.code = #FRCDAEvaluationComposant
* group[=].element[=].target.equivalence = #equivalent
// Identifiant de l'entrée
* group[=].element[+].code = #FRLMEvaluationComposant.identifiant
* group[=].element[=].target.code = #FRCDAEvaluationComposant.id
* group[=].element[=].target.equivalence = #equivalent
// Code de l'évaluation
* group[=].element[+].code = #FRLMEvaluationComposant.codeEvaluation
* group[=].element[=].target.code = #FRCDAEvaluationComposant.code
* group[=].element[=].target.equivalence = #equivalent
// Description narrative
* group[=].element[+].code = #FRLMEvaluationComposant.description
* group[=].element[=].target.code = #FRCDAEvaluationComposant.text
* group[=].element[=].target.equivalence = #equivalent
// Statut de l'entrée
* group[=].element[+].code = #FRLMEvaluationComposant.statut
* group[=].element[=].target.code = #FRCDAEvaluationComposant.statusCode
* group[=].element[=].target.equivalence = #equivalent
// Horodatage de l'entrée
* group[=].element[+].code = #FRLMEvaluationComposant.horodatage
* group[=].element[=].target.code = #FRCDAEvaluationComposant.effectiveTime
* group[=].element[=].target.equivalence = #equivalent
// Valeur de l'évaluation
* group[=].element[+].code = #FRLMEvaluationComposant.resultat
* group[=].element[=].target.code = #FRCDAEvaluationComposant.value
* group[=].element[=].target.equivalence = #equivalent
// Interprétation
* group[=].element[+].code = #FRLMEvaluationComposant.interpretation
* group[=].element[=].target.code = #FRCDAEvaluationComposant.interpretationCode
* group[=].element[=].target.equivalence = #equivalent
// component N2 de l'évaluation
* group[=].element[+].code = #FRLMEvaluationComposant.composantEvaluation
* group[=].element[=].target.code = #FRCDAEvaluationComposant.entryRelationship:frEvaluationComposantN2
* group[=].element[=].target.equivalence = #equivalent  
// Commentaire
* group[=].element[+].code = #FRLMEvaluationComposant.commentaire
* group[=].element[=].target.code = #FRCDAEvaluationComposant.entryRelationship:frCommentaireER
* group[=].element[=].target.equivalence = #equivalent

// Groupe Mapping 2 : CDA → FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-evaluation-composant"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-observation-survey-document"
// Élément racine
* group[=].element[+].code = #FRCDAEvaluationComposant
* group[=].element[=].target.code = #FRObservationSurveyDocument
* group[=].element[=].target.equivalence = #equivalent
// Identifiant de l'entrée
* group[=].element[+].code = #FRCDAEvaluationComposant.id
* group[=].element[=].target.code = #FRObservationSurveyDocument.component:ComposantN1.id
* group[=].element[=].target.equivalence = #equivalent
// Code de l'évaluation
* group[=].element[+].code = #FRCDAEvaluationComposant.code
* group[=].element[=].target.code = #FRObservationSurveyDocument.component:ComposantN1.code
* group[=].element[=].target.equivalence = #equivalent
// Description narrative
* group[=].element[+].code = #FRCDAEvaluationComposant.text
* group[=].element[=].target.code = #FRObservationSurveyDocument.component:ComposantN1.code.text
* group[=].element[=].target.equivalence = #equivalent
// Statut de l'entrée
* group[=].element[+].code = #FRCDAEvaluationComposant.statusCode
* group[=].element[=].target.code = #FRObservationSurveyDocument.status
* group[=].element[=].target.equivalence = #equivalent
// Horodatage de l'entrée
* group[=].element[+].code = #FRCDAEvaluationComposant.effectiveTime
* group[=].element[=].target.code = #FRObservationSurveyDocument.effective[x]
* group[=].element[=].target.equivalence = #equivalent
// Valeur de l'évaluation
* group[=].element[+].code = #FRCDAEvaluationComposant.value
* group[=].element[=].target.code = #FRObservationSurveyDocument.component:ComposantN1.value[x]
* group[=].element[=].target.equivalence = #equivalent
// Interprétation
* group[=].element[+].code = #FRCDAEvaluationComposant.interpretationCode
* group[=].element[=].target.code = #FRObservationSurveyDocument.component:ComposantN1.interpretation
* group[=].element[=].target.equivalence = #equivalent
// component N2 de l'évaluation
* group[=].element[+].code = #FRCDAEvaluationComposant.entryRelationship:frEvaluationComposantN2
* group[=].element[=].target.code = #FRObservationSurveyDocument.component:ComposantN2
* group[=].element[=].target.equivalence = #equivalent
// Commentaire
* group[=].element[+].code = #FRCDAEvaluationComposant.entryRelationship:frCommentaireER
* group[=].element[=].target.code = #FRObservationSurveyDocument.component:ComposantN1.extension:note.value[x]
* group[=].element[=].target.equivalence = #equivalent