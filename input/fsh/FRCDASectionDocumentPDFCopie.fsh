Profile: FRCDASectionDocumentPDFCopie
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Section
Id: fr-cda-document-pdf-copie
Title: "CDA - FR Document PDF copie"
Description: "Cette section ne contient qu’une et une seule entrée FR-Document-attache qui contiendra la copie PDF encodée en B64 du document CDA."
* templateId 1..1
* templateId ^slicing.discriminator.type = #value
* templateId ^slicing.discriminator.path = "root"
* templateId ^slicing.rules = #open
* templateId contains frSectionDocumentPdfCopie 1..1
* templateId[frSectionDocumentPdfCopie].root = "1.2.250.1.213.1.1.2.243"
* templateId[frSectionDocumentPdfCopie] ^short = "Conformité de la section aux spécifications CI-SIS"
* id MS
* id ^short = "Identifiant de la section"
* id ^definition = "Identifiant de la section"
* code MS
* code 1..1
* code ^short = "Code de la section"
* code ^definition = "Code de la section"
* code.code 1..1
* code.code = #55108-5
* code.displayName 1..1
* code.displayName = "Copie du document"
* code.codeSystem 1..1
* code.codeSystem = "2.16.840.1.113883.6.1"
* code.codeSystemName = "LOINC"
* title 1..1 MS
* title ^short = "Titre de la section Valeur fixée à 'Copie du document'"
* title ^definition = "Titre de la section"
* text 1..1 MS
* text ^short = "Bloc narratif de la section"
* text ^definition = "Bloc narratif de la section"
* entry MS
* entry 1..1
* entry.organizer only FRCDADocumentAttache
* entry ^short = "Entrée FR-Document-attache"