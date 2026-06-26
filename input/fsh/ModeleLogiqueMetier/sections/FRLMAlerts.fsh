Logical: FRLMAlerts
Id: fr-lm-alerts
Parent: FRLMSection
Title: "Logical model - FR LM Alerts"
Description: """Section Points de vigilance """
Characteristics: #can-be-target

* titleSection 1..1 
* subSection 0..0
* entry
  * alert 0..* FRLMAlert "Points de vigilance"