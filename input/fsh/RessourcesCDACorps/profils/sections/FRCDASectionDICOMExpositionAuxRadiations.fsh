Profile: FRCDASectionDICOMExpositionAuxRadiations
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Section
Id: fr-cda-dicom-exposition-aux-radiations
Title: "CDA - FR DICOM Exposition aux radiations"
Description: "DICOM Part 20 - Radiation Exposure and Protection Information 
 - Cette sous-section permet d'enregistrer les informations relatives à l’exposition du patient aux rayonnements et les informations de radioprotection."
* templateId 1..2
* templateId ^slicing.discriminator.type = #value
* templateId ^slicing.discriminator.path = "root"
* templateId ^slicing.rules = #open
* templateId contains frSectionDicomExpositionAuxRadiations 1..1
and dicomRadiationExposureAndProtectionInformation 1..1
* templateId[frSectionDicomExpositionAuxRadiations].root = "1.2.250.1.213.1.1.2.215"
* templateId[frSectionDicomExpositionAuxRadiations] ^short = "Conformité FR-DICOM-Exposition-aux-radiations (CI-SIS)"
* templateId[dicomRadiationExposureAndProtectionInformation].root = "1.2.840.10008.9.8"
* templateId[dicomRadiationExposureAndProtectionInformation] ^short = "Conformité Radiation Exposure and Protection Information (DICOM Part 20)"
* id 1..1 MS
* id ^short = "Identifiant de la section"
* id ^definition = "Identifiant de la section"
* code MS
* code 1..1
* code ^short = "Code de la section"
* code ^definition = "Code de la section"
* code.code 1..1
* code.code = #73569-6
* code.displayName 1..1
* code.displayName = "Exposition aux rayonnements et informations de radioprotection"
* code.codeSystem = "2.16.840.1.113883.6.1"
* code.codeSystem 1..1
* code.codeSystemName = "LOINC"
* title 1..1
* title ^short = "Titre de la section"
* title ^definition = "Titre de la section"
* text 1..1 MS
* text ^short = "Bloc narratif"
* text ^definition = "Bloc narratif"
* entry 1..* MS
* entry ^slicing.discriminator.type = #type
* entry ^slicing.discriminator.path = "$this"
* entry ^slicing.rules = #open
* entry contains
frDicomSOPInstanceObservation 0..* and
frDicomExpositionPatient 1..1 and
frDicomObservationIndication 0..1 and
frDicomObservationGrossesse 1..1 and
frDicomQuantite 0..* and
frDicomAdministrationRadiopharmaceutique 0..1 
* entry[frDicomSOPInstanceObservation].observation only FRCDADICOMSOPInstanceObservation
* entry[frDicomSOPInstanceObservation].observation ^short = "Entrée SOP instance Observation"
* entry[frDicomExpositionPatient].procedure only FRCDADICOMExpositionPatient
* entry[frDicomExpositionPatient].procedure ^short = "Entrée Exposition aux rayonnements ionisants"
* entry[frDicomObservationGrossesse].observation only FRCDADICOMObservation
* entry[frDicomObservationGrossesse].observation ^short = "Entrée Observation Grossesse"
* entry[frDicomObservationIndication].observation only FRCDADICOMObservation
* entry[frDicomObservationIndication].observation ^short = "Entrée Observation Indication"
* entry[frDicomQuantite].observation only FRCDADICOMQuantite
* entry[frDicomQuantite].observation ^short = "Entrée Quantité"
* entry[frDicomAdministrationRadiopharmaceutique].substanceAdministration only FRCDADICOMAdministrationRadiopharmaceutique
* entry[frDicomAdministrationRadiopharmaceutique].substanceAdministration ^short = "Entrée Administration des produits radiopharmaceutiques"