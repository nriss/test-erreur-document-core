Logical: FRLMFamilyMedicalHistory
Id: fr-lm-family-medical-history
Parent: FRLMSection
Title: "Logical model - FR LM Family Medical History"
Description: """Section Antécédents familiaux"""
Characteristics: #can-be-target

* subSection 0..0
* entry 1..*
  * familyMemberHistory 1..* FRLMFamilyMemberHistory "Entrée Antécédents familiaux"