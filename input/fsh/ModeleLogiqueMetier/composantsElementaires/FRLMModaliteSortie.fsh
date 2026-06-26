Logical: FRLMModaliteSortie
Id: fr-lm-modalite-sortie
Parent: FRLMEntry
Title: "Logical model - FR LM Modalité de sortie"
Description: """Entrée Modalité de sortie"""
Characteristics: #can-be-target

* code 1..1 CodeableConcept "Code de l’observation"
* modaliteSortie 1..1 CodeableConcept "Modalité d'entrée"
  * ^binding.description = "jdv-modalite-sortie-CISIS (1.2.250.1.213.1.1.5.74) ou autre JDV spécifique à un volet"