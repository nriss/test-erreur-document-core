Profile: FRCDASectionDICOMDemandeExamen
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Section
Id: fr-cda-dicom-demande-examen
Title: "CDA - FR DICOM Demande examen"
Description: "DICOM Part 20 - Request Section
- Justification de la demande d’examen / Finalité de l'examen."
* templateId 1..2
* templateId ^slicing.discriminator.type = #value
* templateId ^slicing.discriminator.path = "root"
* templateId ^slicing.rules = #open
* templateId contains frSectionDicomDemandeExamen 1..1
and dicomRequestSection 1..1
* templateId[frSectionDicomDemandeExamen].root = "1.2.250.1.213.1.1.2.211"
* templateId[frSectionDicomDemandeExamen] ^short = "Conformité FR-DICOM-Demande-examen (CI-SIS)"
* templateId[dicomRequestSection].root = "1.2.840.10008.9.7"
* templateId[dicomRequestSection] ^short = "Conformité Request (DICOM Part 20)"
* id 1..1 MS
* id ^short = "Identifiant de la section"
* id ^definition = "Identifiant de la section"
* code MS
* code 1..1
* code ^short = "Code de la section"
* code ^definition = "Code de la section"
* code.code 1..1
* code.code = #55115-0
* code.displayName 1..1
* code.displayName = "Demande"
* code.codeSystem 1..1
* code.codeSystem = "2.16.840.1.113883.6.1"
* code.codeSystemName = "LOINC"
* title MS
* title ^short = "Titre de la section"
* title ^definition = "Titre de la section"
* text 1..1 MS
* text ^short = "Bloc narratif"
* text ^definition = "Bloc narratif"