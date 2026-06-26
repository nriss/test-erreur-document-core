Logical: FRLMHealthProfessional		
Id: fr-lm-health-professional
Title: "Logical model - FR LM Health Professional"			
Description: "Une personne (professionnel ou patient ou autre)" 
Characteristics: #can-be-target 
			 			 		
* identifier 0..1 Identifier "Identifiant."
* name 0..1 FRLMHumanName "Nom du professionnel de santé."
* address 0..* Address "Adresses géopostales du professionnel de santé."
* telecom 0..* ContactPoint "Coordonnées télécom du professionnel de santé."
* professionalRole 0..* Base "Rôle professionnel"
  * role 0..* CodeableConcept "Rôle du professionnel de santé."
  * organisation 0..1 FRLMOrganisation "Organisation à laquelle le professionnel de santé est rattaché pour exercer ce rôle."
  * specialty 0..* CodeableConcept "Spécialité d'un professionnel de santé qui décrit le rôle fonctionnel qu'il exerce au sein de l'organisation."


