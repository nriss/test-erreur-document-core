Logical: FRLMObservationLongTermCondition
Id: fr-lm-observation-long-term-condition
Parent: FRLMEntry
Title: "Logical model - FR LM Observation Long Term Condition"
Description: """Entrée Observation en rapport avec une Affection Longue Durée (ALD)"""
Characteristics: #can-be-target

* code 1..1 CodeableConcept "Catégorie de l'entrée"
* resultat 1..1 CodeableConcept "Résultat de l'observation"