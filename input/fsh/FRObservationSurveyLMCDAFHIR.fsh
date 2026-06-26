Instance: FRObservationSurveyLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMEvaluation → FRCDAEvaluation → FRObservationSurveyDocument"
Description: "Mapping des éléments du modèle métier FRLMEvaluation vers le profil CDA FRCDAEvaluation, puis vers le profil FHIR FRObservationSurveyDocument."
* title = "Mapping Métier/CDA/FHIR : \"Evaluation\""
* status = #draft   
// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-evaluation"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-evaluation"
// Élément racine
* group[=].element[+].code = #FRLMEvaluation
* group[=].element[=].target.code = #FRCDAEvaluation
* group[=].element[=].target.equivalence = #equivalent
// Identifiant de l'entrée
* group[=].element[+].code = #FRLMEvaluation.identifiant
* group[=].element[=].target.code = #FRCDAEvaluation.id
* group[=].element[=].target.equivalence = #equivalent
// Type d'évaluation
* group[=].element[+].code = #FRLMEvaluation.typeEvaluation
* group[=].element[=].target.code = #FRCDAEvaluation.code
* group[=].element[=].target.equivalence = #equivalent
// Description narrative
* group[=].element[+].code = #FRLMEvaluation.description
* group[=].element[=].target.code = #FRCDAEvaluation.text
* group[=].element[=].target.equivalence = #equivalent
// Statut de l'entrée
* group[=].element[+].code = #FRLMEvaluation.statut
* group[=].element[=].target.code = #FRCDAEvaluation.statusCode
* group[=].element[=].target.equivalence = #equivalent
// Date
* group[=].element[+].code = #FRLMEvaluation.date
* group[=].element[=].target.code = #FRCDAEvaluation.effectiveTime
* group[=].element[=].target.equivalence = #equivalent
// Valeur de l'évaluation
* group[=].element[+].code = #FRLMEvaluation.valeur
* group[=].element[=].target.code = #FRCDAEvaluation.value
* group[=].element[=].target.equivalence = #equivalent
// Interprétation
* group[=].element[+].code = #FRLMEvaluation.interpretation
* group[=].element[=].target.code = #FRCDAEvaluation.interpretationCode
* group[=].element[=].target.equivalence = #equivalent
// Evaluateur
* group[=].element[+].code = #FRLMEvaluation.evaluateur
* group[=].element[=].target.code = #FRCDAEvaluation.performer
* group[=].element[=].target.equivalence = #equivalent
// Auteur de l'évaluation
* group[=].element[+].code = #FRLMEvaluation.auteurEvaluation
* group[=].element[=].target.code = #FRCDAEvaluation.author
* group[=].element[=].target.equivalence = #equivalent
// Responsable de l'évaluation
* group[=].element[+].code = #FRLMEvaluation.responsableEvaluation
* group[=].element[=].target.code = #FRCDAEvaluation.participant
* group[=].element[=].target.equivalence = #equivalent
// Composants de l'évaluation
* group[=].element[+].code = #FRLMEvaluation.evaluationComposant
* group[=].element[=].target.code = #FRCDAEvaluation.entryRelationship:frEvaluationComposant
* group[=].element[=].target.equivalence = #equivalent
// Statut de l’évaluation
* group[=].element[+].code = #FRLMEvaluation.statutEvaluation
* group[=].element[=].target.code = #FRCDAEvaluation.entryRelationship:frStatut
* group[=].element[=].target.equivalence = #equivalent
// Commentaire
* group[=].element[+].code = #FRLMEvaluation.commentaire
* group[=].element[=].target.code = #FRCDAEvaluation.entryRelationship:frCommentaireER
* group[=].element[=].target.equivalence = #equivalent
// Reference Interne
* group[=].element[+].code = #FRLMEvaluation.referenceInterne
* group[=].element[=].target.code = #FRCDAEvaluation.entryRelationship:frReferenceInterne
* group[=].element[=].target.equivalence = #equivalent

// Groupe Mapping 2 : CDA → FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-evaluation"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-observation-survey-document"
// Élément racine   
* group[=].element[+].code = #FRCDAEvaluation
* group[=].element[=].target.code = #FRObservationSurveyDocument
* group[=].element[=].target.equivalence = #equivalent
// type d'évaluation
* group[=].element[+].code = #FRCDAEvaluation.code
* group[=].element[=].target.code = #FRObservationSurveyDocument.code
* group[=].element[=].target.equivalence = #equivalent
// texte narratif
* group[=].element[+].code = #FRCDAEvaluation.text
* group[=].element[=].target.code = #FRObservationSurveyDocument.code.text
* group[=].element[=].target.equivalence = #equivalent
// Valeur de l'évaluation
* group[=].element[+].code = #FRCDAEvaluation.value
* group[=].element[=].target.code = #FRObservationSurveyDocument.value[x]
* group[=].element[=].target.equivalence = #equivalent
// Interprétation
* group[=].element[+].code = #FRCDAEvaluation.interpretationCode
* group[=].element[=].target.code = #FRObservationSurveyDocument.interpretation
* group[=].element[=].target.equivalence = #equivalent
// Evaluateur
* group[=].element[+].code = #FRCDAEvaluation.performer
* group[=].element[=].target.code = #FRObservationSurveyDocument.performer.extension:Evaluateur
* group[=].element[=].target.equivalence = #equivalent
// Auteur de l'évaluation
* group[=].element[+].code = #FRCDAEvaluation.author
* group[=].element[=].target.code = #FRObservationSurveyDocument.performer.extension:Auteur
* group[=].element[=].target.equivalence = #equivalent
// Responsable de l'évaluation
* group[=].element[+].code = #FRCDAEvaluation.participant
* group[=].element[=].target.code = #FRObservationSurveyDocument.performer.extension:Participant
* group[=].element[=].target.equivalence = #equivalent
// Composants de l'évaluation
* group[=].element[+].code = #FRCDAEvaluation.entryRelationship:frEvaluationComposant
* group[=].element[=].target.code = #FRObservationSurveyDocument.component
* group[=].element[=].target.equivalence = #equivalent
// Statut de l’évaluation
* group[=].element[+].code = #FRCDAEvaluation.entryRelationship:frStatut
* group[=].element[=].target.code = #FRObservationSurveyDocument.status.extension:statusReason
* group[=].element[=].target.equivalence = #equivalent
// Commentaire
* group[=].element[+].code = #FRCDAEvaluation.entryRelationship:frCommentaireER
* group[=].element[=].target.code = #FRObservationSurveyDocument.note
* group[=].element[=].target.equivalence = #equivalent
// Reference Interne
* group[=].element[+].code = #FRCDAEvaluation.entryRelationship:frReferenceInterne
* group[=].element[=].target.code = #FRObservationSurveyDocument.hasMember
* group[=].element[=].target.equivalence = #equivalent