Profile: FRCDAEvaluationComposantN2
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Observation
Id: fr-cda-evaluation-composant-n2
Title: "CDA - FR Evaluation Composant N2"
Description: "Entrée FR-Evaluation-Composant-N2: Cette entrée permet de porter un résultat élémentaire (ex : score unitaire) répondant à une question faisant partie d’une évaluation."
* classCode MS
* classCode = #OBS
* moodCode MS
* moodCode = #EVN
* id 1..1 MS
* id ^short = "Identifiant de l'entrée"
* id ^definition = "Identifiant de l'entrée"
* templateId 1..1
* templateId.root = "1.2.250.1.213.1.1.3.220"
* templateId ^short = "Conformité FR-Evaluation-Composant(CI-SIS)"
* templateId ^definition = "Conformité FR-Evaluation-Composant(CI-SIS)"
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
* value ^short = "Résultat de l'évaluation - Le type et la valeur du résultat de l'évaluation (value) dépendent du volet utilisant cette entrée (les précisions sont alors fournies dans le volet correspondant). "
* value ^definition = "Résultat de l'évaluation"
* value.originalText MS
* value.originalText 0..1
* value.originalText.reference 1..1
* interpretationCode MS
* interpretationCode ^short = " Interprétation "
* interpretationCode ^definition = "Interprétation"
* entryRelationship MS
* entryRelationship.act only FRCDACommentaireER
* entryRelationship.typeCode = #SUBJ
* entryRelationship.inversionInd = true
