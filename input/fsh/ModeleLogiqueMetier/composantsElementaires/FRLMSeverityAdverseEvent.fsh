Logical: FRLMSeverityAdverseEvent
Id: fr-lm-severity-adverse-event	
Title: "Logical model - FR LM Severity Adverse Event"
Description: """Entrée Gravité effet indésirable"""
Characteristics: #can-be-target

* code 1..1 CodeableConcept "Code de l'entrée"
* niveauGravite 1..1 CodeableConcept "Niveau de gravité"
