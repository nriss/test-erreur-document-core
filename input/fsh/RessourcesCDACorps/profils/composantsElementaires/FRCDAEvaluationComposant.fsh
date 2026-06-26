Profile: FRCDAEvaluationComposant
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Observation
Id: fr-cda-evaluation-composant
Title: "CDA - FR Evaluation Composant"
Description: "Entrée FR-Evaluation-Composant: Cette entrée permet de porter un résultat élémentaire (ex : score unitaire) répondant à une question faisant partie d’une évaluation."
* classCode MS
* classCode = #OBS
* moodCode MS
* moodCode = #EVN
* id 1..1 MS
* id ^short = "Identifiant de l'entrée"
* id ^definition = "Identifiant de l'entrée"
* templateId 1..3
* templateId ^slicing.discriminator.type = #value
* templateId ^slicing.discriminator.path = "root"
* templateId ^slicing.rules = #open
* templateId contains ccdResultObservation 1..1
and iheSimpleObservation 1..1
and frEvaluationComposant 1..1
* templateId[ccdResultObservation].root 1..1
* templateId[ccdResultObservation].root = "2.16.840.1.113883.10.20.1.31"
* templateId[ccdResultObservation] ^short = "Conformité Simple Observation (CCD)"
* templateId[ccdResultObservation] ^definition = "Conformité Simple Observation (CCD)"
* templateId[iheSimpleObservation].root 1..1
* templateId[iheSimpleObservation].root = "1.3.6.1.4.1.19376.1.5.3.1.4.13"
* templateId[iheSimpleObservation] ^short = "Conformité Simple Observation (IHE PCC)"
* templateId[iheSimpleObservation] ^definition = "Conformité Simple Observation (IHE PCC)"
* templateId[frEvaluationComposant].root 1..1
* templateId[frEvaluationComposant].root = "1.2.250.1.213.1.1.3.214"
* templateId[frEvaluationComposant] ^short = "Conformité FR-Evaluation-Composant(CI-SIS)"
* templateId[frEvaluationComposant] ^definition = "Conformité FR-Evaluation-Composant(CI-SIS)"
* code MS
* code ^short = "Code de l'évaluation : dépend du volet utilisant cette entrée (les précisions sont alors fournies dans le volet correspondant). Utiliser de préférence un code LOINC (2.16.840.1.113883.6.1) ou ICF (2.16.840.1.113883.6.254) ou autre.Si le type d'évaluation n'est pas trouvé dans les terminologies proposées, utiliser le code='54522-8' displayName='Statut fonctionnel' codeSystem=' 2.16.840.1.113883.6.1' codeSystemName='LOINC' et décrire le type d'évaluation sous forme de texte libre dans la partie narrative avec une référence vers l'entrée correspondante."
* code ^definition = "Code de l'évaluation"
* code.code 1..1 MS
* code.displayName MS
* code.codeSystem 1..1 MS
* text MS
* text 1..1
* text ^short = "Partie narrative"
  * reference 1..1
* statusCode MS
* statusCode 1..1
* statusCode ^short = "Statut de l'entrée - Fixé à la valeur 'completed'"
* statusCode ^definition = "Statut de l'entrée"
* statusCode.code = #completed
* effectiveTime MS
* effectiveTime 1..1
* effectiveTime ^short = "Horodatage de l'entrée"
* effectiveTime ^definition = "Horodatage de l'entrée"
* value MS
* value 1..1
* value only CD
* value ^short = "Résultat de l'évaluation - Le type et la valeur du résultat de l'évaluation (value) dépendent du volet utilisant cette entrée (les précisions sont alors fournies dans le volet correspondant)."
* value ^definition = "Résultat de l'évaluation"
* value.originalText MS
* value.originalText.reference 1..1
* interpretationCode MS
* interpretationCode 0..1
* interpretationCode ^short = " Interprétation "
* interpretationCode ^definition = "Interprétation"
* entryRelationship MS
* entryRelationship ^slicing.discriminator.type = #value
* entryRelationship ^slicing.discriminator.path = "$this"
* entryRelationship ^slicing.rules = #open
* entryRelationship contains 
frEvaluationComposantN2 0..*
 and frCommentaireER 0..*
* entryRelationship[frEvaluationComposantN2].observation only FRCDAEvaluationComposantN2
* entryRelationship[frEvaluationComposantN2] ^short = "Sous-composant de l'évaluation"
* entryRelationship[frEvaluationComposantN2].typeCode = #COMP
* entryRelationship[frEvaluationComposantN2].inversionInd = false
* entryRelationship[frCommentaireER].act only FRCDACommentaireER
* entryRelationship[frCommentaireER] ^short = "Commentaire"
* entryRelationship[frCommentaireER].typeCode = #SUBJ
* entryRelationship[frCommentaireER].inversionInd = true
