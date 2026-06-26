Logical: FRLMAllergiesAndIntolerances
Id: fr-lm-allergies-and-intolerances
Parent : FRLMSection
Title: "Logical model - FR LM Allergies And Intolerances"
Description: """Section Allergies et hypersensibilités"""
Characteristics: #can-be-target

* titleSection 1..1 
* titleSection ^short = "Allergies et hypersensibilités"
* subSection 0..0
* entry 1..*
  * allergieIntolerance 1..* FRLMAllergyIntolerance "Entrée Allergie ou Hypersensibilité"