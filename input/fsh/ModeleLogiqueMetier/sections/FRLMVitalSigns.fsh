Logical: FRLMVitalSigns
Id: fr-lm-vital-signs
Parent: FRLMSection
Title: "Logical model - FR LM Vital Signs"
Description: """Section Signes vitaux"""
Characteristics: #can-be-target

* titleSection 1..1 
* subSection 0..0
* entry
  * observationVitalSign 1..* FRLMObservationVitalSign "Entrée Signes vitaux"