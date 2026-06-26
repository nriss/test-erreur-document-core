Profile: FRCDASectionResultatsExamensNonCode
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Section
Id: fr-cda-resultats-examens-non-code
Title: "CDA - FR Resultats examens non code"
Description: "IHE-PCC - Results. Résultats d’examens sous forme narrative non codée."
* templateId 1..2
* templateId ^slicing.discriminator.type = #value
* templateId ^slicing.discriminator.path = "root"
* templateId ^slicing.rules = #open
* templateId contains iheSectionResults 1..1
and frSectionResultatsExamensNonCode 1..1
* templateId[iheSectionResults].root = "1.3.6.1.4.1.19376.1.5.3.1.3.27"
* templateId[iheSectionResults] ^short = "Déclaration de conformité de la section aux spécifications (IHE-PCC)"
* templateId[frSectionResultatsExamensNonCode].root = "1.2.250.1.213.1.1.2.150"
* templateId[frSectionResultatsExamensNonCode] ^short = "Déclaration de conformité de la section aux spécifications (CI-SIS)"
* id MS
* id ^short = "Identifiant de la section"
* id ^definition = "Identifiant de la section"
* code MS
* code 1..1
* code ^short = "Code de la section"
* code ^definition = "Code de la section"
* code.code 1..1 MS
* code.code = #30954-2
* code.displayName 1..1 MS
* code.displayName = "Résultats d'examens"
* code.codeSystem 1..1 MS
* code.codeSystem = "2.16.840.1.113883.6.1"
* code.codeSystemName = "LOINC"
* title MS
* title ^short = "Titre de la section"
* title ^definition = "Titre de la section"
* text 1..1 MS
* text ^short = "Bloc narratif"
* text ^definition = "Bloc narratif"
