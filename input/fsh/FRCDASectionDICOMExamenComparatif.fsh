Profile: FRCDASectionDICOMExamenComparatif
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Section
Id: fr-cda-dicom-examen-comparatif
Title: "CDA - FR DICOM Examen comparatif"
Description: "DICOM Part 20 - Comparison Study Section
 - Cette section textuelle permet d'enregistrer une comparaison de l'acte actuel avec un acte antérieur."
* templateId 1..2
* templateId ^slicing.discriminator.type = #value
* templateId ^slicing.discriminator.path = "root"
* templateId ^slicing.rules = #open
* templateId contains frSectionDicomExamenComparatif 1..1
and dicomComparisonStudySection 1..1
* templateId[frSectionDicomExamenComparatif].root = "1.2.250.1.213.1.1.2.207"
* templateId[frSectionDicomExamenComparatif] ^short = "Conformité FR-DICOM-Examen-comparatif (CI-SIS)"
* templateId[dicomComparisonStudySection].root = "1.2.840.10008.9.4"
* templateId[dicomComparisonStudySection] ^short = "Conformité Comparison Study (DICOM Part 20)"
* id 1..1 MS
* id ^short = "Identifiant de la section"
* id ^definition = "Identifiant de la section"
* code MS
* code 1..1
* code ^short = "Code de la section"
* code ^definition = "Code de la section"
* code.code 1..1
* code.code = #18834-2
* code.displayName 1..1
* code.displayName = "Examen de comparaison radiologique"
* code.codeSystem 1..1
* code.codeSystem = "2.16.840.1.113883.6.1"
* code.codeSystemName = "LOINC"
* title 1..1
* title ^short = "Titre de la section"
* title ^definition = "Titre de la section"
* text 1..1 MS
* text ^short = "Bloc narratif"
* text ^definition = "Bloc narratif"