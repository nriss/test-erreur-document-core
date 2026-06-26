Profile: FRObservationPregnancyHistoryDocument
Parent: Observation
Id: fr-observation-pregnancy-history-document
Title: "Observation - FR Observation Pregnancy History Document"
Description: "FRObservationPregnancyHistoryDocument permet de regrouper les observations relatives à un épisode de grossesse."

* identifier 1..1 MS 
  * ^short = "Identifiant de l'observation"
* code MS
* code.coding.system = $SCT
* code.coding.code = #118185001
* code.coding.display = "constatation à propos de la grossesse"
* status ^short = "Statut de l'observation"
* status = #final
* effective[x] 1..1 MS
* effective[x] only Period
  * ^short = "Période de la grossesse"

* hasMember 1..* MS
  * ^short = "Informations relatives à la grossesse"
* hasMember only Reference(FRObservationPregnancyDocument or FRObservationBirthEventDocument) 

* value[x] 0..0