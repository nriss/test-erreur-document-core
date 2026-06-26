Profile: FRCDASectionHistoriqueDesActes
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Section
Id: fr-cda-historique-des-actes
Title: "CDA - FR Historique des actes"
Description: "IHE-PCC - Coded-List-Of-Surgeries. Liste codée des actes chirurgicaux, diagnostiques invasifs (ex : cathétérisme cardiaque), thérapeutiques (ex : dialyse). Cette liste contient des entrées codées FR-Acte et éventuellement des entrées FR-References-externes à des documents faisant mention de ces actes."
* templateId 1..4
* templateId ^slicing.discriminator.type = #value
* templateId ^slicing.discriminator.path = "root"
* templateId ^slicing.rules = #open
* templateId contains iheSectionListOfSurgeries 1..1
and iheSectionCodedListOfSurgeries 1..1
and ccdSectionProcedures 1..1
and frSectionHistoriqueDesActes 1..1
* templateId[iheSectionListOfSurgeries].root = "1.3.6.1.4.1.19376.1.5.3.1.3.11"
* templateId[iheSectionListOfSurgeries] ^short = "Conformité List of Surgeries Section (IHE-PCC)"
* templateId[iheSectionCodedListOfSurgeries].root = "1.3.6.1.4.1.19376.1.5.3.1.3.12"
* templateId[iheSectionCodedListOfSurgeries] ^short = "Conformité Coded List of Surgeries Section (IHE-PCC)"
* templateId[ccdSectionProcedures].root = "2.16.840.1.113883.10.20.1.12"
* templateId[ccdSectionProcedures] ^short = "Conformité Procedures Section (CCD)"
* templateId[frSectionHistoriqueDesActes].root = "1.2.250.1.213.1.1.2.136"
* templateId[frSectionHistoriqueDesActes] ^short = "Conformité FR-Historique-des-actes (CI-SIS)"
* id 1..1 MS
* id ^short = "Identifiant de la section"
* id ^definition = "Identifiant de la section"
* code MS
* code 1..1
* code ^short = "Code de la section"
* code ^definition = "Code de la section"
* code.code 1..1 MS
* code.code = #47519-4
* code.displayName 1..1 MS
* code.displayName = "Historique des actes"
* code.codeSystem 1..1 MS
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
* entry ^slicing.discriminator.type = #type
* entry ^slicing.discriminator.path = "$this"
* entry ^slicing.rules = #open
* entry contains
frActe 1..* and
frReferencesExternes 0..* 
* entry[frActe].procedure only FRCDAActe
* entry[frActe].procedure ^short = "Entrée Acte"
* entry[frReferencesExternes].act only FRCDAReferencesExternes
* entry[frReferencesExternes].act ^short = "Entrée Références externes"
