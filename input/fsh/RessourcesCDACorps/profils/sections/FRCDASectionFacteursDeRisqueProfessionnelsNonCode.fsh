Profile: FRCDASectionFacteursDeRisqueProfessionnelsNonCode
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Section
Id: fr-cda-facteurs-de-risque-professionnels-non-code
Title: "CDA - FR Facteurs de risque professionnels non code"
Description: "IHE-PCC - Hazardous-Working-Conditions-SectionFacteurs de risques professionnels sous forme narrative (section non codÃ©e)."
* templateId 1..2
* templateId ^slicing.discriminator.type = #value
* templateId ^slicing.discriminator.path = "root"
* templateId ^slicing.rules = #open
* templateId contains iheSectionHazardousWorkingConditions 1..1
and frSectionFacteursDeRisqueProfessionnelsNonCode 0..1
* templateId[iheSectionHazardousWorkingConditions].root = "1.3.6.1.4.1.19376.1.5.3.1.1.5.3.1"
* templateId[iheSectionHazardousWorkingConditions] ^short = "ConformitÃ© IHE-PCC Hazardous-Working-Conditions-Section (IHE-PCC)"
* templateId[frSectionFacteursDeRisqueProfessionnelsNonCode].root = "1.2.250.1.213.1.1.2.74"
* templateId[frSectionFacteursDeRisqueProfessionnelsNonCode] ^short = "ConformitÃ© FR-Facteurs-de-risque-professionnels-non-code (CI-SIS)"
* id 1..1 MS
* id ^short = "Identifiant de la section"
* id ^definition = "Identifiant de la section"
* code MS
* code 1..1
* code ^short = "Code de la section"
* code ^definition = "Code de la section"
* code.code 1..1 MS
* code.code = #10161-8
* code.displayName 1..1 MS
* code.displayName = "Facteurs de risques professionnels"
* code.codeSystem 1..1 MS
* code.codeSystem = "2.16.840.1.113883.6.1"
* code.codeSystemName = "LOINC"
* title MS
* title ^short = "Titre de la section"
* title ^definition = "Titre de la section"
* text 1..1 MS
* text ^short = "Bloc narratif"
* text ^definition = "Bloc narratif"
