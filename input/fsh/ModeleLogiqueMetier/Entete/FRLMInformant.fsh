Logical: FRLMInformant
Id: fr-lm-informant					
Title: "Logical model - FR LM Informant"				
Description: "Informant (personne ayant fourni des informations utiles à la production du document : professionnel, structure, patient/usager, autre), personne de confiance, personne à prévenir en cas d'urgence, aidant, aidé."							
* informant[x] 0..* Base "Informateur / personne de confiance / personne à prévenir en cas d’urgence / aidant / personne aidée."			
  * informantProfessional 0..* FRLMHealthProfessional "L'informateur est un professionnel de santé"
  * informantOrganisation 0..* FRLMOrganisation "L'informateur est une organisation"
  * informantPersonne[x] 0..* FRLMRelatedPerson or FRLMPatient "L'informateur est un patient/usager ou un autre type d'informateur (ex : aidant, personne à prévenir en cas d'urgence, etc.)"