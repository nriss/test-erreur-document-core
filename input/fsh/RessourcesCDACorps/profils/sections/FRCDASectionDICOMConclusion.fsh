Profile: FRCDASectionDICOMConclusion
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Section
Id: fr-cda-dicom-conclusion
Title: "CDA - FR DICOM Conclusion"
Description: "DICOM Part 20 - Impression Section
- Cette section permet d'enregistrer les informations sur les diagnostics les plus importantes ou d’autres conclusions cliniques qui peuvent être faites à partir des observations d’imagerie et d’autres informations cliniques. Elle peut inclure des recommandations pour des tests d’imagerie supplémentaires ou d’autres actions, ainsi que des évaluations globales."
* templateId 1..2
* templateId ^slicing.discriminator.type = #value
* templateId ^slicing.discriminator.path = "root"
* templateId ^slicing.rules = #open
* templateId contains dicomImpressionSection 1..1
and frSectionDicomConclusion 1..1
* templateId[dicomImpressionSection].root = "1.2.840.10008.9.5"
* templateId[dicomImpressionSection] ^short = "Conformité Impression (DICOM Part 20)"
* templateId[frSectionDicomConclusion].root = "1.2.250.1.213.1.1.2.209"
* templateId[frSectionDicomConclusion] ^short = "Conformité FR-DICOM-Conclusion (CI-SIS)"
* id 1..1 MS
* id ^short = "Identifiant de la section"
* id ^definition = "Identifiant de la section"
* code MS
* code 1..1
* code ^short = "Code de la section"
* code ^definition = "Code de la section"
* code.code 1..1
* code.code = #19005-8
* code.displayName 1..1
* code.displayName = "Conclusions"
* code.codeSystem 1..1
* code.codeSystem = "2.16.840.1.113883.6.1"
* code.codeSystemName = "LOINC"
* title 1..1
* title ^short = "Titre de la section"
* title ^definition = "Titre de la section"
* text 1..1 MS
* text ^short = "Bloc narratif"
* text ^definition = "Bloc narratif"