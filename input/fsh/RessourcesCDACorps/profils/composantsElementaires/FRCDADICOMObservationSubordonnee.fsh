Profile: FRCDADICOMObservationSubordonnee
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Observation
Id: fr-cda-dicom-observation-subordonnee
Title: "CDA - FR DICOM Observation subordonnee"
Description: "Entrée FR-DICOM-Observation-subordonnee: DICOM PART 20 - Observation codée"
* classCode MS
* classCode = #OBS
* moodCode MS
* id 1..1 MS
* id ^short = "Identifiant de l'entrée"
* id ^definition = "Identifiant de l'entrée"
* templateId 1..2
* templateId ^slicing.discriminator.type = #value
* templateId ^slicing.discriminator.path = "root"
* templateId ^slicing.rules = #open
* templateId contains dicomCodedObservation 1..1
and frDicomObservationSubordonnee 1..1
* templateId[dicomCodedObservation].root 1..1
* templateId[dicomCodedObservation].root = "2.16.840.1.113883.10.20.6.2.13"
* templateId[dicomCodedObservation] ^short = "Conformité Coded Observation (DICOM Part 20)"
* templateId[dicomCodedObservation] ^definition = "Conformité Coded Observation (DICOM Part 20)"
* templateId[frDicomObservationSubordonnee].root 1..1
* templateId[frDicomObservationSubordonnee].root = "1.2.250.1.213.1.1.3.167"
* templateId[frDicomObservationSubordonnee] ^short = "Conformité FR-DICOM-Observation-subordonnee (CI-SIS)"
* templateId[frDicomObservationSubordonnee] ^definition = "Conformité FR-DICOM-Observation-subordonnee (CI-SIS)"
* code MS
* code ^short = "Code de l'observation"
* code ^definition = "Code de l'observation"
* code.code 1..1 MS
* code.displayName MS
* code.codeSystem 1..1 MS
* text MS
* text ^short = "Partie narrative de l'observation"
* text ^definition = "Partie narrative de l'observation"
* text.reference 1..1 MS
* statusCode MS
* statusCode 1..1
* statusCode ^short = "status de l'observation"
* statusCode ^definition = "status de l'observation"
* statusCode from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-hl7-v3-ActStatus-cisis
* effectiveTime MS
* effectiveTime ^short = "Date de l'observation"
* effectiveTime ^definition = "Date de l'observation"
* value MS
* value 1..1
* interpretationCode MS
* interpretationCode 0..1
* interpretationCode ^short = "Interprétation code de l'observation"
* interpretationCode ^definition = "Interprétation code de l'observation"
* interpretationCode from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-hl7-v3-ObservationInterpretation-cisis
* methodCode MS
* methodCode 0..1
* methodCode ^short = "Méthode code de l'observation"
* methodCode ^definition = "Méthode code de l'observation"
* methodCode from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-hl7-v3-ObservationMethod-cisis
* targetSiteCode 1..1
* targetSiteCode ^short = "Latéralité et topographie"
* targetSiteCode ^definition = "Latéralité et topographie"
  * qualifier MS
  * qualifier 0..1
  * qualifier ^short = "Topographie"
  * qualifier ^definition = "Topographie"
    * name MS
    * name 1..1
    * name.code = #106233006
    * name.codeSystem = "2.16.840.1.113883.6.96"
    * name.codeSystemName = "SNOMED-CT"
    * name.displayName = "modificateur topographique"
    * value MS
    * value 1..1
    * value ^short = "Valeur de la topographie"
    * value ^definition = "Valeur de la topographie"
    * value only CD
    * value from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-modificateur-topographique-cisis (required)

