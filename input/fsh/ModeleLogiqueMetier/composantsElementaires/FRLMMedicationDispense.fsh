Logical: FRLMMedicationDispense
Id: fr-lm-medication-dispense
Parent: FRLMEntry
Title: "Logical model - FR LM Medication Dispense"
Description: """Entrée Traitement dispense"""
Characteristics: #can-be-target

* header.author[x] 1..*
  * ^short = "Auteur de la Auteur de la dispensation"
* header.status 1..1 
  * ^short = "Statut de la ligne de prescription"
  * ^binding.description = "Valeur issue du JDV_CompletudeDispensation_CISIS (1.2.250.1.213.1.1.5.765)"
  * ^binding.valueSet = "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-completude-dispensation-cisis"
* receiver[x]	0..1 FRLMPatient or FRLMHealthProfessional or FRLMRelatedPerson			"Identification de la personne ayant reçu le médicament délivré, notamment lorsqu'il ne s'agit pas du patient. Si non présent, le patient est considéré comme le destinataire."			
* relatedRequest 0..* identifier "Référence de la prescription"
* medicament 1..1 FRLMMedication "Médicament délivré"
* dispensedQuantity 1..1 Quantity "Quantite de produit. 
Nombre d'emballages distribués si leur format est connu, ou nombre d'articles/unités plus petits, selon le médicament distribué. Une unité est attendue."
* timeOfDispensation	0..1 dateTime	"Date et heure de dispense du médicament. Si non présent, la date de dispensation est celle du header."
* substitutionOccurred 1..1 boolean "Autorisation de substitution"
* dosageInstructions 0..1 FRLMDosageInstructions "Posologie"
* note 0..1 string "Notes du dispensateur"