Logical: FRLMParticipant	
Id: fr-lm-participant	
Title: "Logical model - FR LM Participant"		
Description: "Personne/Structure impliquée dans les évènements décrits par le document qui n'a pas été mentionné ailleurs." 	
Characteristics: #can-be-target	

* identifier 0..* Identifier "Identifiants de la personne"
* name 0..*	fr-lm-human-name "Nom de la personne"
* type 1..1 CodeableConcept	"Type de participation"
  * ^binding.description = "jdv-hl7-v3-ParticipationType-cisis (2.16.840.1.113883.1.11.10901)"
  * ^binding.valueSet = "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-hl7-v3-ParticipationType-cisis"
* role 0..1 CodeableConcept	"Rôle fonctionnel"
  * ^binding.description = "JDV_J47_FunctionCode_CISIS (1.2.250.1.213.1.1.5.124)"
  * ^binding.valueSet = "https://mos.esante.gouv.fr/NOS/JDV_J47-FunctionCode-CISIS/FHIR/JDV-J47-FunctionCode-CISIS"
* period 0..1 Period "Période de la participation"
* participant 1..1 Base "Participant"
  * participantProfessional 0..* FRLMHealthProfessional "Le participant est un professionnel de santé"
  * participantOrganisation 0..* FRLMOrganisation "Le participant est une organisation"
  * participantDevice 0..* FRLMDevice "Le participant est un système"