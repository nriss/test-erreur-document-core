// Ou bien le garder le profil FRObsrvationPregnancyHistoryDocument
Profile: FRPregnancyHistoryDocument
Parent: List
Id: fr-pregnancy-history-document
Title: "List - FR Pregnancy History Document"
Description: "FRPregnancyHistoryDocument  est une liste contenant soit un événement de naissance, soit une observation sur la grossesse, mais pas les deux."

* identifier 1..1 MS 
  * ^short = "Identifiant"
* code 1..1 MS
* code = $SCT#118185001 "constatation à propos de la grossesse"
* status MS
* status = #current
* date 1..1 MS 
  * ^short = "Période de la grossesse"
* entry 1..*
* entry ^short = "Références vers des observations de type grossesse ou naissance"
* entry.item only Reference(FRObservationPregnancyDocument or FRObservationBirthEventDocument)