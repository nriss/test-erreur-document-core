Logical: FRLMServiceRequest
Id: fr-lm-service-request
Parent: FRLMEntry
Title: "Logical model - FR LM Service Request"
Description: """Entrée Demande d'examen ou de suivi / Objectif à atteindre"""
Characteristics: #can-be-target

* header.status 1..1
  * ^short = "Statut de la demande"
* code 1..1 CodeableConcept "Type de la demande"
* quantity 0..1 Quantity "Quantité demandée"
* bodySite 0..* FRLMBodyStructure "Localisation anatomique"
* reason[x] 0..* FRLMObservation or FRLMCondition or FRLMMedication or string "Motif de la demande"
* priority 0..1 CodeableConcept "Priorité de la demande"
  * ^binding.description = "(preferred): HL7 Request Priority"
* supportingInformation[x] 0..* FRLMObservation or FRLMCondition or FRLMProcedure or FRLMMedicationAdministration "Informations pertinentes pour l'interprétation des résultats, par exemple le statut de jeûne, le sexe, etc."
* specimen 0..* FRLMSpecimen "Prélèvement"
* encounter 0..1 FRLMEncounter "Consultation à l'origine, pour avoir des informations complémentaires sur le contexte dans lequel cette demande est formulée"
* occurrence[x] 1..1 dateTime or Period "Date ou période prévisionnelle de l'examen"
* patientInstructions 0..1 string "Instructions au patient"