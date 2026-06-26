Logical: FRLMReferenceItemPrescription
Id: fr-lm-reference-item-prescription
Parent: FRLMEntry
Title: "Logical model - FR LM Référence item prescription"
Description: """Référence item prescription"""
Characteristics: #can-be-target

* code 1..1 CodeableConcept "Code de l'entrée"
* produitSante 1..1 FRLMMedication "Produit de santé"
* traitementPrescrit 0..1 FRLMMedicationPrescription "Traitement prescrit"
* reference 0..1 Base "ID of parent container of referenced item"
  * externalDocument 1..1 Base "Document référencé"
    * identifiant 1..1 identifier "Identifiant du document"
