Profile: FRCDASectionStatutDuDocument
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Section
Id: fr-cda-statut-du-document
Title: "CDA - FR Statut du document"
Description: "Cette section permet d’indiquer le statut du document (son état d’avancement dans le cycle de vie du document, depuis sa création jusqu'à sa validation définitive par son responsable légal."
* templateId 1..1
* templateId ^slicing.discriminator.type = #value
* templateId ^slicing.discriminator.path = "root"
* templateId ^slicing.rules = #open
* templateId contains frSectionStatutDuDocument 1..1
* templateId[frSectionStatutDuDocument].root = "1.2.250.1.213.1.1.2.35"
* templateId[frSectionStatutDuDocument] ^short = "Déclaration de conformité de la section aux spécifications (CI-SIS)"
* id 1..1 MS
* id ^short = "Identifiant de la section"
* id ^definition = "Identifiant de la section"
* code MS
* code 1..1
* code ^short = "Code de la section"
* code ^definition = "Code de la section"
* code.code 1..1 MS
* code.code = #33557-0
* code.displayName 1..1 MS
* code.displayName = "Etat d'achèvement"
* code.codeSystem 1..1 MS
* code.codeSystem = "2.16.840.1.113883.6.1"
* code.codeSystemName = "LOINC"
* title 1..1 MS
* title ^short = "Titre de la section :  fixé à 'Statut du document'"
* title ^definition = "Titre de la section"
* text 1..1 MS
* text ^short = "Bloc narratif"
* text ^definition = "Bloc narratif"
* entry MS
* entry 1..1
* entry.observation only FRCDAStatutDocument
* entry ^short = "Entrée Statut du document"
