Profile: FRCDAEnRapportAvecLaPrevention
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Observation
Id: fr-cda-en-rapport-avec-la-prevention
Title: "CDA - FR En rapport avec la prevention"
Description: "Entrée FR-En-rapport-avec-la-prevention: Cette observation permet d'indiquer si l'élément auquel elle est associée est en rapport avec une prévention."
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
* templateId contains iheSimpleObservation 1..1
and frSimpleObservation 1..1
and frEnRapportAvecLaPrevention 1..1
* templateId[iheSimpleObservation].root 1..1
* templateId[iheSimpleObservation].root = "1.3.6.1.4.1.19376.1.5.3.1.4.13"
* templateId[iheSimpleObservation] ^short = "Conformité Simple Observation (IHE PCC)"
* templateId[iheSimpleObservation] ^definition = "Conformité Simple Observation (IHE PCC)"
* templateId[frSimpleObservation].root 1..1
* templateId[frSimpleObservation].root = "1.2.250.1.213.1.1.3.48"
* templateId[frSimpleObservation] ^short = "Conformité FR-Simple-observation (CI-SIS)"
* templateId[frSimpleObservation] ^definition = "Conformité FR-Simple-observation (CI-SIS)"
* templateId[frEnRapportAvecLaPrevention].root 1..1
* templateId[frEnRapportAvecLaPrevention].root = "1.2.250.1.213.1.1.3.48.34"
* templateId[frEnRapportAvecLaPrevention] ^short = "Conformité FR-En-rapport-avec-la-prevention (CI-SIS)"
* templateId[frEnRapportAvecLaPrevention] ^definition = "Conformité FR-En-rapport-avec-la-prevention"
* code MS
* code ^short = "Catégorie de l'entrée"
* code ^definition = "Catégorie de l'entrée"
* code.code = #GEN-295
* code.displayName = "En rapport avec la prévention"
* code.codeSystem = "1.2.250.1.213.1.1.4.322"
* code.codeSystemName = "TerminologieCISIS"
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
* effectiveTime ^short = "Horodatage de l'entrée"
* effectiveTime ^definition = "Horodatage de l'entrée"
* value MS
* value 1..1
* value only BL
* value ^short = "Résultat de l'observation - L'attribut @value pourra prendre l'une des deux valeurs suivantes: value='true' : le traitement est prescrit dans le cadre d'une prévention value='false' : le traitement n'est pas prescrit dans le cadre d'une prévention"
* value ^definition = "Résultat de l'observation"
* author 0..1
* author only FRCDAAuthor
