Profile: FRCDAPatientRole
Parent: http://hl7.org/cda/stds/core/StructureDefinition/PatientRole
Id: fr-cda-patient-role
Title: "CDA - patientRole"
Description: "L'élément de l'en-tête du CDA patientRole permet de décrire le patient/usager."
* ^status = #draft
* nullFlavor 0..0
* realmCode 0..0
* typeId 0..0
* templateId 0..0
* sdtcIdentifiedBy 0..0
* providerOrganization 0..0
* id ^short = "Identifiant du patient."
* id.nullFlavor 0..0
* id.root 1..1
* id.root ^short = "Valeur de l’OID de l’autorité d’affectation de l’identifiant du patient/usager."
* id.extension 0..1
* id.extension ^short = "Valeur de l’identifiant du patient/usager."
* id.assigningAuthorityName	0..0
* id.displayable 0..0
* addr ^short = "Adresse géopostale."
* telecom ^short = "Coordonnées télécom."
* patient 1..1
* patient only fr-cda-patient
* patient ^short = "Personne physique."
