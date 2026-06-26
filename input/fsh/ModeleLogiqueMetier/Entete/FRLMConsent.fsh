Logical: FRLMConsent
Id: fr-lm-consent
Title: "Logical model - FR LM Consent"			
Description: "Permet de documenter qu'un consentement éclairé a été obtenu et d'indiquer quel type de consentement a été fourni." 	
Characteristics: #can-be-target	

* identifier 0..* Identifier "Identifiant du consentement."	
* type 1..1 CodeableConcept "Type de consentement."
* status 1..1 CodeableConcept "Statut du consentement."