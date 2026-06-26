Profile: FRCDADICOMCadresReferences
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Observation
Id: fr-cda-dicom-cadres-references
Title: "CDA - FR DICOM Cadres de références"
Description: "Entrée FR-DICOM-Cadres-references: DICOM Part 20 - Une observation d’images référencées contient une liste de valeurs de type entiers pour les images référencées d’une instance SOP d’images."
* classCode = #ROIBND
* moodCode from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-hl7-v3-xActMoodDocumentObservation (required)
* templateId ^slicing.discriminator.type = #value
* templateId ^slicing.discriminator.path = "root"
* templateId ^slicing.rules = #open
* templateId contains frDicomCadresReferences 1..1
* templateId[frDicomCadresReferences] ^short = "FR-DICOM-Cadres-references"
* templateId[frDicomCadresReferences] ^definition = "Identification du modèle de contenu pour FR-DICOM-Cadres-references"
* templateId[frDicomCadresReferences].root = "1.2.250.1.213.1.1.3.164"

* code MS
* code ^short = "Code de l'entrée"
* code ^definition = "Code de l'entrée"
* code.code = #121190
* code.displayName = "cadres référencés"
* code.codeSystem = "1.2.840.10008.2.16.4"
* code.codeSystemName = "DCM"
* code.code 1..1 MS
* code.displayName MS
* code.codeSystem 1..1 MS

* entryRelationship MS
* entryRelationship.observation only FRCDADICOMCadresAAfficher
* entryRelationship.typeCode = #COMP
* entryRelationship ^short = "Cadres à afficher pour les images référencées"
* entryRelationship ^definition = "Cadres à afficher pour les images référencées"
