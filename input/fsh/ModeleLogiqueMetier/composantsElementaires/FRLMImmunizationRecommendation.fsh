Logical: FRLMImmunizationRecommendation
Id: fr-lm-immunization-recommendation
Parent: FRLMEntry
Title: "Logical model - FR LM Immunization Recommendation"
Description: """Entrée Vaccin recommandé"""
Characteristics: #can-be-target

* recommendedVaccineCode 1..1 CodeableConcept "Type d'acte : vaccination"
* recommendedVaccineStatus 1..1 code "Statut de l’entrée"
* vaccinationPeriod 1..1 dateTime "Période de vaccination souhaitable"
* routeOfAdministration 0..1 CodeableConcept "Voie d’administration"
* anatomicalRegion 0..* CodeableConcept "Région anatomique d'administration"
  * ^binding.description = "SNOMED CT (2.16.840.1.113883.6.96)"
* administeredDose 0..1 Quantity "Dose administrée"
* vaccine 1..1 FRLMMedication "Vaccin"
* prescriptionReference 0..1 FRLMPrescriptionEntree "Référence de la prescription"
* vaccinationRank 0..1 FRLMDoseNumber "Rang de la vaccination"
* comment 0..1 string "Commentaire"