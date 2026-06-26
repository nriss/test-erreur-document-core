Profile: FRObservationMultiresistantMicroorganismsIdentificationDocument
Parent: Observation
Id: fr-observation-multiresistant-microorganism-document
Title: "Observation - FR Observation Multiresistant Microorganisms Identification Document"
Description: """FRObservationMultiresistantMicroorganismsIdentificationDocument permet de décrire sous forme textuelle les micro-organismes identifiés."""

* code = https://smt.esante.gouv.fr/fhir/CodeSystem/terminologie-cisis#MED-144 "Identification de micro-organismes multirésistants"
* value[x] only string
* valueString 1..1 MS
  * ^short = "Description sous forme textuelle des micro-organismes identifiés"
* insert FRRuleSetSimpleObservation
