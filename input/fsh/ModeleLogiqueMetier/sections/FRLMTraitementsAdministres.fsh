Logical: FRLMTraitementsAdministres
Id: fr-lm-traitements-administres
Parent: FRLMSection
Title: "Logical model - FR LM Traitements administrés"
Description: """Section Traitements administrés"""
Characteristics: #can-be-target

* subSection 0..0
* entry 1..*
  * medicationAdministration 1..* FRLMMedicationAdministration "Entrée Traitement"