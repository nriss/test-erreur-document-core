Profile: FRCDASectionTraitements
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Section
Id: fr-cda-traitements
Title: "CDA - FR Traitements"
Description: "IHE-PCC - Medications. Liste des principales prises médicamenteuses."
* templateId 1..3
* templateId ^slicing.discriminator.type = #value
* templateId ^slicing.discriminator.path = "root"
* templateId ^slicing.rules = #open
* templateId contains iheSectionMedications 1..1
and ccdSectionMedications 1..1
and frSectionTraitements 1..1
* templateId[iheSectionMedications].root = "1.3.6.1.4.1.19376.1.5.3.1.3.19"
* templateId[iheSectionMedications] ^short = "	Déclaration de conformité de la section aux spécifications (IHE PCC)"
* templateId[ccdSectionMedications].root = "2.16.840.1.113883.10.20.1.8"
* templateId[ccdSectionMedications] ^short = "Déclaration de conformité de la section au parent (CCD)"
* templateId[frSectionTraitements].root = "1.2.250.1.213.1.1.2.143"
* templateId[frSectionTraitements] ^short = "Déclaration de conformité de la section aux spécifications (CI-SIS)"
* id MS
* id ^short = "Identifiant de la section"
* id ^definition = "Identifiant de la section"
* code MS
* code 1..1
* code ^short = "Code de la section"
* code ^definition = "Code de la section"
* code.code 1..1 MS
* code.code = #10160-0
* code.displayName 1..1 MS
* code.displayName = "Traitements"
* code.codeSystem 1..1 MS
* code.codeSystem = "2.16.840.1.113883.6.1"
* code.codeSystemName = "LOINC"
* title 1..1 MS
* title ^short = "Titre de la section"
* title ^definition = "Titre de la section"
* text 1..1 MS
* text ^short = "Bloc narratif"
* text ^definition = "Bloc narratif"
* entry MS
* entry 1..*
* entry.substanceAdministration only FRCDATraitement
* entry ^short = "Entrée Traitement"
