Logical: FRLMObservationResults
Id: fr-lm-observation-results
Parent: FRLMSection
Title: "Logical model - FR LM ObservationResults"
Description: """Section Résultats"""
Characteristics: #can-be-target

* titleSection 1..1
* subSection 0..0
* entry 
  * observationResult 0..* FRLMObservationResult "Entrée Resultats"