Profile: FRCDAAccidentsTransfusionnels
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Observation
Id: fr-cda-accidents-transfusionnels
Title: "CDA - FR Accidents transfusionnels"
Description: "Entrée FR-Accidents-transfusionnels: Cette entrée permet de décrire sous forme textuelle un accident transfusionnel. "
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
and frAccidentsTransfusionnels 1..1
* templateId[iheSimpleObservation].root 1..1
* templateId[iheSimpleObservation].root = "1.3.6.1.4.1.19376.1.5.3.1.4.13"
* templateId[iheSimpleObservation] ^short = "Conformité Simple Observation (IHE-PCC)"
* templateId[iheSimpleObservation] ^definition = "Conformité Simple Observation (IHE-PCC)"
* templateId[frSimpleObservation].root 1..1
* templateId[frSimpleObservation].root = "1.2.250.1.213.1.1.3.48"
* templateId[frSimpleObservation] ^short = "Conformité FR-Simple-observation (CI-SIS)"
* templateId[frSimpleObservation] ^definition = "Conformité FR-Simple-observation (CI-SIS)"
* templateId[frAccidentsTransfusionnels].root 1..1    
* templateId[frAccidentsTransfusionnels].root = "1.2.250.1.213.1.1.3.48.1"
* templateId[frAccidentsTransfusionnels] ^short = "Conformité FR-Accidents transfusionnels (CI-SIS)"
* templateId[frAccidentsTransfusionnels] ^definition = "Conformité FR-Accidents transfusionnels (CI-SIS)"
* code MS
* code ^short = "Code de l'observation"
* code ^definition = "Code de l'observation"
* code ^short = "Code de l'observation"
* code.code = #MED-146
* code.displayName = "Accidents transfusionnels"
* code.codeSystem = "1.2.250.1.213.1.1.4.322"
* code.codeSystemName = "TerminologieCISIS"
* code.code 1..1 MS
* code.displayName MS
* code.codeSystem 1..1 MS
* text MS
* text 1..1
* text ^short = "Partie narrative de l'observation"
* text ^definition = "Partie narrative de l'observation"
* text.reference 1..1 MS
* statusCode MS
* statusCode 1..1
* statusCode.code = #completed
* statusCode ^short = "Statut de l'observation"
* statusCode ^definition = "Statut de l'observation"
* effectiveTime MS
* effectiveTime 1..1
* effectiveTime ^short = "Date de l'observation"
* effectiveTime ^definition = "Date de l'observation"
* value MS
* value 1..1
* value ^short = "Description sous forme textuelle de l'accident transfusionnel"
* value ^definition = "Description sous forme textuelle de l'accident transfusionnel"
* value only ST
* author 0..1
* author ^short = "Auteur de l'observation accident transfusionnel"
* author ^definition = "Auteur de l'observation accident transfusionnel"
* author only FRCDAAuthor
