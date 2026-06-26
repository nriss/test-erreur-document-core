Profile: FRCDASectionDispositifsMedicaux
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Section
Id: fr-dispositifs-medicaux
Title: "CDA - FR Dispositifs medicaux"
Description: "IHE-PCC - Medical Devices SectionCette section 'Dispositifs médicaux' contient une description des dispositifs médicaux implantés (EES, DF, prothèses) chez le malade sous forme codée."
* templateId 1..3
* templateId ^slicing.discriminator.type = #value
* templateId ^slicing.discriminator.path = "root"
* templateId ^slicing.rules = #open
* templateId contains ccdMedicalEquipmentSection 1..1
and iheMedicalDevicesSection 1..1
and frSectionDispositifsMedicaux 1..1
* templateId[ccdMedicalEquipmentSection].root = "2.16.840.1.11383.10.20.1.7"
* templateId[ccdMedicalEquipmentSection] ^short = "Déclaration de conformité de la section aux spécifications C-CDA"
* templateId[iheMedicalDevicesSection].root = "1.3.6.1.4.1.19376.1.5.3.1.1.5.3.5"
* templateId[iheMedicalDevicesSection] ^short = "Déclaration de conformité de la section aux spécifications IHE PCC"
* templateId[frSectionDispositifsMedicaux].root = "1.2.250.1.213.1.1.2.1"
* templateId[frSectionDispositifsMedicaux] ^short = "Déclaration de conformité de la section aux spécifications CI-SIS"
* id 1..1 MS
* id ^short = "Identifiant de la section"
* id ^definition = "Identifiant de la section"
* code MS
* code 1..1
* code ^short = "Code de la section"
* code ^definition = "Code de la section"
* code.code 1..1
* code.code = #46264-8
* code.displayName 1..1
* code.displayName = "Dispositifs médicaux"
* code.codeSystem 1..1
* code.codeSystem = "2.16.840.1.113883.6.1"
* code.codeSystemName = "LOINC"
* title 1..1 MS
* title ^short = "Titre de la section"
* title ^definition = "Titre de la section"
* text 1..1 MS
* text ^short = "Bloc narratif"
* text ^definition = "Bloc narratif"
* entry MS
* entry 1..*
* entry.supply only FRCDADispositifMedical
* entry ^short = "Entrée Dispositif médical"