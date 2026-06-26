Profile: FRCDAAdministrationDeDerivesDuSang
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Observation
Id: fr-cda-administration-de-derives-du-sang
Title: "CDA - FR Administration de derives du sang"
Description: "Entrée FR-Administration-de-derives-du-sang: IHE-PCC - Simple-Observation Cette entrée permet d'indiquer s'il y a eu ou pas une administration de dérivés du sang."
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
and frAdministrationDeDerivesDuSang 1..1
* templateId[iheSimpleObservation].root 1..1
* templateId[iheSimpleObservation].root = "1.3.6.1.4.1.19376.1.5.3.1.4.13"
* templateId[iheSimpleObservation] ^short = "Conformité Simple Observation (IHE PCC)"
* templateId[iheSimpleObservation] ^definition = "Conformité Simple Observation (IHE PCC)"
* templateId[frSimpleObservation].root 1..1
* templateId[frSimpleObservation].root = "1.2.250.1.213.1.1.3.48"
* templateId[frSimpleObservation] ^short = "Conformité FR-Simple-Observation (CI-SIS)"
* templateId[frSimpleObservation] ^definition = "Conformité FR-Simple-Observation (CI-SIS)"
* templateId[frAdministrationDeDerivesDuSang].root 1..1
* templateId[frAdministrationDeDerivesDuSang].root = "1.2.250.1.213.1.1.3.48.2"
* templateId[frAdministrationDeDerivesDuSang] ^short = "Conformité FR-Administration-de-derives-du-sang (CI-SIS)"
* templateId[frAdministrationDeDerivesDuSang] ^definition = "Conformité FR-Administration-de-derives-du-sang (CI-SIS)"
* code MS
* code ^short = "Code de l'observation"
* code ^definition = "Code de l'observation"
* code.code = #MED-147
* code.displayName = "Administration de dérivés du sang"
* code.codeSystem = "1.2.250.1.213.1.1.4.322"
* code.codeSystemName = "TerminologieCISIS"
* code.code 1..1 MS
* code.displayName MS
* code.codeSystem 1..1 MS
* text MS
* text 1..1
* text ^short = "Description narrative"
  * reference 1..1
* statusCode MS
* statusCode 1..1
* statusCode ^short = "Statut de l'observation"
* statusCode ^definition = "Statut de l'observation"
* statusCode.code = #completed
* effectiveTime MS
* effectiveTime 1..1
* effectiveTime ^short = "Date de l'observation"
* effectiveTime ^definition = "Date de l'observation"
* value MS
* value 1..1
* value only BL
* value ^short = "Administration de dérivés du sang."
* author 0..1
* author only FRCDAAuthor
