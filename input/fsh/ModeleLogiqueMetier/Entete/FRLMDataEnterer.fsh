Logical: FRLMDataEnterer	
Id: fr-lm-data-enterer	
Title: "Logical model - FR LM Data Enterer"	
Description: "Opérateur de saisie de la totalité ou d'une partie du contenu du document." 	
Characteristics: #can-be-target	
* . 0..1
* date 1..1 dateTime "Date de la saisie."		
* dataEnterer[x] 1..1 FRLMHealthProfessional or FRLMPatient "Opérateur de saisie"		 