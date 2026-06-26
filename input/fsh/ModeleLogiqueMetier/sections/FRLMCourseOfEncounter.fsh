Logical: FRLMCourseOfEncounter
Id: fr-lm-course-of-encounter
Parent: FRLMSection
Title: "Logical model - FR LM Course of encounter"
Description: """Section Résultats d'événements"""
Characteristics: #can-be-target

* subSection 0..0
* entry
  * testResults 1..* FRLMObservationResult "Entrée Simple observation"
  * patientTransfer 0..* FRLMPatientTransfer "Entrée Transfert du patient"
  * diagnosticSummary  0..* FRLMCondition "Entrée Problème"
  * procedures 0..* FRLMProcedure "Entrée Acte"
  * medicalDevicesAndImplants 0..* FRLMDeviceUse "Entrée Dispositif médical et implant"
  // à voir si on va suivre la meme logique que l'Europe et créer un profil spécifique MedicationUse
  * medications 0..* FRLMMedicationAdministration "Entrée Traitement administré pendant le séjour"
  * notes 0..1 string "Entrée Note"