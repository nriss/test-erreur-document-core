Instance: FRObservationSurveyComponentN2LMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMEvaluationComposantN2 → FRCDAEvaluationComposantN2 → FRObservationSurveyDocument"
Description: "Mapping des éléments du modèle métier FRLMEvaluationComposantN2 vers le profil CDA FRCDAEvaluationComposantN2, puis vers le profil FHIR FRObservationSurveyDocument."
* title = "Mapping Métier/CDA/FHIR : \"Composant d'évaluation N2\""
* status = #draft

// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-evaluation-composant-n2"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-evaluation-composant-n2"
// Élément racine
* group[=].element[+].code = #FRLMEvaluationComposantN2
* group[=].element[=].target.code = #FRCDAEvaluationComposantN2
* group[=].element[=].target.equivalence = #equivalent
// Identifiant de l'entrée
* group[=].element[+].code = #FRLMEvaluationComposantN2.identifiant
* group[=].element[=].target.code = #FRCDAEvaluationComposantN2.id
* group[=].element[=].target.equivalence = #equivalent
// Code de l'évaluation
* group[=].element[+].code = #FRLMEvaluationComposantN2.codeEvaluation
* group[=].element[=].target.code = #FRCDAEvaluationComposantN2.code
* group[=].element[=].target.equivalence = #equivalent
// Description narrative
* group[=].element[+].code = #FRLMEvaluationComposantN2.description
* group[=].element[=].target.code = #FRCDAEvaluationComposantN2.text
* group[=].element[=].target.equivalence = #equivalent
// Statut de l'entrée
* group[=].element[+].code = #FRLMEvaluationComposantN2.statut
* group[=].element[=].target.code = #FRCDAEvaluationComposantN2.statusCode
* group[=].element[=].target.equivalence = #equivalent
// Horodatage de l'entrée
* group[=].element[+].code = #FRLMEvaluationComposantN2.horodatage
* group[=].element[=].target.code = #FRCDAEvaluationComposantN2.effectiveTime
* group[=].element[=].target.equivalence = #equivalent
// Résultat de l'évaluation
* group[=].element[+].code = #FRLMEvaluationComposantN2.resultat
* group[=].element[=].target.code = #FRCDAEvaluationComposantN2.value
* group[=].element[=].target.equivalence = #equivalent
// Interprétation
* group[=].element[+].code = #FRLMEvaluationComposantN2.interpretation
* group[=].element[=].target.code = #FRCDAEvaluationComposantN2.interpretationCode
* group[=].element[=].target.equivalence = #equivalent
// Commentaire
* group[=].element[+].code = #FRLMEvaluationComposantN2.commentaire
* group[=].element[=].target.code = #FRCDAEvaluationComposantN2.entryRelationship:frCommentaireER
* group[=].element[=].target.equivalence = #equivalent

// Groupe Mapping 2 : CDA → FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-evaluation-composant-n2"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-observation-survey-document"
// Élément racine
* group[=].element[+].code = #FRCDAEvaluationComposantN2
* group[=].element[=].target.code = #FRObservationSurveyDocument.component:ComposantN2
* group[=].element[=].target.equivalence = #equivalent
// Identifiant de l'entrée
* group[=].element[+].code = #FRCDAEvaluationComposantN2.id
* group[=].element[=].target.code = #FRObservationSurveyDocument.component:ComposantN2.id
* group[=].element[=].target.equivalence = #equivalent
// Code de l'évaluation
* group[=].element[+].code = #FRCDAEvaluationComposantN2.code
* group[=].element[=].target.code = #FRObservationSurveyDocument.component:ComposantN2.code
* group[=].element[=].target.equivalence = #equivalent
// Description narrative
* group[=].element[+].code = #FRCDAEvaluationComposantN2.text
* group[=].element[=].target.code = #FRObservationSurveyDocument.component:ComposantN2.code.text
* group[=].element[=].target.equivalence = #equivalent
// Statut de l'entrée
* group[=].element[+].code = #FRCDAEvaluationComposantN2.statusCode
* group[=].element[=].target.code = #FRObservationSurveyDocument.status
* group[=].element[=].target.equivalence = #equivalent
// Horodatage de l'entrée
* group[=].element[+].code = #FRCDAEvaluationComposantN2.effectiveTime
* group[=].element[=].target.code = #FRObservationSurveyDocument.effective[x]
* group[=].element[=].target.equivalence = #equivalent
// Résultat de l'évaluation
* group[=].element[+].code = #FRCDAEvaluationComposantN2.value
* group[=].element[=].target.code = #FRObservationSurveyDocument.component:ComposantN2.value[x]
* group[=].element[=].target.equivalence = #equivalent
// Interprétation
* group[=].element[+].code = #FRCDAEvaluationComposantN2.interpretationCode
* group[=].element[=].target.code = #FRObservationSurveyDocument.component:ComposantN2.interpretation
* group[=].element[=].target.equivalence = #equivalent
// Commentaire
* group[=].element[+].code = #FRCDAEvaluationComposantN2.entryRelationship:frCommentaireER
* group[=].element[=].target.code = #FRObservationSurveyDocument.component:ComposantN2.extension:note.value[x]
* group[=].element[=].target.equivalence = #equivalent 