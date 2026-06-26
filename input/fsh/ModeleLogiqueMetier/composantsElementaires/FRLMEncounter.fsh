Logical: FRLMEncounter
Id: fr-lm-encounter
Parent : FRLMEntry
Title: "Logical model - FR LM Encounter"
Description: """Entrée Rencontre"""
Characteristics: #can-be-target

* header.author[x]
  * ^short = "Responsable de la rencontre"
* header.participant[x] 0..0
* participant 0..* FRLMParticipant "Personne impliquée dans la rencontre"
* period 1..1 Period "Date de début et de fin de la rencontre."
* priority 0..1 CodeableConcept "Priorité de la rencontre (ex : urgence, etc.)."
* type 1..1 CodeableConcept "Type de la rencontre (hospitalisation, soins à domicile, etc.)."
* serviceProvider 0..1 FRLMOrganisation "Organisation (établissement) responsable de cette rencontre"
* referringProfessional 0..1 FRLMHealthProfessional "Professionnel de santé référent"
* basedOn[x] 0..* FRLMCarePlan or FRLMServiceRequest "Référence à la demande ayant initié cette rencontre"
* reason[x] 0..* CodeableConcept or FRLMCondition or FRLMProcedure or FRLMObservation or string "Motif(s) de l'admission, ex : problème, procédure ou constatation."
* admission 0..1 Base "Détails de l'admission"
  * admitter 0..1 FRLMHealthProfessional "Professionnel de santé ayant admis le patient"
  * admitSource 0..1 CodeableConcept "Source de l'admission (ex : référence d'un médecin, transfert)."
* dischargeDiagnosis[x] 0..* CodeableConcept or FRLMCondition "Les diagnostics au moment de la sortie."
* dischargeDestination 0..1 Base "Type et lieu de sortie"
  * type 0..1 CodeableConcept "Type de sortie"
  * location[x] 0..1 FRLMOrganisation or FRLMLocation "Le lieu ou l'organisation"
* serviceLocation 0..* Base "Liste des lieux où le patient était présent pendant cette rencontre."
  * period 0..1 Period "Période pendant laquelle le patient était présent au lieu"
  * organisationPart[x] 1..1 FRLMOrganisation or FRLMLocation "Organisation ou partie d'une organisation (ex : département) où le patient était présent pendant la rencontre."
* subEncounter 0..* FRLMEncounter "référence aux rencontres considérées comme faisant partie de cette rencontre."
* note 0..1 string "Notes"