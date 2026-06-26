Profile: FRCDASectionTraitementsAdministres
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Section
Id: fr-cda-traitements-administres
Title: "CDA - FR Traitements administres"
Description: "IHE-PCC - Medications-Administered. La section 'Traitements administrés' contient une description narrative des médicaments administrés au patient et doit inclure des entrées 'Traitement'."
* templateId 1..2
* templateId ^slicing.discriminator.type = #value
* templateId ^slicing.discriminator.path = "root"
* templateId ^slicing.rules = #open
* templateId contains iheSectionMedications 1..1
and frSectionTraitementsAdministres 1..1
* templateId[iheSectionMedications].root = "1.3.6.1.4.1.19376.1.5.3.1.3.21"
* templateId[iheSectionMedications] ^short = "Conformité Medications-Administered (IHE-PCC)"
* templateId[frSectionTraitementsAdministres].root = "1.2.250.1.213.1.1.2.145"
* templateId[frSectionTraitementsAdministres] ^short = "Conformité FR-Traitements-administres (CISIS)"
* id MS
* id ^short = "Identifiant de la section"
* id ^definition = "Identifiant de la section"
* code MS
* code 1..1
* code ^short = "Code de la section"
* code ^definition = "Code de la section"
* code.code 1..1 MS
* code.code = #18610-6
* code.displayName 1..1 MS
* code.displayName = "Traitements administrés"
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
