Profile: FRCDASectionResultats
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Section
Id: fr-cda-section-resultats
Title: "CDA - FR Resultats"
Description: "Cette section regroupe les rÃ©sultats d'examens (biologie polyvalente, imagerie, cytologie, pathologie, gÃ©nÃ©tique humaine...)"
* templateId 1..1
* templateId ^slicing.discriminator.type = #value
* templateId ^slicing.discriminator.path = "root"
* templateId ^slicing.rules = #open
* templateId contains frSectionResultats 1..1
* templateId[frSectionResultats].root = "1.2.250.1.213.1.1.2.244"
* templateId[frSectionResultats] ^short = "ConformitÃ© de la section aux spÃ©cifications CI-SIS"
* id 1..1 MS
* id ^short = "Identifiant de la section"
* id ^definition = "Identifiant de la section"
* code MS
* code 1..1
* code ^short = "Code de la section"
* code ^definition = "Code de la section"
* code.code 1..1 MS
* code.code = #30954-2
* code.displayName 1..1 MS
* code.displayName = "RÃ©sultats dâ€™examens"
* code.codeSystem 1..1 MS
* code.codeSystem = "2.16.840.1.113883.6.1"
* code.codeSystemName = "LOINC"
* title 1..1 MS
* title ^short = "Titre de la section"
* title ^definition = "Titre de la section"
* text 1..1 MS
* text ^short = "Bloc narratif de la section"
* text ^definition = "Bloc narratif de la section"
* entry MS
* entry.organizer only FRCDAResultats
* entry ^short = "EntrÃ©e FR-Resultats"
