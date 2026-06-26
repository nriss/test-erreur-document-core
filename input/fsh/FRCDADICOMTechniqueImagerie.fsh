Profile: FRCDADICOMTechniqueImagerie
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Procedure
Id: fr-cda-dicom-technique-imagerie
Title: "CDA - FR DICOM Technique imagerie"
Description: "Entrée FR-DICOM-Technique-imagerie: DICOM Part 20 - Procedure Technique Cette entrée permet d’enregistrer les différents paramètres de l’acquisition d’image :  acte d'imagerie  modalité d'acquisition  localisation anatomique / latéralité / topographie d'autres paramètres de l'acte"
* classCode MS
* moodCode from http://terminology.hl7.org/ValueSet/v3-xDocumentProcedureMood (required)
* id 1..1 MS
* id ^short = "Identifiant de l'entrée"
* id ^definition = "Identifiant de l'entrée"
* templateId 1..2
* templateId ^slicing.discriminator.type = #value
* templateId ^slicing.discriminator.path = "root"
* templateId ^slicing.rules = #open
* templateId contains frDicomTechniqueImagerie 1..1
and dicomProcedureTechnique 1..1
* templateId[frDicomTechniqueImagerie].root 1..1
* templateId[frDicomTechniqueImagerie].root = "1.2.250.1.213.1.1.3.153"
* templateId[frDicomTechniqueImagerie] ^short = "Conformité FR-DICOM-Technique-imagerie (CI-SIS)"
* templateId[frDicomTechniqueImagerie] ^definition = "Conformité FR-DICOM-Technique-imagerie (CI-SIS)"
* templateId[dicomProcedureTechnique].root 1..1
* templateId[dicomProcedureTechnique].root = "1.2.840.10008.9.14"
* templateId[dicomProcedureTechnique] ^short = "Conformité Procedure Technique (DICOM Part 20)"
* templateId[dicomProcedureTechnique] ^definition = "Conformité Procedure Technique (DICOM Part 20)"
* code MS
* code 1..1
* code ^short = "Code de l'acte d'imagerie :  Valeur provenant du  JDV_CodesDocumentImagerie_CISIS (1.2.250.1.213.1.1.5.687)"
* code ^definition = "Code de l'acte d'imagerie"
* code from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-code-document-imagerie-cisis (required) 
* code.code 1..1 MS
* code.displayName MS
* code.codeSystem 1..1 MS
* text MS
* text ^short = "Partie narrative de l'entrée"
* text ^definition = "Partie narrative de l'entrée"
* effectiveTime MS
* effectiveTime ^short = "Date de l'acte"
* effectiveTime ^definition = "Date de l'acte"
* methodCode MS
* methodCode 1..*
* methodCode ^short = "Modalité d’acquisition"
* methodCode ^definition = "Modalité d’acquisition"
* methodCode from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-modalite-acquisition-cisis (required) 
* targetSiteCode ^short = "Localisation anatomique :SNOMED CT (2.16.840.1.113883.6.96)"
* targetSiteCode ^definition = "Localisation anatomique"
  * originalText MS
    * mediaType 1..1
    * reference 1..1
      * value 1..1
  * qualifier MS
  * qualifier 0..1
  * qualifier ^short = "Précision topographique"
  * qualifier ^definition = "Précision topographique"
    * name MS
    * name 1..1
    * name.code = #106233006
    * name.displayName = "modificateur topographique"
    * name.codeSystem = "2.16.840.1.113883.6.96"
    * name.codeSystemName = "SNOMED CT"
    * value MS
    * value 1..1
    * value ^short = "Valeur de la topographie  Valeur provenant du  JDV_ModificateurTopographique_CISIS(1.2.250.1.213.1.1.5.688)"
    * value ^definition = "Valeur de la topographie"
    * value only CD
    * value from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-modificateur-topographique-cisis
* participant 0..1
* participant only FRCDAParticipantCorps
