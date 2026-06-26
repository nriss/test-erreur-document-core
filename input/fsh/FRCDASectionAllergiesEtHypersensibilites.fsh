Profile: FRCDASectionAllergiesEtHypersensibilites
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Section
Id: fr-cda-allergies-et-hypersensibilites
Title: "CDA - FR Allergies et hypersensibilites"
Description: "IHE-PCC - Allergies-And-Other-Adverse-Reactions 
 - La section 'Allergies et hypersensibilités' permet de décrire la liste codée des allergies et hypersensibilités (médicaments, environnements, aliments,..) précisant notamment l'agent et les réactions observées."
* templateId 1..3
* templateId ^slicing.discriminator.type = #value
* templateId ^slicing.discriminator.path = "root"
* templateId ^slicing.rules = #open
* templateId contains iheAllergiesAndOtherAdverseReactionsSection 1..1
and ccdAlertsSection 1..1
and frSectionAllergiesEtHypersensibilites 1..1
* templateId[iheAllergiesAndOtherAdverseReactionsSection].root = "1.3.6.1.4.1.19376.1.5.3.1.3.13"
* templateId[iheAllergiesAndOtherAdverseReactionsSection] ^short = "Déclaration de conformité de la section aux spécifications IHE PCC"
* templateId[ccdAlertsSection].root = "2.16.840.1.113883.10.20.1.2"
* templateId[ccdAlertsSection] ^short = "Déclaration de conformité de la section aux spécifications C-CDA"
* templateId[frSectionAllergiesEtHypersensibilites].root = "1.2.250.1.213.1.1.2.137"
* templateId[frSectionAllergiesEtHypersensibilites] ^short = "Déclaration de conformité de la section aux spécifications CI-SIS"
* id MS
* id ^short = "Identifiant de la section"
* id ^definition = "Identifiant de la section"
* code MS
* code 1..1
* code ^short = "Code de la section"
* code ^definition = "Code de la section"
* code.code 1..1
* code.code = #48765-2
* code.displayName 1..1
* code.displayName = "Allergies et hypersensibilités"
* code.codeSystem 1..1
* code.codeSystem = "2.16.840.1.113883.6.1"
* code.codeSystemName = "LOINC"
* title 1..1
* title ^short = "Titre de la sectionFixé à 'Allergies et hypersensibilités'"
* title ^definition = "Titre de la section"
* text 1..1 MS
* text ^short = "Bloc narratif"
* text ^definition = "Bloc narratif"
* entry MS
* entry 1..*
* entry.act only FRCDAListeDesAllergiesEtHypersensibilites
* entry ^short = "Entrée Liste des allergies et hypersensibilités"