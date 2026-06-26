Logical: FRLMAdverseEventDuringHospitalization
Id: fr-lm-adverse-event-during-hospitalization
Parent: FRLMEntry
Title: "Logical model - FR LM Adverse Events During Hospitalization"
Description: """Entrée Evènements indésirables pendant l'hospitalisation"""
Characteristics: #can-be-target

* code 1..1 CodeableConcept "Code de l’observation"
* valeur 1..1 string "Description sous forme textuelle des évènements indésirables survenus pendant l'hospitalisation."