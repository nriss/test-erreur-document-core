Profile: FRCDASectionVaccinations
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Section
Id: fr-cda-vaccinations
Title: "CDA - FR Vaccinations"
Description: "IHE-PCC - Immunizations Section. Liste des vaccinations effectuées."
* templateId 1..3
* templateId ^slicing.discriminator.type = #value
* templateId ^slicing.discriminator.path = "root"
* templateId ^slicing.rules = #open
* templateId contains iheSectionImmunizations 1..1
and ccdSectionImmunizations 1..1
and frSectionVaccinations 1..1
* templateId[iheSectionImmunizations].root = "1.3.6.1.4.1.19376.1.5.3.1.3.23"
* templateId[iheSectionImmunizations] ^short = "Déclaration de conformité de la section aux spécifications (IHE PCC)"
* templateId[ccdSectionImmunizations].root = "2.16.840.1.113883.10.20.1.6"
* templateId[ccdSectionImmunizations] ^short = "Déclaration de conformité de la section aux spécifications (CCD)"
* templateId[frSectionVaccinations].root = "1.2.250.1.213.1.1.2.147"
* templateId[frSectionVaccinations] ^short = "Déclaration de conformité de la section aux spécifications (CI-SIS)"
* id MS
* id ^short = "Identifiant de la section"
* id ^definition = "Identifiant de la section"
* code MS
* code 1..1
* code ^short = "Code de la section"
* code ^definition = "Code de la section"
* code.code 1..1 MS
* code.code = #11369-6
* code.displayName 1..1 MS
* code.displayName = "Historique des vaccinations"
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
* entry.substanceAdministration only FRCDAVaccination
* entry ^short = "Entrée Vaccination"
