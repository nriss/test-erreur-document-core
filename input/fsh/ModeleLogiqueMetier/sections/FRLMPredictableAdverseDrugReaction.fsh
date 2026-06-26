Logical: FRLMPredictableAdverseDrugReaction
Id: fr-lm-predictable-adverse-drug-reaction
Parent: FRLMSection 
Title: "Logical model - FR LM Predictable Adverse Drug Reaction"
Description: """Section Effets indesirables"""
Characteristics: #can-be-target

* subSection 0..0
* titleSection 1..1 
* entry 1..*  
  * adverseEvent  1..* FRLMAdverseEvent "Entrée Effet indesirable"