Profile: FRCDASectionProblemesActifs
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Section
Id: fr-cda-problemes-actifs
Title: "CDA - FR Problemes actifs"
Description: "IHE-PCC - Active-Problems-Section. Liste des problèmes actifs du patient."
* templateId 1..3
* templateId ^slicing.discriminator.type = #value
* templateId ^slicing.discriminator.path = "root"
* templateId ^slicing.rules = #open
* templateId contains frSectionProblemesActifs 1..1
and ccdSectionActiveProblems 1..1
and iheSectionActiveProblems 1..1
* templateId[frSectionProblemesActifs].root = "1.2.250.1.213.1.1.2.132"
* templateId[frSectionProblemesActifs] ^short = "Déclaration de conformité de la section aux spécifications (CI-SIS)"
* templateId[ccdSectionActiveProblems].root = "2.16.840.1.113883.10.20.1.11"
* templateId[ccdSectionActiveProblems] ^short = "Déclaration de conformité de la section aux spécifications (CCD)"
* templateId[iheSectionActiveProblems].root = "1.3.6.1.4.1.19376.1.5.3.1.3.6"
* templateId[iheSectionActiveProblems] ^short = "Déclaration de conformité de la section aux spécifications (IHE-PCC)"
* id MS
* id ^short = "Identifiant de la section"
* id ^definition = "Identifiant de la section"
* code MS
* code 1..1
* code ^short = "Code de la section"
* code ^definition = "Code de la section"
* code.code 1..1 MS
* code.code = #11450-4
* code.displayName 1..1 MS
* code.displayName = "Liste des problèmes actifs"
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
* entry 1..*
* entry.act only FRCDAListeDesProblemes
* entry ^short = "Entrée Liste des problèmes"
