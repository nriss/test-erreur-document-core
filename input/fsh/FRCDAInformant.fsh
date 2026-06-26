Profile: FRCDAInformant
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Informant
Id: fr-cda-informant
Title: "CDA - informant"
Description: "L'élément de l'en-tête du CDA informant permet d'identifier un informateur, une personne de confiance, une personne à prévenir en cas d’urgence, un aidant ou une personne aidée."
* ^status = #draft
* nullFlavor 0..0
* typeId.nullFlavor 0..0
* typeId.assigningAuthorityName 0..0
* typeId.displayable 0..0
* contextControlCode 0..0
* assignedEntity only fr-cda-assigned-entity
* assignedEntity ^short = "Professionnel / Structure / Patient/usager ayant fourni des informations relatives au document."
* relatedEntity ^short = "Informateur non professionnel ayant fourni des informations relatives au document. 
Ou : Personne de confiance désignée par le patient/usager.
Ou : Personne à prévenir en cas d’urgence. 
Ou : Aidant du patient/usager. ou : Personne aidée"
* relatedEntity only fr-cda-related-entity