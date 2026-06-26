Profile: FRCDASectionResultatsExamens
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Section
Id: fr-cda-resultats-examens
Title: "CDA - FR Resultats examens"
Description: "IHE-PCC - Coded Results Section. Résultats d'examens réalisés par le patient et éventuellement références à d'autres documents du dossier du patient."
* templateId 1..3
* templateId ^slicing.discriminator.type = #value
* templateId ^slicing.discriminator.path = "root"
* templateId ^slicing.rules = #open
* templateId contains iheSectionCodedResults 1..1
and iheSectionResults 1..1
and frSectionResultatsExamens 1..1
* templateId[iheSectionCodedResults].root = "1.3.6.1.4.1.19376.1.5.3.1.3.28"
* templateId[iheSectionCodedResults] ^short = "Déclaration de conformité de la section aux spécifications (IHE-PCC)"
* templateId[iheSectionResults].root = "1.3.6.1.4.1.19376.1.5.3.1.3.27"
* templateId[iheSectionResults] ^short = "Déclaration de conformité de la section aux spécifications (IHE-PCC)"
* templateId[frSectionResultatsExamens].root = "1.2.250.1.213.1.1.2.151"
* templateId[frSectionResultatsExamens] ^short = "Déclaration de conformité de la section aux spécifications (CI-SIS)"
* id MS
* id ^short = "Identifiant de la section"
* id ^definition = "Identifiant de la section"
* code MS
* code 1..1
* code ^short = "Code de la section"
* code ^definition = "Code de la section"
* code.code 1..1 MS
* code.code = #30954-2
* code.displayName 1..1 MS
* code.displayName = "Résultats d'examens"
* code.codeSystem 1..1 MS
* code.codeSystem = "2.16.840.1.113883.6.1"
* code.codeSystemName = "LOINC"
* title MS
* title ^short = "Titre de la section"
* title ^definition = "Titre de la section"
* text 1..1 MS
* text ^short = "Bloc narratif"
* text ^definition = "Bloc narratif"
* entry 1..* MS
* entry ^slicing.discriminator.type = #type
* entry ^slicing.discriminator.path = "$this"
* entry ^slicing.rules = #open
* entry contains
frActe 1..* and
frReferencesExternes 0..* and
frSimpleObservation 0..*
* entry[frActe].procedure only FRCDAActe
* entry[frActe].procedure ^short = "Entrée Acte"
* entry[frReferencesExternes].act only FRCDAReferencesExternes
* entry[frReferencesExternes].act ^short = "Entrée Références externes"
* entry[frSimpleObservation].observation only FRCDASimpleObservation
* entry[frSimpleObservation].observation ^short = "Entrée Simple observation"
