Logical: FRLMReasonForReferral
Id: fr-lm-reason-for-referral
Parent: FRLMSection
Title: "Logical model - FR LM Reason for referral"
Description: """Section Raison de la recommandation"""
Characteristics: #can-be-target

* subSection 0..0
* entry 1..*
  * observation  1..1 FRLMObservation "Entrée Simple observation"
  * problemes  1..* FRLMCondition "Entrée Problème"