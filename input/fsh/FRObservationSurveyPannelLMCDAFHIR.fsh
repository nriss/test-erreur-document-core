Instance: FRObservationSurveyPannelLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMGroupDeQuestionnairesDevaluation → FRCDAGroupeDeQuestionnairesDEvaluation → FRObservationSurveyDocument"
Description: "Mapping des éléments du modèle métier FRLMGroupDeQuestionnairesDevaluation vers le profil CDA FRCDAGroupeDeQuestionnairesDEvaluation, puis vers le profil FHIR FRObservationSurveyDocument."
* title = "Mapping Métier/CDA/FHIR : \"Groupe de questionnaires d'évaluation\""
* status = #draft
// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-group-de-questionnaires-devaluation"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-groupe-de-questionnaires-d-evaluation"
// Élément racine
* group[=].element[+].code = #FRLMGroupDeQuestionnairesDevaluation
* group[=].element[=].target.code = #FRCDAGroupeDeQuestionnairesDEvaluation
* group[=].element[=].target.equivalence = #equivalent
// Identifiant de l'entrée
* group[=].element[+].code = #FRLMGroupDeQuestionnairesDevaluation.identifiant
* group[=].element[=].target.code = #FRCDAGroupeDeQuestionnairesDEvaluation.id
* group[=].element[=].target.equivalence = #equivalent
// Code de l'entrée
* group[=].element[+].code = #FRLMGroupDeQuestionnairesDevaluation.code
* group[=].element[=].target.code = #FRCDAGroupeDeQuestionnairesDEvaluation.code
* group[=].element[=].target.equivalence = #equivalent
// Statut de l'entrée
* group[=].element[+].code = #FRLMGroupDeQuestionnairesDevaluation.statut
* group[=].element[=].target.code = #FRCDAGroupeDeQuestionnairesDEvaluation.statusCode
* group[=].element[=].target.equivalence = #equivalent
// Horodatage de l'entrée
* group[=].element[+].code = #FRLMGroupDeQuestionnairesDevaluation.horodatage
* group[=].element[=].target.code = #FRCDAGroupeDeQuestionnairesDEvaluation.effectiveTime
* group[=].element[=].target.equivalence = #equivalent
// Évaluation
* group[=].element[+].code = #FRLMGroupDeQuestionnairesDevaluation.evaluation
* group[=].element[=].target.code = #FRCDAGroupeDeQuestionnairesDEvaluation.component:frEvaluation
* group[=].element[=].target.equivalence = #equivalent

// Groupe Mapping 2 : CDA → FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-groupe-de-questionnaires-d-evaluation"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-observation-survey-document"
// Élément racine
* group[=].element[+].code = #FRCDAGroupeDeQuestionnairesDEvaluation
* group[=].element[=].target.code = #FRObservationSurveyDocument
* group[=].element[=].target.equivalence = #equivalent
// Identifiant de l'entrée
* group[=].element[+].code = #FRCDAGroupeDeQuestionnairesDEvaluation.id
* group[=].element[=].target.code = #FRObservationSurveyDocument.identifier
* group[=].element[=].target.equivalence = #equivalent
// Code de l'entrée
* group[=].element[+].code = #FRCDAGroupeDeQuestionnairesDEvaluation.code
* group[=].element[=].target.code = #FRObservationSurveyDocument.code
* group[=].element[=].target.equivalence = #equivalent
// Statut de l'entrée
* group[=].element[+].code = #FRCDAGroupeDeQuestionnairesDEvaluation.statusCode
* group[=].element[=].target.code = #FRObservationSurveyDocument.status
* group[=].element[=].target.equivalence = #equivalent
// Horodatage de l'entrée
* group[=].element[+].code = #FRCDAGroupeDeQuestionnairesDEvaluation.effectiveTime
* group[=].element[=].target.code = #FRObservationSurveyDocument.effectiveDateTime
* group[=].element[=].target.equivalence = #equivalent
// Composants d'évaluation
* group[=].element[+].code = #FRCDAGroupeDeQuestionnairesDEvaluation.component:frEvaluation
* group[=].element[=].target.code = #FRObservationSurveyDocument.hasMember:FRObservationSurveyDocument
* group[=].element[=].target.equivalence = #equivalent