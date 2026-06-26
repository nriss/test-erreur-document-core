Profile: FRCDADICOMExpositionPatient
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Procedure
Id: fr-cda-dicom-exposition-patient
Title: "CDA - FR DICOM Exposition patient"
Description: "Entrée FR-DICOM-Exposition-patient: DICOM Part 20 - inclue dans l'entrée FR-DICOM-Exposition-aux-radiations. Cette entrée permet d’enregistrer l'identité du professionnel de santé ayant donné l'autorisation de l'exposition du patient aux rayonnements.Elle est obligatoire dans la norme DICOM Part 20."
* classCode MS
* moodCode MS
* moodCode = #EVN

* templateId 1..1
* templateId ^slicing.discriminator.type = #value
* templateId ^slicing.discriminator.path = "root"
* templateId ^slicing.rules = #open
* templateId contains frDicomExpositionPatient 1..1

* templateId[frDicomExpositionPatient].root 1..1
* templateId[frDicomExpositionPatient].root = "1.2.250.1.213.1.1.3.165"
* templateId[frDicomExpositionPatient] ^short = "FR-DICOM-Exposition-patient (CI-SIS)"
* templateId[frDicomExpositionPatient] ^definition = "FR-DICOM-Exposition-patient (CI-SIS)"

* code MS
* code 1..1
* code ^short = "Code de l'entrée"
* code ^definition = "Code de l'entrée"
* code.code = #121290
* code.codeSystem = "1.2.840.10008.2.16.4"
* code.codeSystemName = "DCM"
* code.displayName = "Exposition du patient aux rayonnements ionisants"
* code.code 1..1 MS
* code.displayName MS
* code.codeSystem 1..1 MS

* participant 1..1
* participant ^short = "Participant"
* participant ^definition = "Participant"
* participant only FRCDAParticipantCorps