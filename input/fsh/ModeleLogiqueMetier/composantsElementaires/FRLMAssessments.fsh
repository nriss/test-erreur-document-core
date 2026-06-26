Logical: FRLMAssessments
Id: fr-lm-assessments
Parent: FRLMEntry
Title: "Logical model - FR LM Assessments"
Description: """Entrée Groupe de questionnaires d'évalutation"""
Characteristics: #can-be-target

* code 1..1 CodeableConcept "Code de l'entrée"
* evaluation 1..* FRLMObservationAssessment "Évaluation"
