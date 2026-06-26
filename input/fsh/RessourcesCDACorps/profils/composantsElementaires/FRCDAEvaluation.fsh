Profile: FRCDAEvaluation
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Observation
Id: fr-cda-evaluation
Title: "CDA - FR Evaluation"
Description: "Entrée FR-Evaluation: IHE-PCC - Survey Observation - L'entrée Evaluation permet de rapporter un résultat (score) répondant à une question faisant partie d'une évaluation (questionnaire d'enquête par exemple).Cette entrée est basée sur l’entrée FR-Simple-Observation (1.3.6.1.4.1.19376.1.5.3.1.4.13) qu'elle spécialise."
* classCode MS
* classCode = #OBS
* moodCode MS
* moodCode = #EVN
* id 1..1 MS
* id ^short = "Identifiant de l'entrée"
* id ^definition = "Identifiant de l'entrée"
* templateId 1..4
* templateId ^slicing.discriminator.type = #value
* templateId ^slicing.discriminator.path = "root"
* templateId ^slicing.rules = #open
* templateId contains iheSurveyObservation 1..1
and iheSimpleObservation 1..1
and ccdResultObservation 1..1
and frEvaluation 1..1
* templateId[iheSurveyObservation].root 1..1
* templateId[iheSurveyObservation].root = "1.3.6.1.4.1.19376.1.5.3.1.1.12.3.6"
* templateId[iheSurveyObservation] ^short = "Conformité Survey Observation (IHE PCC)"
* templateId[iheSurveyObservation] ^definition = "Conformité Survey Observation (IHE PCC)"
* templateId[iheSimpleObservation].root 1..1
* templateId[iheSimpleObservation].root = "1.3.6.1.4.1.19376.1.5.3.1.4.13"
* templateId[iheSimpleObservation] ^short = "Conformité Simple Observation (IHE PCC)"
* templateId[iheSimpleObservation] ^definition = "Conformité Simple Observation (IHE PCC)"
* templateId[ccdResultObservation].root 1..1
* templateId[ccdResultObservation].root = "2.16.840.1.113883.10.20.1.31"
* templateId[ccdResultObservation] ^short = "Conformité Simple Observation (CCD)"
* templateId[ccdResultObservation] ^definition = "Conformité Simple Observation (CCD)"
* templateId[frEvaluation].root 1..1
* templateId[frEvaluation].root = "1.2.250.1.213.1.1.3.25"
* templateId[frEvaluation] ^short = "Conformité FR-Evaluation (CI-SIS)"
* templateId[frEvaluation] ^definition = "Conformité FR-Evaluation (CI-SIS)"
* code MS
* code ^short = "Type d'évaluation :LOINC (2.16.840.1.113883.6.1) ou ICF (2.16.840.1.113883.6.254) ou autreSi le type d'évaluation n'est pas trouvé dans les terminologies proposées, utiliser le code='54522-8' displayName='Statut fonctionnel' codeSystem=' 2.16.840.1.113883.6.1' codeSystemName='LOINC' et décrire le type d'évaluation sous forme de texte libre dans la partie narrative avec une référence vers l'entrée correspondante."
* code ^definition = "Type d'évaluation"
* code.translation 0..1
* code.code 1..1 MS
* code.displayName MS
* code.codeSystem 1..1 MS
* text MS
* text 1..1
* text ^short = "Description narrative"
  * reference 1..1
  * reference ^short = "Référence vers la partie narrative de la section"
* statusCode MS
* statusCode 1..1
* statusCode ^short = "Statut de l’entrée - Fixé à la valeur 'completed'"
* statusCode ^definition = "Statut de l’entrée"
* statusCode.code = #completed
* effectiveTime MS
* effectiveTime 1..1
* effectiveTime ^short = "Date"
* effectiveTime ^definition = "Date"
* value MS
* value 1..1
* value only CD
* value ^short = "Valeur de l'évaluation : Le type (code) et la valeur de la mesure (réponse) dépendent du volet utilisant cette entrée et sont spécifiquement précisés dans les volets de contenus."
* value ^definition = "Valeur de l'évaluation"
* interpretationCode MS
* interpretationCode 0..1
* interpretationCode ^short = "Interprétation - Un code d’interprétation de la valeur pourra être utilisé pour donner une évaluation de la réponse."
* interpretationCode ^definition = "Interprétation"
* performer 0..1
* performer only FRCDAPerformerCorps
* performer ^short = "Evaluateur"
* performer ^definition = "Evaluateur"
* author 0..1
* author only FRCDAAuthor
* author ^short = "Auteur de l'évaluation - @typeCode ='RESP' "
* author ^definition = "Auteur de l'évaluation"
* participant 0..1
* participant only FRCDAParticipantCorps
* participant ^short = "Responsable de l'évaluation"
* participant ^definition = "Responsable de l'évaluation"
* participant.typeCode = #RESP
* entryRelationship MS
* entryRelationship ^slicing.discriminator.type = #value
* entryRelationship ^slicing.discriminator.path = "$this"
* entryRelationship ^slicing.rules = #open
* entryRelationship contains 
frEvaluationComposant 0..*
 and frStatut 0..1
 and frCommentaireER 0..*
 and frReferenceInterne 0..*
* entryRelationship[frEvaluationComposant].observation only FRCDAEvaluationComposant
* entryRelationship[frEvaluationComposant].typeCode = #COMP
* entryRelationship[frEvaluationComposant].inversionInd = false
* entryRelationship[frStatut].observation only FRCDAStatut
* entryRelationship[frStatut] ^short = "Statut de l’évaluation"
* entryRelationship[frStatut].typeCode = #COMP
* entryRelationship[frStatut].inversionInd = false
* entryRelationship[frCommentaireER].act only FRCDACommentaireER
* entryRelationship[frCommentaireER] ^short = "Commentaire"
* entryRelationship[frCommentaireER].typeCode = #SUBJ
* entryRelationship[frCommentaireER].inversionInd = true
* entryRelationship[frReferenceInterne].act only FRCDAReferenceInterne
* entryRelationship[frReferenceInterne] ^short = "référence interne"
* entryRelationship[frReferenceInterne].typeCode = #REFR
* entryRelationship[frReferenceInterne].inversionInd = false
