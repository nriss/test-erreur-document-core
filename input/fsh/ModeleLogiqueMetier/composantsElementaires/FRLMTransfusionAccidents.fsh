Logical: FRLMTransfusionAccidents
Id: fr-lm-transfusion-accidents
Parent: FRLMEntry
Title: "Logical model - FR LM Transfusion accidents"
Description: """Entrée Accidents transfusionnels"""
Characteristics: #can-be-target

* code 1..1 CodeableConcept "Code de l’observation"
* valeur 1..1 string  "Description sous forme textuelle de l'accident transfusionnel"