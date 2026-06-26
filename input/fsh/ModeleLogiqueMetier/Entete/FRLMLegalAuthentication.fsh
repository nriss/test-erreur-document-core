Logical: FRLMLegalAuthentication	
Id: fr-lm-legal-authentication
Title: "Logical model - FR LM Legal Authentication"	
Description: "Représente le responsable du document, qui est : 
 - soit le professionnel qui prend la responsabilité du document produit par un lui-même ou un autre professionnel. 
 - soit le professionnel qui prend la responsabilité du document produit par un système de structure (ES, …). 
 - soit le patient/usager responsable du document d'expression personnelle 
 - soit le SNR responsable du document produit via ce SNR. 
 - Soit le Dossier Pharmaceutique (DP) responsable des documents qu'il produit"
Characteristics: #can-be-target
* . 1..1 
* dateTime 1..1 dateTime "Date/Heure de la prise de responsabilité."		 			 			 		
* legalAuthenticator[x] 1..1 FRLMHealthProfessional or FRLMPatient or FRLMDevice or FRLMOrganisation "Responsable du document."		 		
