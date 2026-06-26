Logical: FRLMCarePlan
Id: fr-lm-care-plan
Parent: FRLMEntry
Title: "Logical model - FR LM Care Plan"
Description: """Entrée Plan de soins"""
Characteristics: #can-be-target

* header.status 1..1
  * ^short = "Statut du plan de soin (projet, actif, suspendu, annulé, terminé, erreur, inconnu)"
* addresses 0..* FRLMCondition "Problèmes de santé traités par ce plan"
* goal 0..* CodeableConcept "Résultat souhaité du plan"
* activity 0..* Reference "Action incluse dans ce plan de soins"
