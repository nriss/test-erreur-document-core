Profile: FRCDASectionDispensationMedicaments
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Section
Id: fr-cda-dispensation-medicaments
Title: "CDA - FR Dispensation medicaments"
Description: "IHE PHARM DIS - Dispense SectionDescription d’un médicament administré au patient."
* templateId 1..3
* templateId ^slicing.discriminator.type = #value
* templateId ^slicing.discriminator.path = "root"
* templateId ^slicing.rules = #open
* templateId contains frSectionDispensationMedicaments 1..1
and iheDispenseSection 1..1
and ccdMedicationsection 1..1
* templateId[frSectionDispensationMedicaments].root = "1.2.250.1.213.1.1.2.236"
* templateId[frSectionDispensationMedicaments] ^short = "Conformité FR-Dispensation-medicaments (CI-SIS)"
* templateId[iheDispenseSection].root = "1.3.6.1.4.1.19376.1.9.1.2.3"
* templateId[iheDispenseSection] ^short = "Conformité Dispense Section (IHE PHARM DIS)"
* templateId[ccdMedicationsection].root = "2.16.840.1.113883.10.20.1.8"
* templateId[ccdMedicationsection] ^short = "Conformité Medication section (CCD)"
* id 1..1 MS
* id ^short = "Identifiant de la section"
* id ^definition = "Identifiant de la section"
* code MS
* code 1..1
* code ^short = "Code de la section"
* code ^definition = "Code de la section"
* code.code 1..1
* code.code = #60590-7
* code.displayName 1..1
* code.displayName = "Médicaments délivrés"
* code.codeSystem 1..1
* code.codeSystem = "2.16.840.1.113883.6.1"
* code.codeSystemName = "LOINC"
* title 1..1 MS
* title ^short = "Titre de la section"
* title ^definition = "Titre de la section"
* text 1..1  MS
* text ^short = "Texte de la section"
* text ^definition = "Texte de la section"
* author 1..1  MS
* author ^short = "Auteur de la section"
* author ^definition = "Auteur de la section"
* author only FRCDAAuthor
* entry MS
* entry 1..*
* entry.supply only FRCDATraitementDispense
* entry ^short = "Entrée FR-Traitement-dispense"