Extension: FRStatusReasonExtension
Id: fr-status-reason-extension
Title: "FR Status Reason Extension"
Description: "Extension permettant d'indiquer le motif du statut métier d'une évaluation."
* ^context[+].type = #element
* ^context[=].expression = "Observation"
* value[x] only CodeableConcept