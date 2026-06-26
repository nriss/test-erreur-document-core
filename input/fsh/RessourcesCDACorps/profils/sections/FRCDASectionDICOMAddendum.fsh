Profile: FRCDASectionDICOMAddendum
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Section
Id: fr-cda-dicom-addendum
Title: "CDA - FR DICOM Addendum"
Description: "DICOM Part 20 - Addendum Section
 - La section Addendum permet d'enregistrer, dans une nouvelle version du compte-rendu, des informations correctives ou complémentaires par rapport au compte-rendu initial."
* templateId 1..2
* templateId ^slicing.discriminator.type = #value
* templateId ^slicing.discriminator.path = "root"
* templateId ^slicing.rules = #open
* templateId contains frSectionDicomAddendum 1..1
and dicomAddendumSection 1..1
* templateId[frSectionDicomAddendum].root = "1.2.250.1.213.1.1.2.210"
* templateId[frSectionDicomAddendum] ^short = "Conformité FR-DICOM-Addendum (CI-SIS)"
* templateId[dicomAddendumSection].root = "1.2.840.10008.9.6"
* templateId[dicomAddendumSection] ^short = "Conformité Addendum (DICOM Part 20)"
* id 1..1 MS
* id ^short = "Identifiant de la section"
* id ^definition = "Identifiant de la section"
* code MS
* code 1..1
* code ^short = "Code de la section"
* code ^definition = "Code de la section"
* code.code 1..1
* code.code = #55107-7
* code.displayName 1..1
* code.displayName = "Addendum"
* code.codeSystem 1..1
* code.codeSystem = "2.16.840.1.113883.6.1"
* code.codeSystemName = "LOINC"
* title 1..1 MS
* title ^short = "Titre de la section"
* title ^definition = "Titre de la section"
* text 1..1 MS
* text ^short = "Bloc narratif"
* text ^definition = "Bloc narratif"
* author 1..1 MS
* author ^short = "Auteur de la section"
* author ^definition = "Auteur de la section"
* author only FRCDAAuthor