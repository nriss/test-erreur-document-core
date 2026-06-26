Profile: FRCDADICOMSOPInstanceObservationSubordonnee
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Observation
Id: fr-cda-dicom-sop-instance-observation-subordonnee
Title: "CDA - FR DICOM SOP instance observation subordonnee"
Description: "Entrée FR-DICOM-SOP-instance-observation-subordonnee: DICOM Part 20 - SOP Instance Observation. Cette entrée permet d'enregistrer l’url permettant d’accéder aux images sur la Drim box source."
* classCode MS
* classCode = #DGIMG
* moodCode MS
* moodCode from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-hl7-v3-xActMoodDocumentObservation
* id 1..* MS
* id ^short = "Identifiant de l'observation"
* id ^definition = "Identifiant de l'observation"
* templateId 1..2
* templateId ^slicing.discriminator.type = #value
* templateId ^slicing.discriminator.path = "root"
* templateId ^slicing.rules = #open
* templateId contains frDicomSopInstanceObservationSubordonnee 1..1
and dicomSOPInstanceObservation 1..1
* templateId[frDicomSopInstanceObservationSubordonnee].root 1..1
* templateId[frDicomSopInstanceObservationSubordonnee].root = "1.2.250.1.213.1.1.3.169"
* templateId[frDicomSopInstanceObservationSubordonnee] ^short = "Conformité FR-DICOM-SOP-instrance-observation-subordonnee (CI-SIS)"
* templateId[frDicomSopInstanceObservationSubordonnee] ^definition = "Conformité FR-DICOM-SOP-instrance-observation-subordonnee (CI-SIS)"
* templateId[dicomSOPInstanceObservation].root 1..1
* templateId[dicomSOPInstanceObservation].root = "1.2.840.10008.9.18"
* templateId[dicomSOPInstanceObservation] ^short = "Conformité SOP Instance Observation (DICOM Part 20)"
* templateId[dicomSOPInstanceObservation] ^definition = "Conformité SOP Instance Observation (DICOM Part 20)"
* code MS
* code ^short = "Classe SOP valeur issue du JDV-SOPClass_CISIS (1.2.250.1.213.1.1.5.689)."
* code ^definition = "Classe SOP"
* code from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-sop-class-cisis (required)
* code.code 1..1 MS
* code.displayName MS
* code.codeSystem 1..1 MS
* text MS
* text ^short = "Partie narrative de l'observation"
* text ^definition = "Partie narrative de l'observation"
  * mediaType 1..1
  * mediaType = #application/dicom
  * reference 1..1
  * reference ^short = "Référence WADO"
  * reference ^definition = "Référence WADO"
* effectiveTime MS
* effectiveTime ^short = "Date de l'observation"
* effectiveTime ^definition = "Date de l'observation"
* entryRelationship MS
* entryRelationship ^slicing.discriminator.type = #value
* entryRelationship ^slicing.discriminator.path = "$this"
* entryRelationship ^slicing.rules = #open
* entryRelationship contains
frDicomObjectifsDeReference 0..1
 and frDicomCadresReferences 0..1
* entryRelationship[frDicomObjectifsDeReference] ^short = "Entrée FR-DICOM-Objectifs-de-reference"
* entryRelationship[frDicomObjectifsDeReference].observation only FRCDADICOMObjectifsDeReference
* entryRelationship[frDicomObjectifsDeReference].typeCode = #RSON
* entryRelationship[frDicomObjectifsDeReference] ^short = "Non utilisé dans le cadre Français"

* entryRelationship[frDicomCadresReferences] ^short = "Entrée FR-DICOM-Cadres-references"
* entryRelationship[frDicomCadresReferences].observation only FRCDADICOMCadresReferences
* entryRelationship[frDicomCadresReferences].typeCode = #COMP
* entryRelationship[frDicomCadresReferences] ^short = "Non utilisé dans le cadre Français"

