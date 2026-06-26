Logical: FRLMOrder	
Id: fr-lm-order	
Title: "Logical model - FR LM Order"	
Description: "Association to an order that is the origin of the act resulting in the document." 	
Characteristics: #can-be-target	

* orderId 1..1 Identifier "Identifiant de la demande."		 				 			 		
* accessionNumber 0..1 Identifier "Accession Number (Spécifique à l’imagerie)."	 
* orderDateAndTime 0..1 dateTime "Date et heure de la demande."
* orderPlacer[x] 0..1 FRLMHealthProfessional or FRLMOrganisation or FRLMPatient "La personne/l'organisation à l'origine de la demande."	
* orderReason[x] 0..* CodeableConcept or FRLMCondition or FRLMObservation "Motif de la demande."	
