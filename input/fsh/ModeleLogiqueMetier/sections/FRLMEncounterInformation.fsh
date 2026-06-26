Logical: FRLMEncounterInformation
Id: fr-lm-encounter-information
Parent: FRLMSection
Title: "Logical model - FR LM Encounter Information"
Description: """Section Informations sur la rencontre"""
Characteristics: #can-be-target

* titleSection 1..1 
* subSection 0..0
* entry
  * encounterInformation 0..1 FRLMEncounter "Entrée Informations sur la rencontre"
  * note 0..1 string "Commentaire"