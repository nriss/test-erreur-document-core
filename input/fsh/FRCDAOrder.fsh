// StructureDefinition for Order
Profile: FRCDAOrder
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Order
Id: fr-cda-order
Title: "CDA - order"
Description: "L'élément de l'en-tête du CDA order permet de représenter la prescription à l’origine de l’acte dont résulte le document." 
* ^status = #draft
* nullFlavor 0..0
* typeId.nullFlavor 0..0
* typeId.assigningAuthorityName 0..0
* typeId.displayable 0..0
* id ^short = "Identifiant de la prescription, obligatoire pour :
- un CR de biologie pour porter l’Order Placer Number (numéro de la prescription attribué par le prescripteur)
- un CR d’imagerie pour porter l'Order Placer Number (numéro de la demande attribué par le demandeur), avec l'attribut @root contenant l'autorité d'affectation et l'attribut @extension contenant l'identifiant géré par cette autorité."
* id.root 1..1
* id.root ^short = "OID"
* id.extension 0..1
* id.extension ^short = "Obligatoire pour un CR d'imagerie"
* id.nullFlavor 0..0
* id.assigningAuthorityName	0..0
* id.displayable 0..0
* code 0..0
* priorityCode 0..0