Profile: FRCDADICOMObjectifsDeReference
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Observation
Id: fr-cda-dicom-objectifs-de-reference
Title: "CDA - FR DICOM Objectifs de référence"
Description: "Entrée FR-DICOM-Objectifs-de-reference: DICOM Part 20. Cette entrée permet d’enregistrer les objectifs de référence d’imagerie."

* classCode MS
* classCode = #OBS
* classCode ^short = "Fixé à OBS"

* moodCode MS
* moodCode from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-hl7-v3-xActMoodDocumentObservation (required)

* templateId 1..1
* templateId ^slicing.discriminator.type = #value
* templateId ^slicing.discriminator.path = "root"
* templateId ^slicing.rules = #open
* templateId contains frDicomObjectifsDeReference 1..1

* templateId[frDicomObjectifsDeReference] 1..1
* templateId[frDicomObjectifsDeReference].root = "1.2.250.1.213.1.1.3.163"
* templateId[frDicomObjectifsDeReference] ^short = "Conformité FR-DICOM-Objectifs-de-reference (CI-SIS)"
* templateId[frDicomObjectifsDeReference] ^definition = "Conformité FR-DICOM-Objectifs-de-reference (CI-SIS)"

* code MS
* code 1..1
* code ^short = "Code de l'entrée"
* code ^definition = "Code de l'entrée"
* code.code = #ASSERTION
* code.displayName = "Assertion"
* code.codeSystem = "2.16.840.1.113883.5.4"
* code.codeSystemName = "actCode"
* code.code 1..1 MS
* code.displayName MS
* code.codeSystem 1..1 MS

* value MS
* value 1..1
* value ^short = "Valeur de l'entrée"
* value ^definition = "Valeur de l'entrée"
* value from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-imagerie-objectif-reference-cisis (required)
