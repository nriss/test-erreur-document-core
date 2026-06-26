Logical: FRLMQuantityExposure
Id: fr-lm-quantity-exposure
Parent: FRLMEntry
Title: "Logical model - FR LM Quantity Exposure"
Description: """Quantité exposition"""
Characteristics: #can-be-target

* header.participant[x].participantProfessional 1..1
  * ^short = "Identité du professionnel de santé ayant donné l'autorisation de l'exposition du patient aux rayonnements"
* type 1..1 CodeableConcept "Type de mesure d'exposition"
  * ^binding.description = "jdv-quantite-exposition-rayonnements-cisis (1.2.250.1.213.1.1.5.620)"
  * ^binding.valueSet = "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-quantite-exposition-rayonnements-cisis"
* quantity 1..1 Quantity "Quantité mesurée"
* bodySite 0..1 FRLMBodyStructure "Localisation anatomique irradiée (précision topographique)"