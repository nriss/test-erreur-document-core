Logical: FRLMAdmissionEvaluation
Id: fr-lm-admission-evaluation
Parent: FRLMSection
Title: "Logical model - FR LM Admission Evaluation"
Description: """Section Évaluation à l'admission"""
Characteristics: #can-be-target

* titleSection 1..1
* subSection 0..0
* entry
  * encounterInformation 0..1 FRLMEncounter "Entrée Informations sur la rencontre"
  * objectiveFindings 0..* FRLMObservation "Constatations objectives"
  * functionalStatus[x] 0..* FRLMCondition or FRLMObservation "Statut fonctionnel"
  * note 0..1 string "Commentaire"
