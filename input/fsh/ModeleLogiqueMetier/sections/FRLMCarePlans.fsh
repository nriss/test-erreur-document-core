Logical: FRLMCarePlans
Id: fr-lm-care-plans
Parent: FRLMSection
Title: "Logical model - FR LM CarePlans"
Description: """Section Plan de soins"""
Characteristics: #can-be-target

* titleSection 1..1 
* subSection 0..0
* entry
  * carePlans 0..* FRLMCarePlan "Entrée Plan de soins"