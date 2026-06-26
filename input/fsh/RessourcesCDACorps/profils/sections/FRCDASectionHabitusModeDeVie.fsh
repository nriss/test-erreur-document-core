Profile: FRCDASectionHabitusModeDeVie
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Section
Id: fr-cda-section-habitus-mode-de-vie
Title: "CDA - FR Habitus mode de vie"
Description: "IHE-PCC - Coded Social History Section. Liste codÃ©e des informations relatives aux habitus et au mode de vie du patient."
* templateId 1..4
* templateId ^slicing.discriminator.type = #value
* templateId ^slicing.discriminator.path = "root"
* templateId ^slicing.rules = #open
* templateId contains ccdSectionCodedSocialHistory 1..1
and iheSectionCodedSocialHistory 1..1
and frSectionHabitusModeDeVie 1..1
and iheSectionSocialHistory 1..1
* templateId[ccdSectionCodedSocialHistory].root = "2.16.840.1.113883.10.20.1.15"
* templateId[ccdSectionCodedSocialHistory] ^short = "ConformitÃ© Social History Section (CCD)"
* templateId[iheSectionCodedSocialHistory].root = "1.3.6.1.4.1.19376.1.5.3.1.3.16.1"
* templateId[iheSectionCodedSocialHistory] ^short = "ConformitÃ© Social History Section (IHE-PCC)"
* templateId[frSectionHabitusModeDeVie].root = "1.2.250.1.213.1.1.2.141"
* templateId[frSectionHabitusModeDeVie] ^short = "ConformitÃ© FR-Habitus-Mode-de-Vie (CI-SIS)"
* templateId[iheSectionSocialHistory].root = "1.3.6.1.4.1.19376.1.5.3.1.3.16.2"
* templateId[iheSectionSocialHistory] ^short = "ConformitÃ© Social History Section (IHE-PCC)"
* id MS
* id ^short = "Identifiant de la section"
* id ^definition = "Identifiant de la section"
* code MS
* code 1..1
* code ^short = "Code de la section"
* code ^definition = "Code de la section"
* code.code 1..1 MS
* code.code = #29762-2
* code.displayName 1..1 MS
* code.displayName = "Habitus, Mode de vie"
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
* entry.observation only FRCDAHabitusModeDeVie
* entry ^short = "EntrÃ©e Habitus, Mode de vie"
