Logical: FRLMModaliteEntree
Id: fr-lm-modalite-entree
Parent: FRLMEntry
Title: "logical model - FR LM Modalité d'entrée"
Description: """Entrée Modalité d'entrée"""
Characteristics: #can-be-target

* code 1..1 CodeableConcept "Code de l’observation"
* modaliteEntree 1..1 CodeableConcept "Modalité d'entrée"
  * ^binding.description = "jdv-modalite-entree-cisis (1.2.250.1.213.1.1.5.73)"
  * ^binding.valueSet = "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-modalite-sortie-cisis"