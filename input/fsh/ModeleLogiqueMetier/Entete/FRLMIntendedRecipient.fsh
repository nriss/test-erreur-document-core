Logical: FRLMIntendedRecipient		
Title: "Logical model - FR LM Intended Recipient"	
Id: fr-lm-intended-recipient		
Description: "Personne déclarée comme destinataire prévu du document.
- Attention : Cet élément ne contient que le(s) destinataire(s) initialement prévu(s) à la création du document. Rien ne permet par la suite, de certifier que le document a réellement été envoyé à ce(s) destinataire(s).
 Par ailleurs, il ne faut pas créer de nouvelle version du document si on souhaite l'envoyer à d'autres destinataires." 	
Characteristics: #can-be-target	
* intendedRecipient[x] 0..* Base "destinataire prévu du document" 
  * intendedRecipientPatient 0..* FRLMPatient "Le destinataire prévu est un patient"
  * intendedRecipientRelatedPerson 0..*	 FRLMRelatedPerson "Le destinataire prévu est une personne de confiance du patient"
  * intendedRecipientHealthProfessional 0..* FRLMHealthProfessional "Le destinataire prévu est un professionnel de santé"
  * intendedRecipientOrganisation 0..* FRLMOrganisation "Le destinataire prévu est une organisation"
  * intendedRecipientDevice 0..* FRLMDevice "Le destinataire prévu est un système"
