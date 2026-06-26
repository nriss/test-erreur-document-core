Profile: FRCDADICOMSOPInstanceObservation
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Observation
Id: fr-cda-dicom-sop-instance-observation
Title: "CDA - FR DICOM SOP instance observation"
Description: "Entrée FR-DICOM-SOP-instance-observation: DICOM Part 20 - SOP Instance Observation. Cette entrée permet d'enregistrer l’url permettant d’accéder aux images sur la Drim box source."
* classCode MS
* classCode = #DGIMG
* moodCode MS
* moodCode = #EVN
* id 1..* MS
* id ^short = "Identifiant de l'entrée"
* id ^definition = "Identifiant de l'entrée"
* templateId 1..2
* templateId ^slicing.discriminator.type = #value
* templateId ^slicing.discriminator.path = "root"
* templateId ^slicing.rules = #open
* templateId contains frDicomSOPInstanceObservation 1..1
and dicomSOPInstanceObservation 1..1
* templateId[frDicomSOPInstanceObservation].root 1..1
* templateId[frDicomSOPInstanceObservation].root = "1.2.250.1.213.1.1.3.157"
* templateId[frDicomSOPInstanceObservation] ^short = "Conformité FR-DICOM-SOP-instrance-observation (CI-SIS) "
* templateId[frDicomSOPInstanceObservation] ^definition = "Conformité FR-DICOM-SOP-instrance-observation (CI-SIS)"
* templateId[dicomSOPInstanceObservation].root 1..1
* templateId[dicomSOPInstanceObservation].root = "1.2.840.10008.9.18"
* templateId[dicomSOPInstanceObservation] ^short = "Conformité SOP Instance Observation (DICOM Part 20) "
* templateId[dicomSOPInstanceObservation] ^definition = "Conformité SOP Instance Observation (DICOM Part 20)"
* code MS
* code ^short = "Classe SOP - valeur issue du JDV-SOPClass_CISIS (1.2.250.1.213.1.1.5.689)."
* code ^definition = "Classe SOP"
* code from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-sop-class-cisis (required)
* code.code 1..1 MS
* code.displayName MS
* code.codeSystem 1..1 MS
* text MS
* text ^short = " url permettant d’accéder aux images sur la Drim box source. Cette url, basée sur le profil IHE Invoke Image Display , est construite de la manière suivante :https://<location>/IHEInvokeImageDisplay?requestType=STUDY&amp;studyUID=<StudyInstanceUID>&amp;Accessionnumber=<Accessionnumber>&amp;idCDA=<idCDA> avec les paramètres :<location> : Racine de l’URL par laquelle on accède au PACS qui met à disposition de l’examen (cf volet CI-SIS_SPEC_TECH_Objet ref d'examens d'imagerie)<StudyInstanceUID> : Identifiant de l’examen attribué par le RIS<Accessionnumber> : Identifiant de la demande attribué par le RIS (concaténer root.extension)<idCDA> : Identifiant du document CDA IMG-CR-IMG (élément <id root>)"
* text ^definition = "Url permettant d’accéder aux images sur la Drim box source"
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
frDicomSopInstanceObservationSubordonnee 0..*
 and frDicomObjectifsDeReference 0..1
 and frDicomCadresReferences 0..1
* entryRelationship[frDicomSopInstanceObservationSubordonnee].observation only FRCDADICOMSOPInstanceObservationSubordonnee
* entryRelationship[frDicomSopInstanceObservationSubordonnee] ^short = "Non utilisé dans le cadre Français"
* entryRelationship[frDicomSopInstanceObservationSubordonnee].typeCode = #SUBJ
* entryRelationship[frDicomObjectifsDeReference].observation only FRCDADICOMObjectifsDeReference
* entryRelationship[frDicomObjectifsDeReference] ^short = "Non utilisé dans le cadre Français"
* entryRelationship[frDicomCadresReferences].typeCode = #RSON
* entryRelationship[frDicomCadresReferences].observation only FRCDADICOMCadresReferences
* entryRelationship[frDicomCadresReferences] ^short = "Non utilisé dans le cadre Français"

