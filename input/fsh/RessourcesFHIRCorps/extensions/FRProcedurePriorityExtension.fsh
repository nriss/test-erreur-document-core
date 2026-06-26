Extension: FRProcedurePriorityExtension
Id: fr-procedure-priority-extension
Title: "FR Procedure Priority Extension"
Description: "Extension permettant d’indiquer d'indique la priorité clinique de l’observation."
* ^context[+].type = #element
* ^context[=].expression = "Procedure"
* value[x] only CodeableConcept
* valueCodeableConcept from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-hl7-v3-ActPriority-cisis