Profile: FRCDAAssignedEntity
Parent: http://hl7.org/cda/stds/core/StructureDefinition/AssignedEntity
Id: fr-cda-assigned-entity
Title: "CDA - assignedEntity"
Description: "L'élément de l'en-tête du CDA assignedEntity est utilisé dans les éléments suivants : dataEnterer, informant, legalAuthenticator, authenticator, performer, responsibleParty et encounterParticipant."
* ^status = #draft
* nullFlavor 0..0
* typeId.nullFlavor 0..0
* typeId.assigningAuthorityName 0..0
* typeId.displayable 0..0
* code.nullFlavor 0..0
* code.codeSystemVersion 0..0
* code.sdtcValueSet 0..0
* code.sdtcValueSetVersion 0..0
* id ^short = "Identifiant du responsable"
* id 1..1
* id.nullFlavor 0..0
* id.root 1..1
* id.root ^short = "- Pour un professionnel : '1.2.250.1.71.4.2.1'
- Pour le patient/usager : OID de l'autorité d'affectation de l'INS
- Pour un système de structure : '1.2.250.1.71.4.2.1' 
- Pour un SNR : OID de l'éditeur 
- Pour le DP : '1.2.250.1.71.4.2.1'"
* id.extension 1..1
* id.extension ^short = "Valeur de l’identifiant.
- Pour le PS, valeur de PS_IdNat (voir CI-SIS_ANX_SOURCES-DONNEES-PERSONNES-STRUCTURES).
- Pour le patient/usager, valeur de l'INS du patient/usager."
* id.assigningAuthorityName 0..0
* id.displayable 0..0
* sdtcIdentifiedBy 0..0
* sdtcPatient 0..0
* code ^short = "Profession ou rôle du responsable"
* addr ^short = "Adresse géopostale"
* telecom ^short = "Coordonnées télécom"
* assignedPerson ^short = "Personne physique : 
- Obligatoire pour un professionnel 
- Obligatoire pour un patient/usager 
- Non utilisé pour un SNR 
- Non utilisé pour le DP"
* assignedPerson only fr-cda-assigned-person
* representedOrganization ^short = "Structure de rattachement :
- Pour un PS : Organisation pour le compte de laquelle intervient le PS.
- Pour un patient : seul l'élément standardIndustryClassCode est renseigné (cas particulier des documents d'expression personnelle du patient)."
* representedOrganization only fr-cda-represented-organization