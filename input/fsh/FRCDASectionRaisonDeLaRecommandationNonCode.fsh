Profile: FRCDASectionRaisonDeLaRecommandationNonCode
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Section
Id: fr-cda-raison-de-la-recommandation-non-code
Title: "CDA - FR Raison de la recommandation non code"
Description: "IHE-PCC Reason-For-Referral. Cette section permet d'indiquer, sous forme textuelle uniquement, la raison pour laquelle le patient est adressé à l'hôpital, à une consultation, etc. "
* templateId 1..2
* templateId ^slicing.discriminator.type = #value
* templateId ^slicing.discriminator.path = "root"
* templateId ^slicing.rules = #open
* templateId contains iheSectionReasonforReferral 1..1
and frSectionRaisonDeLaRecommandationNonCode 1..1
* templateId[iheSectionReasonforReferral].root = "1.3.6.1.4.1.19376.1.5.3.1.3.1"
* templateId[iheSectionReasonforReferral] ^short = "Déclaration de conformité de la section aux spécifications (IHE-PCC)"
* templateId[frSectionRaisonDeLaRecommandationNonCode].root = "1.2.250.1.213.1.1.2.127"
* templateId[frSectionRaisonDeLaRecommandationNonCode] ^short = "Déclaration de conformité de la section aux spécifications (CI-SIS)"
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
