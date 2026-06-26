ValueSet: FRValueSetParticipationType
Id: fr-doc-vs-participation-type
Title: "FR ValueSet Participation Type"
Description: "Type de participation : destinataire"
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"

// Ajout de codes spécifiques
* include http://terminology.hl7.org/CodeSystem/v3-ParticipationType#TRC // information recipient"
* include http://terminology.hl7.org/CodeSystem/v3-ParticipationType#IRCP  //primary information recipient
* include http://terminology.hl7.org/CodeSystem/v3-ParticipationType#PRCP  // tracker

* ^experimental = false