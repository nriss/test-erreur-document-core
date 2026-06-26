Logical: FRLMStatusDocumentEntry
Id: fr-lm-status-document-entry
Parent: FRLMEntry
Title: "Logical model - FR LM Statut du document"
Description: """Entrée Statut du document"""
Characteristics: #can-be-target

* code 1..1 CodeableConcept "Code de l'entrée"
* statutDocument 1..1 CodeableConcept "Statut du document"
  * ^binding.description = "jdv-statut-document-cisis (1.2.250.1.213.1.1.5.93)"
