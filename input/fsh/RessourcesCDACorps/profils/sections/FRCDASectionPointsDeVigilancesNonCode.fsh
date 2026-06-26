Profile: FRCDASectionPointsDeVigilancesNonCode
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Section
Id: fr-cda-points-de-vigilances-non-code
Title: "CDA - FR Points de vigilances non code"
Description: "Section FR-Points-de-vigilances-non-code. Points de vigilance sous forme narrative (section non codée)."
* templateId 1..1
* templateId ^slicing.discriminator.type = #value
* templateId ^slicing.discriminator.path = "root"
* templateId ^slicing.rules = #open
* templateId contains frSectionPointsDeVigilancesNonCode 1..1
* templateId[frSectionPointsDeVigilancesNonCode].root = "1.2.250.1.213.1.1.2.245"
* templateId[frSectionPointsDeVigilancesNonCode] ^short = "Déclaration de conformité de la section aux spécifications (CI-SIS)"
* id 1..1 MS
* id ^short = "Identifiant de la section"
* id ^definition = "Identifiant de la section"
* code MS
* code 1..1
* code ^short = "Code de la section"
* code ^definition = "Code de la section"
* code.code 1..1 MS
* code.code = #44944-7
* code.displayName 1..1 MS
* code.displayName = "Autres alertes"
* code.codeSystem 1..1 MS
* code.codeSystem = "2.16.840.1.113883.6.1"
* code.codeSystemName = "LOINC"
* title 1..1 MS
* title ^short = "Titre de la section"
* title ^definition = "Titre de la section"
* text 1..1 MS
* text ^short = "Bloc narratif"
* text ^definition = "Bloc narratif"
