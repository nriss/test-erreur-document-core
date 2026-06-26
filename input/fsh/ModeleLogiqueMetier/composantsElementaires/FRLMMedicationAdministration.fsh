Logical: FRLMMedicationAdministration
Id: fr-lm-medication-administration	
Parent: FRLMEntry	
Title: "Logical model- FR LM Medication Administration	"
Description: """Entrée Traitement"""
Characteristics: #can-be-target

* dureeTraitement 0..1 dateTime "Durée du traitement"
* dosage 0..1 FRLMDosageInstructions "Posologie"
* medicament 1..1 FRLMMedication "Médicament"
* reason[x] 0..* CodeableConcept or Reference "Motif du traitement"