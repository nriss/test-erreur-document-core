Logical: FRLMMedicationPrescription
Id: fr-lm-medication-prescription
Parent: FRLMSection
Title: "Logical model - FR LM FR LM Medication Prescription"
Description: """Section Prescription de médicaments"""
Characteristics: #can-be-target

* subSection 0..0
* entry 1..*
  * prescriptionItem 1..* FRLMPrescriptionItem "Entrée Traitement prescrit"