Logical: FRLMOrderInformation
Id: fr-lm-order-information
Parent: FRLMSection
Title: "Logical model - FR LM Order Information"
Description: """Section Demande d'examen d'imagerie"""
Characteristics: #can-be-target

* titleSection 1..1 
* subSection 0..0
* entry
  * orderInformation 0..1 FRLMServiceRequest "Entrée Demande d'examen d'imagerie"
