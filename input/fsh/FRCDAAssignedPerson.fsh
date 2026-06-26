Profile: FRCDAAssignedPerson
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Person
Id: fr-cda-assigned-person
Title: "CDA - assignedPerson"
Description: "L'élément de l'en-tête du CDA assignedPerson permet de décrire une personne physique."
* ^status = #draft
* nullFlavor 0..0
* determinerCode 0..0
* typeId.nullFlavor 0..0
* typeId.assigningAuthorityName 0..0
* typeId.displayable 0..0
* name ^short = "Identité de la personne physique responsable"
* name 1..1
* name only fr-cda-name
* sdtcDesc 0..0
* sdtcAsPatientRelationship 0..0

* obeys FRCDAPersonFamilyRequired
