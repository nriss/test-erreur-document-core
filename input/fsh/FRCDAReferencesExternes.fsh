Profile: FRCDAReferencesExternes
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Act
Id: fr-cda-references-externes
Title: "CDA - FR References externes"
Description: "Entrée FR-References-externes: IHE-PCC - External-References. Cette entrée de type act permet de relier un élément à un (ou des) document(s) externe(s) par l’intermédiaire d’une adresse URL."
* classCode MS
* classCode = #ACT
* moodCode MS
* moodCode = #EVN
* id 1..1 MS
* id ^short = "Identifiant de l'entrée"
* id ^definition = "Identifiant de l'entrée"
* templateId 1..2
* templateId ^slicing.discriminator.type = #value
* templateId ^slicing.discriminator.path = "root"
* templateId ^slicing.rules = #open
* templateId contains iheExternalReferences 1..1
and frReferencesExternes 1..1
* templateId[iheExternalReferences].root 1..1
* templateId[iheExternalReferences].root = "1.3.6.1.4.1.19376.1.5.3.1.4.4"
* templateId[iheExternalReferences] ^short = "Conformité External References (IHE PCC)"
* templateId[iheExternalReferences] ^definition = "Conformité External References (IHE PCC)"
* templateId[frReferencesExternes].root 1..1
* templateId[frReferencesExternes].root = "1.2.250.1.213.1.1.3.35"
* templateId[frReferencesExternes] ^short = "Conformité FR-References-externes (CI-SIS)"
* templateId[frReferencesExternes] ^definition = "Conformité FR-References-externes (CI-SIS)"
* code MS
* code 1..1
* code ^short = "Code de l'entrée. Fixé à nullFlavor='NA'"
* code ^definition = "Code de l'entrée"
* code.nullFlavor 1..1 MS
* code.nullFlavor = #NA
* text MS
* text 1..1
* text ^short = "Partie narrative de l’entrée. Peut faire référence à la partie narrative de la section."
* text ^definition = "Partie narrative de l’entrée"
* reference 1..* MS
* reference ^short = "Document référencé"
* reference ^definition = "Document référencé"
* reference.typeCode from FRValueSetReferenceExterne (required)
* reference.externalDocument 1..1 MS
* reference.externalDocument.classCode = #DOC 
* reference.externalDocument.id 1..1 MS
* reference.externalDocument.text MS
* reference.externalDocument.text ^short = "Référence externe du document"
* reference.externalDocument.text.reference MS
* reference.externalDocument.text.reference ^short = "Cet élément peut contenir l'URL du document. L'adresse du document peut apparaître dans la partie narrative de la section par le biais d'un lien linkHtml."