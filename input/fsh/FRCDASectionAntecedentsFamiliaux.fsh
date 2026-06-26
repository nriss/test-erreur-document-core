Profile: FRCDASectionAntecedentsFamiliaux
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Section
Id: fr-cda-section-antecedents-familiaux
Title: "CDA - FR Antecedents familiaux"
Description: "IHE-PCC Coded-Family-Medical-History
 - Liste codée des antécédents familiaux"
* templateId 1..4
* templateId ^slicing.discriminator.type = #value
* templateId ^slicing.discriminator.path = "root"
* templateId ^slicing.rules = #open
* templateId contains iheCodedFamilyMedicalHistory 1..1
and iheFamilyMedicalHistorySection 1..1
and ccdFamilyHistorySection 1..1
and frSectionAntecedentsFamiliaux 1..1
* templateId[iheFamilyMedicalHistorySection].root = "1.3.6.1.4.1.19376.1.5.3.1.3.14"
* templateId[iheFamilyMedicalHistorySection] ^short = "Déclaration de conformité de la section aux spécifications IHE PCC"
* templateId[iheCodedFamilyMedicalHistory].root = "1.3.6.1.4.1.19376.1.5.3.1.3.15"
* templateId[iheCodedFamilyMedicalHistory] ^short = "Déclaration de conformité de la section aux spécifications IHE PCC"
* templateId[ccdFamilyHistorySection].root = "2.16.840.1.113883.10.20.1.4"
* templateId[ccdFamilyHistorySection] ^short = "Déclaration de conformité de la section aux spécifications C-CDA"
* templateId[frSectionAntecedentsFamiliaux].root = "1.2.250.1.213.1.1.2.139"
* templateId[frSectionAntecedentsFamiliaux] ^short = "Déclaration de conformité de la section aux spécifications CI-SIS"
* id MS
* id ^short = "Identifiant de la section"
* id ^definition = "Identifiant de la section"
* code MS
* code 1..1
* code ^short = "Code de la section"
* code ^definition = "Code de la section"
* code.code 1..1
* code.code = #10157-6
* code.displayName 1..1 
* code.displayName = "Historique des pathologies familiales"
* code.codeSystem 1..1
* code.codeSystem = "2.16.840.1.113883.6.1"
* code.codeSystemName = "LOINC"
* title MS
* title ^short = "Titre de la section"
* title ^definition = "Titre de la section"
* text 1..1 MS
* text ^short = "Bloc narratif"
* text ^definition = "Bloc narratif"
* entry MS
* entry 1..*
* entry.organizer only FRCDAAntecedentsFamiliaux
* entry ^short = "Entrée Antécédents familiaux"