Logical: FRLMConclusion
Id: fr-lm-conclusion
Parent: FRLMSection
Title: "Logical model - FR LM Conclusion"
Description: """Section Conclusion"""
Characteristics: #can-be-target

* titleSection 1..1 
* description
  * ^short = "Conclusions"
* subSection 0..0
* entry
  * conditionOrFinding[x] 0..* FRLMCondition or FRLMObservation "Conditions ou observations associées aux conclusions"