// ML à supprimé ? en FHIR : AdverseEvent.suspectEntity.causality
Logical: FRLMImputabiliteEffetIndesirable	
Id: fr-lm-imputabilite-effet-indesirable
Parent: FRLMEntry
Title: "logical model - FR LM Imputabilite effet indesirable"
Description: """Entrée Imputabilite effet indesirable"""
Characteristics: #can-be-target

* code 1..1 CodeableConcept "Code de l'entrée."
* niveauImputabilite 1..1 CodeableConcept "Niveau d'imputabilité"