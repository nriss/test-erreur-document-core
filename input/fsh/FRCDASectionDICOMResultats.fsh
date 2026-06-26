Profile: FRCDASectionDICOMResultats
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Section
Id: fr-cda-dicom-resultats
Title: "CDA - FR DICOM Resultats"
Description: "DICOM Part 20 - Findings
 - Cette section permet d'enregistrer, sous forme textuelle, les observations cliniquement significatives confirmées ou découvertes au cours de l’intervention d’imagerie (description des résultats)."
* templateId 1..2
* templateId ^slicing.discriminator.type = #value
* templateId ^slicing.discriminator.path = "root"
* templateId ^slicing.rules = #open
* templateId contains frSectionDicomResultats 1..1
and dicomFindings 1..1
* templateId[frSectionDicomResultats].root = "1.2.250.1.213.1.1.2.208"
* templateId[frSectionDicomResultats] ^short = "Conformité FR-DICOM-Resultats (CI-SIS)"
* templateId[dicomFindings].root = "2.16.840.1.113883.10.20.6.1.2"
* templateId[dicomFindings] ^short = "Conformité Findings (DICOM Part 20)"
* id 1..1 MS
* id ^short = "Identifiant de la section"
* id ^definition = "Identifiant de la section"
* code MS
* code 1..1
* code ^short = "Code de la section"
* code ^definition = "Code de la section"
* code.code 1..1
* code.code = #59776-5
* code.displayName 1..1
* code.displayName = "Résultats de l'acte"
* code.codeSystem 1..1
* code.codeSystem = "2.16.840.1.113883.6.1"
* code.codeSystemName = "LOINC"
* title 1..1 MS
* title ^short = "Titre de la section"
* title ^definition = "Titre de la section"
* text 1..1 MS
* text ^short = "Bloc narratif"
* text ^definition = "Bloc narratif"