Profile: FRCDADICOMExamenImagerie
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Act
Id: fr-cda-dicom-examen-imagerie
Title: "CDA - FR DICOM Examen imagerie"
Description: "Entrée FR-DICOM-Examen-imagerie: DICOM Part 20 - Study Act. Cette entrée contient les informations DICOM d’un examen d’imagerie réalisé sur un patient. L’examen est composé d'une ou de plusieurs séries d’images médicales."
* classCode MS
* moodCode MS
* id 1..* MS
* id ^short = "Identifiant de l'entrée"
* id ^definition = "Identifiant de l'entrée"
* templateId 1..2
* templateId ^slicing.discriminator.type = #value
* templateId ^slicing.discriminator.path = "root"
* templateId ^slicing.rules = #open
* templateId contains frDicomExamenImagerie 1..1
and FRCDADICOMExamenimagerie 1..1
* templateId[frDicomExamenImagerie].root 1..1
* templateId[frDicomExamenImagerie].root = "1.2.250.1.213.1.1.3.155"
* templateId[frDicomExamenImagerie] ^short = "Conformité FR-DICOM-Examen-imagerie (CI-SIS)"
* templateId[frDicomExamenImagerie] ^definition = "Conformité FR-DICOM-Examen-imagerie (CI-SIS)"
* templateId[FRCDADICOMExamenimagerie].root 1..1
* templateId[FRCDADICOMExamenimagerie].root = "1.2.840.10008.9.16"
* templateId[FRCDADICOMExamenimagerie] ^short = "Conformité Study Act (DICOM Part 20)"
* templateId[FRCDADICOMExamenimagerie] ^definition = "Conformité Study Act (DICOM Part 20)"
* code MS
* code ^short = "Code de l'acte"
* code ^definition = "Code de l'acte"
* code.code = #113014
* code.codeSystem = "1.2.840.10008.2.16.4"
* code.codeSystemName = "DCM"
* code.displayName = "Examen"
* code.code 1..1 MS
* code.displayName MS
* code.codeSystem 1..1 MS
* text MS
* text ^short = "Partie narrative de l'entrée"
* text ^definition = "Partie narrative de l'entrée"
* effectiveTime MS
* effectiveTime ^short = "Date de l'acte"
* effectiveTime ^definition = "Date de l'acte"
* entryRelationship MS
* entryRelationship.act only FRCDADICOMSerieImagerie
* entryRelationship.typeCode = #COMP
* entryRelationship ^short = "Série d'images médicales de l'examen d'imagerie"
* entryRelationship ^definition = "Série d'images médicales de l'examen d'imagerie"
