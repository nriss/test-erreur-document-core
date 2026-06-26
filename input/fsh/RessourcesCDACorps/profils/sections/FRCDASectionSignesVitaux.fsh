Profile: FRCDASectionSignesVitaux
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Section
Id: fr-cda-section-signes-vitaux
Title: "CDA - FR Signes vitaux"
Description: "IHE-PCC - Coded Vital Signs. Section Liste codée des résultats mesurés des signes vitaux."
* templateId 1..4
* templateId ^slicing.discriminator.type = #value
* templateId ^slicing.discriminator.path = "root"
* templateId ^slicing.rules = #open
* templateId contains ccdSectionCodedVitalSigns 1..1
and iheSectionVitalSigns 1..1
and iheSectionCodedVitalSigns 1..1
and frSectionSignesVitaux 1..1
* templateId[ccdSectionCodedVitalSigns].root = "2.16.840.1.113883.10.20.1.16"
* templateId[ccdSectionCodedVitalSigns] ^short = "Déclaration de conformité de la section au parent CCD"
* templateId[iheSectionVitalSigns].root = "1.3.6.1.4.1.19376.1.5.3.1.1.5.3.2"
* templateId[iheSectionVitalSigns] ^short = "Déclaration de conformité de la section aux spécifications IHE PCC"
* templateId[iheSectionCodedVitalSigns].root = "1.3.6.1.4.1.19376.1.5.3.1.3.25"
* templateId[iheSectionCodedVitalSigns] ^short = "Déclaration de conformité de la section au parent IHE PCC \"Vital Signs Section (narrative)\""
* templateId[frSectionSignesVitaux].root = "1.2.250.1.213.1.1.2.75"
* templateId[frSectionSignesVitaux] ^short = "Déclaration de conformité de la section aux spécifications (CI-SIS)"
* id MS
* id ^short = "Identifiant de la section"
* id ^definition = "Identifiant de la section"
* code MS
* code 1..1
* code ^short = "Code de la section"
* code ^definition = "Code de la section"
* code.code 1..1 MS
* code.code = #8716-3
* code.displayName 1..1 MS
* code.displayName = "Signes vitaux"
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
* entry.organizer only FRCDASignesVitaux
* entry ^short = "Entrée Signes vitaux"
