Profile: FRCDAReferenceItemPrescription
Parent: http://hl7.org/cda/stds/core/StructureDefinition/SubstanceAdministration
Id: fr-cda-reference-item-prescription
Title: "CDA - FR Reference item prescription"
Description: "Entrée FR-Reference-item-prescription: IHE-PRE - Reference-Prescription-Item. Cette entrée permet d’enregistrer la référence à un item de prescription."
* classCode MS
* moodCode MS
* moodCode = #INT
* id 1..1 MS
* id ^short = "Identifiant de l'entrée"
* id ^definition = "Identifiant de l'entrée"
* templateId 1..2
* templateId ^slicing.discriminator.type = #value
* templateId ^slicing.discriminator.path = "root"
* templateId ^slicing.rules = #open
* templateId contains iheReferenceToPrescriptionItem 1..1
and frReferenceItemPrescription 1..1
* templateId[iheReferenceToPrescriptionItem].root  1..1
* templateId[iheReferenceToPrescriptionItem].root = "1.3.6.1.4.1.19376.1.9.1.3.11"
* templateId[iheReferenceToPrescriptionItem] ^short = "Conformité Reference to Prescription Item (IHE PHARM PRE)"
* templateId[iheReferenceToPrescriptionItem] ^definition = "Conformité Reference to Prescription Item (IHE PHARM PRE)"
* templateId[frReferenceItemPrescription].root  1..1
* templateId[frReferenceItemPrescription].root = "1.2.250.1.213.1.1.3.90"
* templateId[frReferenceItemPrescription] ^short = "Conformité FR-reference-item-prescription(CI-SIS)"
* templateId[frReferenceItemPrescription] ^definition = "Conformité FR-reference-item-prescription(CI-SIS)"
* code MS
* code 1..1
* code ^short = "Code de l'entrée"
* code ^definition = "Code de l'entrée"
* code.code = #PREItem
* code.displayName = "Prescription Item"
* code.codeSystem = "1.3.6.1.4.1.19376.1.9.2.2"
* code.codeSystemName = "IHE Pharmacy Item Type List"
* code.code 1..1 MS
* code.displayName MS
* code.codeSystem 1..1 MS
* consumable MS
* consumable ^short = "Produit de santé"
* consumable ^definition = "Produit de santé"
  * manufacturedProduct MS
    * manufacturedMaterial 1..1
      * nullFlavor ^short = "Fixé: NA"
      * nullFlavor 1..1 MS
      * nullFlavor = #NA
* author 0..1
* author ^short = "Auteur"
* author ^definition = "Auteur"
* author only FRCDAAuthor
* entryRelationship 0..1 MS
* entryRelationship ^short = "Traitement prescrit"
* entryRelationship ^definition = "Traitement prescrit"
* entryRelationship.typeCode = #REFR
* entryRelationship.substanceAdministration only FRCDATraitementPrescrit
* reference 0..1 MS
* reference ^short = "ID of parent container of referenced item"
* reference ^definition = "ID of parent container of referenced item"
* reference.typeCode = #XCRPT
* reference.externalDocument 1..1 MS