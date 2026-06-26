Profile: FRCDADICOMCadresAAfficher
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Observation
Id: fr-cda-dicom-cadres-a-afficher
Title: "CDA - FR DICOM Cadres à afficher"
Description: "Entrée FR-DICOM-Cadres-a-afficher: DICOM Part 20 - Cadres à afficher pour les images référencées"

* classCode = #OBS
* moodCode = #EVN

* templateId ^slicing.discriminator.type = #value
* templateId ^slicing.discriminator.path = "root"
* templateId ^slicing.rules = #open

* templateId contains frDicomCadresAfficher 1..1
* templateId[frDicomCadresAfficher] ^short = "FR-DICOM-Cadres-a-afficher"
* templateId[frDicomCadresAfficher] ^definition = "Identification du modèle de contenu pour FR-DICOM-Cadres-a-afficher"
* templateId[frDicomCadresAfficher].root = "1.2.250.1.213.1.1.3.166"

* code MS
* code ^short = "Code de l'observation"
* code ^definition = "Code de l'observation"
* code.code = #113036
* code.displayName = "Cadres à afficher"
* code.codeSystem = "1.2.840.10008.2.16.4"
* code.codeSystemName = "DCM"
* code.code 1..1 MS
* code.displayName MS
* code.codeSystem 1..1 MS

* value MS
* value 1..1
// ce type de donnée IVL_INT a été ajouté dans la nouvelle version de l'IG Clinical Document architecture HL7.
//* value only IVL_INT
* value ^short = "Cadres référencés"
* value ^definition = "Plage d'entiers représentant les cadres à afficher"
