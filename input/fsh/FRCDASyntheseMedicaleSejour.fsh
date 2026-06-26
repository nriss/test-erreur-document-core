Profile: FRCDASyntheseMedicaleSejour
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Observation
Id: fr-cda-synthese-medicale-sejour
Title: "CDA - FR Synthese medicale sejour"
Description: "Entrée FR-Synthese-medicale-sejour: Cette entrée permet de fournir, sous forme textuelle, une synthèse médicale du séjour."
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
and frSyntheseMedicaleSejour 1..1
* templateId[iheSimpleObservation].root 1..1
* templateId[iheSimpleObservation].root = "1.3.6.1.4.1.19376.1.5.3.1.4.13"
* templateId[iheSimpleObservation] ^short = "Conformité Simple Observation (IHE PCC)"
* templateId[iheSimpleObservation] ^definition = "Conformité Simple Observation (IHE PCC)"
* templateId[frSimpleObservation].root 1..1
* templateId[frSimpleObservation].root = "1.2.250.1.213.1.1.3.48"
* templateId[frSimpleObservation] ^short = "Conformité FR-Simple-Observation (CI-SIS)"
* templateId[frSimpleObservation] ^definition = "Conformité FR-Simple-Observation (CI-SIS)"
* templateId[frSyntheseMedicaleSejour].root 1..1
* templateId[frSyntheseMedicaleSejour].root = "1.2.250.1.213.1.1.3.48.9"
* templateId[frSyntheseMedicaleSejour] ^short = "Conformité FR-Synthese-medicale-sejour (CI-SIS)"
* templateId[frSyntheseMedicaleSejour] ^definition = "Conformité FR-Synthese-medicale-sejour (CI-SIS)"
* code MS
* code ^short = "Code de l'observation"
* code ^definition = "Code de l'observation"
* code.code = #MED-142
* code.displayName = "Synthèse médicale"
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
* statusCode ^short = "Statut de l’entréeFixé à la valeur 'completed'"
* statusCode ^definition = "Statut de l’entrée"
* statusCode.code = #completed
* effectiveTime MS
* effectiveTime 1..1
* effectiveTime ^short = "Date de la synthèse médicale du séjour"
* effectiveTime ^definition = "Date de la synthèse médicale du séjour"
* value MS
* value 1..1
* value ^short = "Synthèse médicale du séjour (sous forme textuelle)"
* value ^definition = "Synthèse médicale du séjour"
* value only ST
* author only FRCDAAuthor
