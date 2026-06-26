Profile: FRCDASectionDICOMHistoriqueMedical
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Section
Id: fr-cda-dicom-historique-medical
Title: "CDA - FR DICOM Historique medical"
Description: "DICOM Part 20 - Medical (General) History Section
 - Cette sous-section permet d'enregistrer les antécédents médicaux, les antécédents chirurgicaux et les contre-indications."
* templateId 1..2
* templateId ^slicing.discriminator.type = #value
* templateId ^slicing.discriminator.path = "root"
* templateId ^slicing.rules = #open
* templateId contains frSectionDicomHistoriqueMedical 1..1
and dicomMedicalHistorySection 1..1
* templateId[frSectionDicomHistoriqueMedical].root = "1.2.250.1.213.1.1.2.213"
* templateId[frSectionDicomHistoriqueMedical] ^short = "Conformité FR-DICOM-Historique-medical (CI-SIS)"
* templateId[dicomMedicalHistorySection].root = "2.16.840.1.113883.10.20.22.2.39"
* templateId[dicomMedicalHistorySection] ^short = "Conformité FR-DICOM-Historique-medical (CI-SIS)"
* id 1..1 MS
* id ^short = "Identifiant de la section"
* id ^definition = "Identifiant de la section"
* code MS
* code 1..1
* code ^short = "Code de la section"
* code ^definition = "Code de la section"
* code.code 1..1
* code.code = #11329-0
* code.displayName 1..1
* code.displayName = "Historique médical"
* code.codeSystem 1..1
* code.codeSystem = "2.16.840.1.113883.6.1"
* code.codeSystemName = "LOINC"
* title 1..1 MS
* title ^short = "Titre de la section"
* title ^definition = "Titre de la section"
* text 1..1 MS
* text ^short = "Bloc narratif"
* text ^definition = "Bloc narratif"
* entry MS
* entry 1..*
* entry.observation only FRCDADICOMObservation
* entry ^short = "Entrée DICOM Observation"