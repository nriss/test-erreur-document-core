Logical: FRLMRecommendation
Id: fr-lm-recommendation
Parent: FRLMSection
Title: "Logical model - FR LM Recommendation"
Description: """Section Recommandation"""
Characteristics: #can-be-target

* titleSection 1..1 
* subSection 0..0
* entry 0..*
  * carePlan 0..* FRLMCarePlan "Recommandation sous forme de plan de soins"