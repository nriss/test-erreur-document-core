Profile: FRCDAProduitDeSante
Parent: http://hl7.org/cda/stds/core/StructureDefinition/ManufacturedProduct
Id: fr-cda-produit-de-sante
Title: "CDA - FR Produit de sante"
Description: "Entrée FR-Produit-de-sante: IHE-PCC - Product-Entry. L'entrée Produit de santé permet de décrire un médicament ou un vaccin."
* templateId 1..3
* templateId ^slicing.discriminator.type = #value
* templateId ^slicing.discriminator.path = "root"
* templateId ^slicing.rules = #open
* templateId contains iheProductEntry 1..1
and frProduitDeSante 1..1
and ccdProductEntry 1..1
* templateId[iheProductEntry].root = "1.3.6.1.4.1.19376.1.5.3.1.4.7.2"
* templateId[frProduitDeSante].root = "1.2.250.1.213.1.1.3.43"
* templateId[ccdProductEntry].root = "2.16.840.1.113883.10.20.1.53"
* manufacturedMaterial MS
* manufacturedMaterial 1..1
  * templateId 0..1
  * templateId.root = "1.3.6.1.4.1.19376.1.9.1.3.1"
  * code 1..1
  * code.originalText.reference 1..1
  * code.translation ^short = "Autre codification - CIP : Code Identifiant de Présentation (1.2.250.1.213.2.3.2) de l'ANSM (13 chiffres) - UCD : Unités Communes de Dispensation (1.2.250.1.213.2.61) du Club Inter Pharmaceutique - ATC : Classification anatomique, thérapeutique et chimique (2.16.840.1.113883.6.73)  - MV : Médicament Virtuel (1.2.250.1.213.2.59) de Medicabase (MV+ 8 chiffres) "
  * code.nullFlavor 0..1
  * name MS
  * name 1..1
  * name ^short = "Nom de marque du produit"
  * lotNumberText ^short = "Numéro de lot"
//  hl7:manufacturedProduct.hl7:manufacturedMaterial.pharm:formCode
//  hl7:manufacturedProduct.hl7:manufacturedMaterial.pharm:expirationTime
//  hl7:manufacturedProduct.hl7:manufacturedMaterial.pharm:asContent
//  hl7:manufacturedProduct.hl7:manufacturedMaterial.pharm:asSpecializedKind
//  hl7:manufacturedProduct.hl7:manufacturedMaterial.pharm:ingredient