Profile: FRCDAAssignedAuthor
Parent: http://hl7.org/cda/stds/core/StructureDefinition/AssignedAuthor
Id: fr-cda-assigned-author
Title: "CDA - assignedAuthor"
Description: "L'élément de l'en-tête du CDA assignedAuthor contient les éléments permettant de décrire l’auteur."
* ^status = #draft
* nullFlavor 0..0
* typeId.nullFlavor 0..0
* typeId.assigningAuthorityName 0..0
* typeId.displayable 0..0
* sdtcIdentifiedBy 0..0
* id ^short = "Identifiant de l’auteur : 
- Obligatoire pour un professionnel 
- Obligatoire pour le patient/usager 
- Obligatoire pour un système de structure 
- Obligatoire pour un SNR 
- Obligatoire pour le DP"
* id.nullFlavor 0..0
* id.root 1..1
* id.root ^short = "- Pour un professionnel : '1.2.250.1.71.4.2.1'
- Pour le patient/usager : OID de l'autorité d'affectation de l'INS
- Pour un système de structure : '1.2.250.1.71.4.2.1' 
- Pour un SNR : OID de l'éditeur 
- Pour le DP : '1.2.250.1.71.4.2.1'"
* id.extension 1..1
* id.extension ^short = "Valeur de l’identifiant"
* id.assigningAuthorityName 0..0
* id.displayable 0..0
* code ^short = "Profession / savoir-faire ou rôle : 
- Obligatoire pour un professionnel 
- Ne pas utiliser pour le patient/usager 
- Obligatoire pour un système de structure 
- Obligatoire pour un SNR 
- Obligatoire pour le DP"
* code from https://mos.esante.gouv.fr/NOS/JDV_J01-XdsAuthorSpecialty-CISIS/FHIR/JDV-J01-XdsAuthorSpecialty-CISIS (required)
* addr ^short = "Adresse géopostale de l’auteur"
* telecom ^short = "Coordonnées télécom de l’auteur"
* assignedPerson ^short = "Identité de l’auteur :  
- Obligatoire pour un professionnel 
- Obligatoire pour le patient/usager 
- Ne pas utiliser pour un système de structure 
- Ne pas utiliser pour un SNR 
- Ne pas utiliser pour le DP"
* assignedPerson only fr-cda-assigned-person
* assignedAuthoringDevice ^short = "Informations complémentaires si l’auteur est un système :
- Ne pas utiliser pour un professionnel 
- Ne pas utiliser pour le patient/usager 
- Obligatoire pour un système de structure 
- Obligatoire pour un SNR 
- Obligatoire pour le DP"
* assignedAuthoringDevice only fr-cda-authoring-device
* representedOrganization ^short = "Structure correspondante : 
- Obligatoire pour un professionnel 
- Ne pas utiliser pour le patient/usager 
- Obligatoire pour un système de structure 
- Obligatoire pour un SNR 
- Obligatoire pour le DP"
* representedOrganization only fr-cda-represented-organization

