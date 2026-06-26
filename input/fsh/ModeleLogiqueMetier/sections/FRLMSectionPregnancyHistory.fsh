Logical: FRLMSectionPregnancyHistory
Id: fr-lm-section-pregnancy-history
Parent: FRLMSection
Title: "Logical model  - FR LM Pregnancy History"
Description: """Section Historique des grossesses"""
Characteristics: #can-be-target

* titleSection 1..1 
* subSection 0..0
* entry
  * pregnancyStatus 0..1 FRLMPregnancyStatus "Statut de grossesse"	
  * pregnancyHistory 0..* FRLMPregnancyHistory "Historique des grossesses. Exemple : nb d'enfants nés vivants, etc…"
* note 0..1 string "Commentaire"	