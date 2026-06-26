Logical: FRLMMedicalDevicePrescriptions
Id: fr-lm-medical-device-prescriptions
Parent: FRLMSection
Title: "Logical Model - FR LM Medical Device Prescriptions"
Description: """Section Prescription de dispositifs médicaux"""
Characteristics: #can-be-target

* subSection 0..0
* entry 1..*
  * deviceUse  1..* FRLMDeviceUse "Entrée Dispositif médical prescrit"