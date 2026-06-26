Profile: FRCDADICOMSerieImagerie
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Act
Id: fr-cda-dicom-serie-imagerie
Title: "CDA - FR DICOM Serie imagerie"
Description: "Entrée FR-DICOM-Serie-imagerie: DICOM Part 20 - Series Act. Cette entrée contient les informations de la série générique utilisée pour porter l’entrée FR-DICOM-SOP-instance-observation."
* classCode MS
* moodCode MS
* id 1..* MS
* id ^short = "Identifiant de l'entrée"
* id ^definition = "Identifiant de l'entrée"
* templateId 1..2
* templateId ^slicing.discriminator.type = #value
* templateId ^slicing.discriminator.path = "root"
* templateId ^slicing.rules = #open
* templateId contains frDicomSerieImagerie 1..1
and dicomSeriesAct 1..1
* templateId[frDicomSerieImagerie].root 1..1
* templateId[frDicomSerieImagerie].root = "1.2.250.1.213.1.1.3.156"
* templateId[frDicomSerieImagerie] ^short = "Conformité FR-DICOM-Serie-imagerie (CI-SIS)"
* templateId[frDicomSerieImagerie] ^definition = "Conformité FR-DICOM-Serie-imagerie (CI-SIS)"
* templateId[dicomSeriesAct].root 1..1
* templateId[dicomSeriesAct].root = "1.2.840.10008.9.17"
* templateId[dicomSeriesAct] ^short = "Conformité Series Act (DICOM Part 20)"
* templateId[dicomSeriesAct] ^definition = "Conformité Series Act (DICOM Part 20)"
* code MS
* code ^short = "Code de l'entrée"
* code ^definition = "Code de l'entrée"
  * code 1..1 MS
  * code = #113015
  * codeSystem 1..1 MS
  * codeSystem = "1.2.840.10008.2.16.4"
  * codeSystemName = "DCM"
  * displayName MS
  * displayName = "Séries"
  * qualifier 1..1 MS
    * name 1..1
    * name.code = #121139
    * name.codeSystem = "1.2.840.10008.2.16.4"
    * name.displayName = "Modalité"
    * value 1..1
    * value only CD
    * value ^short = "Modalité d’acquisition : Valeur issue du jdv-modalite-acquisition-cisis (1.2.250.1.213.1.1.5.618)"
    * value ^definition = "Modalité d’acquisition"
    * value.code from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-modalite-acquisition-cisis (required)
* text MS
* text ^short = "Partie narrative de l'entrée"
* text ^definition = "Partie narrative de l'entrée"
* effectiveTime MS
* effectiveTime ^short = "Date de la série d'actes"
* effectiveTime ^definition = "Date de la série d'actes"
* entryRelationship 1..1 MS
* entryRelationship.observation only FRCDADICOMSOPInstanceObservation
* entryRelationship.typeCode = #COMP
* entryRelationship ^short = "SOP Instance Observation de la série d'images médicales"
* entryRelationship ^definition = "SOP Instance Observation de la série d'images médicales"
