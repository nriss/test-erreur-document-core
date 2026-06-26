Profile: FRCDADICOMObservation
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Observation
Id: fr-cda-dicom-observation
Title: "CDA - FR DICOM Observation"
Description: "Entrée FR-DICOM-Observation: DICOM Part 20 - Coded Observation. Cette entrée permet d’enregistrer une observation avec une valeur codée ou textuelle."
* classCode MS
* classCode = #OBS
* moodCode MS
* negationInd MS
* negationInd = true
* id 1..1 MS
* id ^short = "Identifiant de l'entrée"
* id ^definition = "Identifiant de l'entrée"
* templateId 1..2
* templateId ^slicing.discriminator.type = #value
* templateId ^slicing.discriminator.path = "root"
* templateId ^slicing.rules = #open
* templateId contains frDicomObservation 1..1
and dicomCodedObservation 1..1
* templateId[frDicomObservation].root 1..1
* templateId[frDicomObservation].root = "1.2.250.1.213.1.1.3.150"
* templateId[frDicomObservation] ^short = "Conformité FR-DICOM-Observation (CI-SIS)"
* templateId[frDicomObservation] ^definition = "Conformité FR-DICOM-Observation (CI-SIS)"
* templateId[dicomCodedObservation].root 1..1
* templateId[dicomCodedObservation].root = "2.16.840.1.113883.10.20.6.2.13"
* templateId[dicomCodedObservation] ^short = "Conformité Coded Observation (DICOM Part 20)"
* templateId[dicomCodedObservation] ^definition = "Conformité Coded Observation (DICOM Part 20)"
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
* value only CD
* value.originalText MS
* value.originalText.reference MS
* interpretationCode MS
* interpretationCode 0..1
* interpretationCode ^short = "non utilisé"
* interpretationCode ^definition = "non utilisé"
* methodCode MS
* methodCode 0..1
* methodCode ^short = "non utilisé"
* methodCode ^definition = "non utilisé"
* targetSiteCode 1..1
* targetSiteCode ^short = "Localisation anatomique SNOMED CT (2.16.840.1.113883.6.96)"
* targetSiteCode ^definition = "Localisation anatomique"
  * qualifier MS
  * qualifier 0..1
  * qualifier ^short = "Précision topographique"
  * qualifier ^definition = "Précision topographique"
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
* entryRelationship MS
* entryRelationship ^slicing.discriminator.type = #value
* entryRelationship ^slicing.discriminator.path = "$this"
* entryRelationship ^slicing.rules = #open
* entryRelationship contains 
frDicomSOPInstanceObservation 0..*
 and frDicomQuantite 0..*
* entryRelationship[frDicomSOPInstanceObservation].observation only FRCDADICOMSOPInstanceObservation
* entryRelationship[frDicomSOPInstanceObservation].typeCode = #SPRT
* entryRelationship[frDicomQuantite].observation only FRCDADICOMQuantite
* entryRelationship[frDicomQuantite].typeCode = #SPRT
