Logical: FRLMAttester	
Id: fr-lm-attester	
Title: "Logical model - FR LM Attester"	
Description: "Professionnel attestant la validité des informations portées dans le document sans pour autant en prendre la responsabilité. N'est pas utilisé dans un document d'expression personnelle du patient/usager et un document produit par un système." 	
Characteristics: #can-be-target	
* dateTime 1..1 dateTime "Date/Heure de l'attestation de validité."		 			 			 		
* attester[x] 1..1 FRLMHealthProfessional or FRLMDevice "Professionnel attestant la validité."		 	