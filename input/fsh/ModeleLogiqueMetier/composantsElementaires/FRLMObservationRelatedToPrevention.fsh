Logical: FRLMObservationRelatedToPrevention
Id: fr-lm-observation-related-to-prevention
Parent: FRLMEntry
Title: "Logical model - FR LM Observation Related to Prevention"
Description: """Entrée Observation en rapport avec la prevention"""
Characteristics: #can-be-target

* code 1..1 CodeableConcept "Catégorie de l'entrée"
* resultat 1..1 CodeableConcept "Résultat de l'observation"
