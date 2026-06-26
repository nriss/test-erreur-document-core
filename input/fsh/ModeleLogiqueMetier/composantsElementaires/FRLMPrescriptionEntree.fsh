Logical: FRLMPrescriptionEntree
Id: fr-lm-prescription-entree
Title: "Logical model - FR LM Prescription"
Parent: FRLMEntry
Description: """Prescription """
Characteristics: #can-be-target

* identifiantPrescription 1..1 Identifier "Identifiant de la prescription"
//sequence
* nombreRenouvellements 0..1 Range "Nombre de renouvellements possibles"
//doseAndRate
* quantitePrescription 0..1 Quantity "Quantité" 
//additionalInstruction : CodeableConcept	
* instructionsAuDispensateur 0..1 string "Instructions au dispensateur"