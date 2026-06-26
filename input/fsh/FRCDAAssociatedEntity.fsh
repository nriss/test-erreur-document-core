Profile: FRCDAAssociatedEntity
Parent: http://hl7.org/cda/stds/core/StructureDefinition/AssociatedEntity
Id: fr-cda-associated-entity
Title: "CDA - associatedEntity"
Description: "L'élément de l'en-tête du CDA associatedEntity permet de représenter les caractéristiques du professionnel et/ou de l'établissement participant."
* ^status = #draft
* nullFlavor 0..0
* typeId.nullFlavor 0..0 
* typeId.assigningAuthorityName 0..0
* typeId.displayable 0..0
* sdtcIdentifiedBy 0..0
* classCode from https://mos.esante.gouv.fr/NOS/JDV_J141-RoleClass-CISIS/FHIR/JDV-J141-RoleClass-CISIS (required)
* classCode ^short = "PS / Non PS La valeur doit être issue du JDV_J141_RoleClass_CISIS (1.2.250.1.213.1.1.5.588)."
* id ^short = "Identifiant du participant Obligatoire pour les professionnels"
* id.root ^short = "- Pour les professionnels : '1.2.250.1.71.4.2.1' 
- Pour les autres : libre"
* id.extension ^short = "- Pour les professionnels : Valeur de l’identifiant du professionnel participant. Source : valeur de PS_IdNat (voir annexe [6]) 
- Pour les autres : libre"
* code ^short = "Profession / savoir-faire ou rôle : 
- Facultatif pour les PS, non PS et systèmes 
- Facultatif pour patient/usager"
* code from https://mos.esante.gouv.fr/NOS/JDV_J01-XdsAuthorSpecialty-CISIS/FHIR/JDV-J01-XdsAuthorSpecialty-CISIS (required)
* addr ^short = "Adresse géopostale du participant"
* telecom ^short = "Coordonnées télécom du participant"
* associatedPerson ^short = "Identité du participant"
* associatedPerson only fr-cda-assigned-person
* scopingOrganization ^short = "Structure"
* scopingOrganization only fr-cda-represented-organization
