Logical: FRLMPatientTransfer
Id: fr-lm-patient-transfer
Parent: FRLMEntry
Title: "Logical model - FR LM Patient Transfer."
Description: """Entrée Transfert du patient"""
Characteristics: #can-be-target

* code 1..1 CodeableConcept "Code de l’entrée"
* header.date ^short = "Date du transfert"
* header.participant[x].participantOrganisation ^short = "Destination"