Profile: FRCDASectionRaisonDeLaRecommandation
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Section
Id: fr-cda-raison-de-la-recommandation
Title: "CDA - FR Raison de la recommandation"
Description: "IHE-PCC - Coded Reason for Referral Section. Cette section permet d'indiquer la raison pour laquelle le patient est adressé à l'hôpital, à une consultation, etc. et de donner des informations complémentaires, sous forme codées, à l'aide d'une entrée Simple observation et d'une entrée Problème. "
* templateId 1..3
* templateId ^slicing.discriminator.type = #value
* templateId ^slicing.discriminator.path = "root"
* templateId ^slicing.rules = #open
* templateId contains frSectionRaisonDeLaRecommandation 1..1
and iheSectionCodedReasonforReferral 1..1
and iheSectionReasonforReferral 1..1
* templateId[frSectionRaisonDeLaRecommandation].root = "1.2.250.1.213.1.1.2.128"
* templateId[frSectionRaisonDeLaRecommandation] ^short = "Déclaration de conformité de la section aux spécifications (CI-SIS)"
* templateId[iheSectionCodedReasonforReferral].root = "1.3.6.1.4.1.19376.1.5.3.1.3.2"
* templateId[iheSectionCodedReasonforReferral] ^short = "Déclaration de conformité de la section aux spécifications (IHE-PCC)"
* templateId[iheSectionReasonforReferral].root = "1.3.6.1.4.1.19376.1.5.3.1.3.1"
* templateId[iheSectionReasonforReferral] ^short = "Déclaration de conformité de la section aux spécifications (IHE-PCC)"
* id MS
* id ^short = "Identifiant de la section"
* id ^definition = "Identifiant de la section"
* code MS
* code 1..1
* code ^short = "Code de la section"
* code ^definition = "Code de la section"
* code.code 1..1 MS
* code.code = #42349-1
* code.displayName 1..1 MS
* code.displayName = "Raison de la recommandation"
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
frSimpleObservation 1..1 and
frProbleme 1..*
* entry[frSimpleObservation].observation only FRCDASimpleObservation
* entry[frSimpleObservation].observation ^short = "Entrée Simple observation"
* entry[frProbleme].observation only FRCDAProbleme
* entry[frProbleme].observation ^short = "Entrée Problème"
