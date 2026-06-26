Profile: FRObservationBloodProductTransfusionDocument
Parent: Observation
Id: fr-observation-blood-product-transfusion-document
Title: "Observation - FR Blood Product Transfusion Document"
Description: "FRObservationBloodProductTransfusionDocument permet d'indiquer s'il a eu ou pas transfusion de produit sanguin."

* code = $terminologie-cisis#MED-145 "Transfusion de produits sanguins"

* value[x] only boolean
* valueBoolean 1..1 MS
  * ^short = "Transfusion de produit sanguin."

* insert FRRuleSetSimpleObservation