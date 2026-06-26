Logical: FRLMTravelHistory
Id: fr-lm-travel-history
Parent : FRLMEntry
Title: "Logical model - FR LM TravelHistory"
Description: """Historique des voyages."""
Characteristics: #can-be-target

* country 1..1	CodeableConcept	"Pays de destination du voyage"
  * ^binding.description = "ISO 3166"
  * ^binding.strength = #preferred
* period 0..1 Period "Période du voyage"