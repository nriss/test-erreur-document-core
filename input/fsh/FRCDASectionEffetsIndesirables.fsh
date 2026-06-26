Profile: FRCDASectionEffetsIndesirables
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Section
Id: fr-cda-effets-indesirables
Title: "CDA - FR Effets indesirables"
Description: "Liste des effets indésirables prévisibles liés aux médicaments."
* templateId 1..1
* templateId ^slicing.discriminator.type = #value
* templateId ^slicing.discriminator.path = "root"
* templateId ^slicing.rules = #open
* templateId contains frSectionEffetsIndesirables 1..1
* templateId[frSectionEffetsIndesirables].root = "1.2.250.1.213.1.1.2.247"
* templateId[frSectionEffetsIndesirables] ^short = "Conformité de la section aux spécifications CI-SIS"
* id MS
* id ^short = "Identifiant de la section"
* id ^definition = "Identifiant de la section"
* code MS
* code 1..1
* code ^short = "Code de la section"
* code ^definition = "Code de la section"
* code.code 1..1
* code.code = #44939-7
* code.displayName 1..1
* code.displayName = "Effets indésirables prévisibles liés aux médicaments"
* code.codeSystem 1..1
* code.codeSystem = "2.16.840.1.113883.6.1"
* code.codeSystemName = "LOINC"
* title 1..1 MS
* title ^short = "Titre de la section"
* title ^definition = "Titre de la section"
* text 1..1 MS
* text ^short = "Bloc narratif de la section"
* text ^definition = "Bloc narratif de la section"
* entry MS
* entry 1..*
* entry.observation only FRCDAEffetIndesirable
* entry ^short = "Entrée FR-Effet-indesirabl"