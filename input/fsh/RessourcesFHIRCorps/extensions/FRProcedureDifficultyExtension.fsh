Extension: FRProcedureDifficultyExtension
Id: fr-procedure-difficulty-extension
Title: "FR Procedure Difficulty Extension"
Description: "Extension permettant d'indiquer la difficulté perçue ou mesurée d'un acte."

* ^context[+].type = #element
* ^context[=].expression = "Procedure"
* value[x] only CodeableConcept
* value[x] ^short = "Difficulté de l'acte"
* valueCodeableConcept from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-difficulte-cisis (example)
