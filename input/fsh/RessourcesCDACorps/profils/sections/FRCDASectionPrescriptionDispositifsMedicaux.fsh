Profile: FRCDASectionPrescriptionDispositifsMedicaux
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Section
Id: fr-cda-prescription-dispositifs-medicaux
Title: "CDA - FR Prescription dispositifs medicaux"
Description: "IHE-PRE - Prescription. Cette section regroupe les lignes de prescriptions des dispositifs médicaux."
* templateId 1..1
* templateId ^slicing.discriminator.type = #value
* templateId ^slicing.discriminator.path = "root"
* templateId ^slicing.rules = #open
* templateId contains frSectionPrescriptionDispositifsMedicaux 1..1
* templateId[frSectionPrescriptionDispositifsMedicaux].root = "1.2.250.1.213.1.1.2.222"
* templateId[frSectionPrescriptionDispositifsMedicaux] ^short = "Déclaration de conformité de la section aux spécifications (CI-SIS)"
* id MS
* id ^short = "Identifiant de la section"
* id ^definition = "Identifiant de la section"
* code MS
* code 1..1
* code ^short = "Code de la section"
* code ^definition = "Code de la section"
* code.code 1..1 MS
* code.code = #46264-8
* code.displayName 1..1 MS
* code.displayName = "Dispositifs médicaux"
* code.codeSystem 1..1 MS
* code.codeSystem = "2.16.840.1.113883.6.1"
* code.codeSystemName = "LOINC"
* title MS
* title ^short = "Titre de la section"
* title ^definition = "Titre de la section"
* text 1..1 MS
* text ^short = "Bloc narratif de la section Prescription sous forme textuelle."
* text ^definition = "Bloc narratif de la section"
* author 0..1 MS
* author ^short = "Auteur de la prescription :
 Si le prescripteur n'est pas l'auteur du document, le prescripteur doit être indiqué dans l'élément <author> de la section."
* author ^definition = "Auteur de la prescription"
* author only FRCDAAuthor
* entry MS
* entry 1..*
* entry.supply only FRCDADispositifMedical
* entry ^short = "Dispositif médical prescrit"
