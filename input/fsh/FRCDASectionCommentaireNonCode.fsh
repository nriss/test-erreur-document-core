Profile: FRCDASectionCommentaireNonCode
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Section
Id: fr-cda-commentaire-non-code
Title: "CDA - FR Commentaire non code"
Description: "IHE-PCC - Document-Summary 
 - Cette section permet d'indiquer un commentaire sous forme textuelle."
* templateId 1..3
* templateId ^slicing.discriminator.type = #value
* templateId ^slicing.discriminator.path = "root"
* templateId ^slicing.rules = #open
* templateId contains iheDocumentSummary 1..1
and CdaSection 1..1
and frSectionCommentaireNonCode 1..1
* templateId[iheDocumentSummary].root = "1.3.6.1.4.1.19376.1.4.1.2.16"
* templateId[iheDocumentSummary] ^short = "Déclaration de conformité de la section aux spécifications IHE PCC"
* templateId[CdaSection].root = "2.16.840.1.113883.10.12.201"
* templateId[CdaSection] ^short = "Déclaration de conformité de la section aux spécifications C-CDA"
* templateId[frSectionCommentaireNonCode].root = "1.2.250.1.213.1.1.2.73"
* templateId[frSectionCommentaireNonCode] ^short = "Déclaration de conformité de la section aux spécifications CI-SIS"
* id MS
* id ^short = "Identifiant de la section"
* id ^definition = "Identifiant de la section"
* code MS
* code 1..1
* code ^short = "Code de la section"
* code ^definition = "Code de la section"
* code.code 1..1
* code.code = #55112-7
* code.displayName 1..1
* code.codeSystem 1..1
* code.codeSystem = "2.16.840.1.113883.6.1"
* code.codeSystemName = "LOINC"
* title MS
* title ^short = "Titre de la section"
* title ^definition = "Titre de la section"
* text 1..1 MS
* text ^short = "Bloc narratif"
* text ^definition = "Bloc narratif"