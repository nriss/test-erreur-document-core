Profile: FRCDASectionHistoriqueDesGrossesses
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Section
Id: fr-cda-historique-des-grossesses
Title: "CDA - FR Historique des grossesses"
Description: "IHE-PCC - Pregnancy-History-Section. Cette section permet de décrire l'historique des grossesses de la patiente."
* templateId 1..2
* templateId ^slicing.discriminator.type = #value
* templateId ^slicing.discriminator.path = "root"
* templateId ^slicing.rules = #open
* templateId contains iheSectionPregnancyHistory 1..1
and frSectionHistoriqueDesGrossesses 1..1
* templateId[iheSectionPregnancyHistory].root = "1.3.6.1.4.1.19376.1.5.3.1.1.5.3.4"
* templateId[iheSectionPregnancyHistory] ^short = "Déclaration de conformité de la section aux spécifications (IHE PCC)"
* templateId[frSectionHistoriqueDesGrossesses].root = "1.2.250.1.213.1.1.2.77"
* templateId[frSectionHistoriqueDesGrossesses] ^short = "Déclaration de conformité de la section aux spécifications (CI-SIS)"
* id MS
* id ^short = "Identifiant de la section"
* id ^definition = "Identifiant de la section"
* code MS
* code 1..1
* code ^short = "Code de la section"
* code ^definition = "Code de la section"
* code.code 1..1 MS
* code.code = #10162-6
* code.displayName 1..1 MS
* code.displayName = "Historique des grossesses"
* code.codeSystem 1..1 MS
* code.codeSystem = "2.16.840.1.113883.6.1"
* code.codeSystemName = "LOINC"
* title 1..1 MS
* title ^short = "Titre de la section"
* title ^definition = "Titre de la section"
* text 1..1 MS
* text ^short = "Bloc narratif"
* text ^definition = "Bloc narratif"
* entry 1..* MS
* entry ^slicing.discriminator.type = #type
* entry ^slicing.discriminator.path = "$this"
* entry ^slicing.rules = #open
* entry contains
frObservationSurLaGrossesse 0..* and
frHistoriqueDeLaGrossesse 0..*
* entry[frObservationSurLaGrossesse].observation only FRCDAObservationSurLaGrossesse
* entry[frObservationSurLaGrossesse].observation ^short = "Entrée Observation sur la grossesse"
* entry[frHistoriqueDeLaGrossesse].organizer only FRCDAHistoriqueDeLaGrossesse
* entry[frHistoriqueDeLaGrossesse].organizer ^short = "Entrée Historique des grossesses"
