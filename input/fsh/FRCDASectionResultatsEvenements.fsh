Profile: FRCDASectionResultatsEvenements
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Section
Id: fr-cda-resultats-evenements
Title: "CDA - FR Resultats evenements"
Description: "IHE-PCC - Coded-Event-Outcomes. Evenements observés au décours d'un acte ou d'un problème."
* templateId 1..3
* templateId ^slicing.discriminator.type = #value
* templateId ^slicing.discriminator.path = "root"
* templateId ^slicing.rules = #open
* templateId contains ihecodedEventOutcomes 1..1
and iheEventOutcomes 1..1
and frSectionResultatsEvenements 1..1
* templateId[ihecodedEventOutcomes].root = "1.3.6.1.4.1.19376.1.7.3.1.1.13.7"
* templateId[ihecodedEventOutcomes] ^short = "Déclaration de conformité de la section aux spécifications (IHE-PCC)"
* templateId[iheEventOutcomes].root = "1.3.6.1.4.1.19376.1.5.3.1.1.21.2.9"
* templateId[iheEventOutcomes] ^short = "Déclaration de conformité de la section aux spécifications (IHE-PCC)"
* templateId[frSectionResultatsEvenements].root = "1.2.250.1.213.1.1.2.163"
* templateId[frSectionResultatsEvenements] ^short = "Déclaration de conformité de la section aux spécifications (CI-SIS)"
* id MS
* id ^short = "Identifiant de la section"
* id ^definition = "Identifiant de la section"
* code MS
* code 1..1
* code ^short = "Code de la section"
* code ^definition = "Code de la section"
* code.code 1..1 MS
* code.code = #42545-4
* code.displayName 1..1 MS
* code.displayName = "Evènements observés"
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
* entry ^slicing.discriminator.type = #type
* entry ^slicing.discriminator.path = "$this"
* entry ^slicing.rules = #open
* entry contains
frSimpleObservation 1..* and
frTransfertDuPatient 0..* and
frProbleme 0..*
* entry[frSimpleObservation].observation only FRCDASimpleObservation
* entry[frSimpleObservation].observation ^short = "Entrée Simple observation"
//* entry[frTransfertDuPatient].act only FRCDATransfertDuPatient
//* entry[frTransfertDuPatient].act ^short = "Entrée Transfert du patient"
* entry[frProbleme].observation only FRCDAProbleme
* entry[frProbleme].observation ^short = "Entrée Problème"
