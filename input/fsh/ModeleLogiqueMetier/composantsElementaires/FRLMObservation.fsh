Logical: FRLMObservation
Id: fr-lm-observation
Parent: FRLMEntry
//Parent: EHDSObservation
Title: "Logical model - FR LM Observation"
Description: """observation"""
Characteristics: #can-be-target

* code 1..1 CodeableConcept "Code de l'observation"
* observationDate 0..1 dateTime "Date de l'observation"
//* observationNombreRenouvellements 0..1 Range "Nombre de renouvellements possibles" 
* result[x] 0..* CodeableConcept or string or Quantity  or Ratio or Range "Valeur de l'observation"
* interpretation 0..1 CodeableConcept "Interprétation"
* method 0..1 CodeableConcept "Méthode"
* location 0..1 FRLMBodyStructure "Localisation anatomique"
  * ^binding.description = "SNOMED CT (2.16.840.1.113883.6.96)" 