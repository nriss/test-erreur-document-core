Profile: FRCDASectionDICOMComplications
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Section
Id: fr-cda-dicom-complications
Title: "CDA - FR DICOM Complications"
Description: "DICOM Part 20 - Complications
 - Cette sous-section permet d'enregistrer les complications survenues au cours de l'acte sous forme textuelle."
* templateId 1..2
* templateId ^slicing.discriminator.type = #value
* templateId ^slicing.discriminator.path = "root"
* templateId ^slicing.rules = #open
* templateId contains frSectionDicomComplications 1..1
and dicomComplications 1..1
* templateId[frSectionDicomComplications].root = "1.2.250.1.213.1.1.2.214"
* templateId[frSectionDicomComplications] ^short = "Conformité FR-DICOM-Complications (CI-SIS)"
* templateId[dicomComplications].root = "2.16.840.1.113883.10.20.22.2.37"
* templateId[dicomComplications] ^short = "Conformité Complications (DICOM Part 20)"
* id 1..1 MS
* id ^short = "Identifiant de la section"
* id ^definition = "Identifiant de la section"
* code MS
* code 1..1
* code ^short = "Code de la section"
* code ^definition = "Code de la section"
* code.code 1..1
* code.code = #55109-3
* code.displayName 1..1
* code.displayName = "Complications"
* code.codeSystem 1..1
* code.codeSystem = "2.16.840.1.113883.6.1"
* code.codeSystemName = "LOINC"
* title 1..1
* title ^short = "Titre de la section"
* title ^definition = "Titre de la section"
* text 1..1 MS
* text ^short = "Bloc narratif"
* text ^definition = "Bloc narratif"