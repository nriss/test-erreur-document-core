Logical: FRLMImmunisation
Id: fr-lm-immunisation
Parent: FRLMEntry
Title: "Logical model - FR LM Immunisation"
Description: """Entrée Vaccination"""
Characteristics: #can-be-target

* header.status 1..1
  * ^short = "Statut de la vaccination (réalisé, non fait, ...)."
* periodOfImmunisation 1..1 period "Période de vaccination - Si vaccin effectuée => que la dateDebutVaccination est renseignée - Si vaccin à effectuer => dateDebutVaccination et dateFinVaccination peuvent être renseignée (période souhaitée pour la vaccination)"
  * startDate 0..1 dateTime "Date de début"
  * endDate 0..1 dateTime "Date de fin"
* diseaseOrAgentTargeted 0..* CodeableConcept "Maladie ou agent contre lequel la vaccination offre une protection. Binding Description: (preferred): ICD-10"
* administeredProduct 1..1 FRLMMedication "Vaccin"
* route 0..1 CodeableConcept "Voie d'administration"
* site 0..* CodeableConcept "Région anatomique d'administration"
* doseQuantity 0..1 Quantity "Dose administrée"
* doseNumber 0..1 FRLMDoseNumber "Rang de la vaccination"
* note 0..1 string "Commentaire"
* prescription 0..1 FRLMPrescriptionEntree "Référence de la prescription"
* reaction 0..* FRLMCondition "Réaction observée suite au vaccin"
* reasonCode 0..* CodeableConcept "Raison de la vaccination (voyage, professionnel, etc.)"