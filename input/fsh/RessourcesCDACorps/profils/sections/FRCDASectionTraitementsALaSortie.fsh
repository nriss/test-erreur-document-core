Profile: FRCDASectionTraitementsALaSortie
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Section
Id: fr-cda-traitements-a-la-sortie
Title: "CDA - FR Traitements à la sortie"
Description: "IHE-PCC - Hospital-Discharge-Medications. La section 'Traitements à la sortie' contient une description narrative des médicaments à administrer au patient après sa sortie de l'hospitalisation et doit inclure des entrées 'Traitement'."
* templateId 1..2
* templateId ^slicing.discriminator.type = #value
* templateId ^slicing.discriminator.path = "root"
* templateId ^slicing.rules = #open
* templateId contains iheSectionHospitalDischargeMedications 1..1
and frSectionTraitementsALaSortie 1..1
* templateId[iheSectionHospitalDischargeMedications].root = "1.3.6.1.4.1.19376.1.5.3.1.3.22"
* templateId[iheSectionHospitalDischargeMedications] ^short = "Conformité Hospital-Discharge-Medications (IHE-PCC)"
* templateId[frSectionTraitementsALaSortie].root = "1.2.250.1.213.1.1.2.146"
* templateId[frSectionTraitementsALaSortie] ^short = "Conformité Hospital-Discharge-Medications (CI-SIS)"
* id MS
* id ^short = "Identifiant de la section"
* id ^definition = "Identifiant de la section"
* code MS
* code 1..1
* code ^short = "Code de la section"
* code ^definition = "Code de la section"
* code.code 1..1 MS
* code.code = #10183-2
* code.displayName 1..1 MS
* code.displayName = "Traitements à la sortie"
* code.codeSystem 1..1 MS
* code.codeSystem = "2.16.840.1.113883.6.1"
* code.codeSystemName = "LOINC"
* title MS
* title ^short = "Titre de la section"
* title ^definition = "Titre de la section"
* text 1..1 MS
* text ^short = "Bloc narratif"
* text ^definition = "Bloc narratif"
* entry MS
* entry 1..*
* entry.substanceAdministration only FRCDATraitement
* entry ^short = "Entrée Traitement"
