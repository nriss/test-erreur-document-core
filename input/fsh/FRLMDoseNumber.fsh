Logical: FRLMDoseNumber
Id: fr-lm-dose-number
Title: "Logical model - FR LM Dose Number"
Description: """Entrée Rang de la vaccination"""
Characteristics: #can-be-target

* identifiantRangVaccination 0..* Identifier "Identifiant de l’entrée"
* codeRangVaccination 1..1 CodeableConcept "Code de l'entrée"
* derivationRangVaccination 0..1 string "derivation."
* descriptionRangVaccination 0..1 markdown "Partie narrative de l’entrée"
* statutRangVaccination 1..1 code "Statut de l’entrée" 
* dateRangVaccination 0..1 dateTime "Date de l’observation" 
* prioriteRangVaccination 0..1 CodeableConcept "Priorité" 
* nombreRenouvellements 0..1 Range "Nombre de renouvellements possibles" 
* languageRangVaccination 0..1 code "Language"
* rangVaccination 1..1 integer "Rang de la vaccination" 
