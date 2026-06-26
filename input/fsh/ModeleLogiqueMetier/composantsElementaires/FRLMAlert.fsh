Logical: FRLMAlert
Id: fr-lm-alert
Parent: FRLMEntry
Title: "Logical model - FR LM Alert"
Description: """Entrée points de vigilances"""
Characteristics: #can-be-target

* header.status 1..1
  * ^short = "Statut de l'alerte"
* code 0..1 CodeableConcept "Code de l'alerte"
* description 0..1 string "Description narrative de l'alerte"
* priority 0..1 CodeableConcept "Priorite"
  * ^binding.description = "(preferred): hl7:Flag-priority-code"
* period 0..1 Period "Période de validité de l'alerte. Durée entre l'activation et la désactivation de l'alerte. Si l'alerte est active, la fin de cette période ne doit pas être spécifiée."
* sourceReference 0..* Reference "Référence de la source de l'alerte"
