Logical: FRLMMedicationSummary
Id: fr-lm-medication-summary
Parent : FRLMSection 
Title: "Logical model - FR LM Medication Summary"
Description: """Section Traitements"""
Characteristics: #can-be-target

* titleSection 1..1 
* subSection 0..0
* entry
  * medicationAdministration 1..* FRLMMedicationAdministration "Entrée Traitement"