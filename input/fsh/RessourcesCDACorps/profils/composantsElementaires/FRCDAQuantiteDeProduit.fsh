Profile: FRCDAQuantiteDeProduit
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Supply
Id: fr-cda-quantite-de-produit
Title: "CDA - FR Quantite de produit"
Description: "Entrée FR-Quantite-de-produit: IHE-PRE - Amount of units of the consumable. Cette entrée permet de décrire la quantité de produit (<consumable>)."
* classCode MS
* moodCode MS
* moodCode = #RQO
* templateId 1..2
* templateId ^slicing.discriminator.type = #value
* templateId ^slicing.discriminator.path = "root"
* templateId ^slicing.rules = #open
* templateId contains pccAmountOfUnitOfTheConsummable 1..1
and frQuantiteDeProduit 1..1
* templateId[pccAmountOfUnitOfTheConsummable].root = "1.3.6.1.4.1.19376.1.9.1.3.8"
* templateId[frQuantiteDeProduit].root = "1.2.250.1.213.1.1.3.86"
* independentInd 1..1
  * value = false
* quantity 1..1
* quantity ^short = "Quantité de produit. 
Si l'élément 'consumable' auquel cette entrée est rattachée contient des informations sur le conditionnement, alors l'élement 'quantity' DOIT contenir la quantité d'emballages primaires du médicament. La valeur se réfère à l'emballage primaire figurant dans l'élément 'pharm:asContent' du médicament. 
Par exemple, si la valeur est de 2 et que l'élément 'pharm:asContent'; décrit une plaquette contenant 30 comprimés, cela signifie que 2 plaquettes (de 30 comprimés chacune) ont été prescrites. 
Les emballages inférieures (subContent) ou supérieurs (asSuperContent) ne sont pas concernés. Dans ce cas, l'unité ne doit pas être présente.
Si l'élément 'consumable' auquel cette entrée est rattachée ne contient pas d'informations sur le conditionnement, l'élément 'quantity' DOIT contenir la quantité d'unités consommables du médicament. Dans ce cas, l'unité peut être fournie s'il s'agit de quantité non dénombrables."
* quantity ^definition = "Quantité de produit"
* quantity.value 1..1
* quantity.unit 0..1
