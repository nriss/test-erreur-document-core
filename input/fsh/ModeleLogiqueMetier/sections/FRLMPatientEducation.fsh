Logical: FRLMPatientEducation
Id: fr-lm-patient-education
Parent: FRLMSection
Title: "Logical model - FR LM Patient Education"
Description: """Section Education du patient"""
Characteristics: #can-be-target

* subSection 0..0 
* entry 
  * procedure  0..* FRLMProcedure "Entrée Acte"
  * observation  0..* FRLMObservation "Entrée Simple observation"
  * reference 0..* FRLMAttachment "Entrée Références externes"