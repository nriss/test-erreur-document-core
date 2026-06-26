Profile: FRCDARelatedEntity
Parent: http://hl7.org/cda/stds/core/StructureDefinition/RelatedEntity
Id: fr-cda-related-entity
Title: "CDA - relatedEntity"
Description: "L'élément de l'en-tête du CDA relatedEntity permet de décrire : un informateur non professionnel, une personne de confiance, une personne à prévenir en cas d’urgence, un aidant ou une personne aidée."
* ^status = #draft
* nullFlavor 0..0
* typeId.nullFlavor 0..0
* typeId.assigningAuthorityName 0..0
* typeId.displayable 0..0
* classCode ^short = "Rôle joué par la personne."
* classCode from $jdv-role-informateur-cisis
* code ^short = "Lien de la personne avec le patient/usager."
* code from https://mos.esante.gouv.fr/NOS/JDV_J11-RelationPatient-CISIS/FHIR/JDV-J11-RelationPatient-CISIS (required)
* code.code 1..1
* code.codeSystem 1..1
* code.displayName 1..1
* code.originalText 0..1
* code.nullFlavor 0..0 
* code.codeSystemVersion 0..0 
* code.sdtcValueSet 0..0
* code.sdtcValueSetVersion 0..0
* addr ^short = "Adresse géopostale."
* telecom ^short = "Coordonnées télécom."
* telecom 1..*
* relatedPerson ^short = "Personne physique."
* relatedPerson 1..1
* relatedPerson only fr-cda-assigned-person
