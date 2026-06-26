Logical: FRLMExaminationReport
Id: fr-lm-examination-report
Parent: FRLMSection
Title: "Logical model - FR LM Examination Report"
Description: """Section Acte d'imagerie"""
Characteristics: #can-be-target

* titleSection 1..1 
* subSection
  * conclusion 0..1	FRLMConclusion "Conclusion de l'examen"
* entry
  * imagingProcedures 1..1 FRLMProcedure "Entrée Techniques d'imagerie"
  * medicationAdministrations 0..* FRLMMedicationAdministration "Entrée Produits de santé administrés pendant l'acte d'imagerie"
  * adverseReactions 0..* FRLMAllergyIntolerance "Entrée allergies et intolérances"
  * results[x] 0..* FRLMObservation or string "Résultats d'examens"