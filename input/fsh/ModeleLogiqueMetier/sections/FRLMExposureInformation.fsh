Logical: FRLMExposureInformation
Id: fr-lm-exposure-information
Parent: FRLMSection
Title: "Logical model - FR LM Exposure Information"
Description: """Section Exposition aux radiations"""
Characteristics: #can-be-target

* titleSection 1..1 
* subSection 0..0 
  * quantityExposure 0..* FRLMQuantityExposure "Entrée Quantité"
  * radiopharmaceuticalAdministration 0..1 FRLMMedicationAdministration "Entrée administration des produits radiopharmaceutiques"