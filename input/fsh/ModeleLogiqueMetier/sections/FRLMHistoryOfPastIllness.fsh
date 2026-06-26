Logical: FRLMHistoryOfPastIllness
Id: fr-lm-history-of-past-illness
Parent: FRLMSection
Title: "Logical model - FR LM FRLM History Of Past Illness"
Description: """Section Antécédents médicaux"""
Characteristics: #can-be-target

* titleSection 1..1
* subSection 0..0
* entry 1..*
  * problem 1..* FRLMCondition "Entrée Problème"