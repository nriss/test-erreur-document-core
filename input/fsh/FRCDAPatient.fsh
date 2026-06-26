Profile: FRCDAPatient
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Patient
Id: fr-cda-patient
Title: "CDA - patient"
Description: "L'élément de l'en-tête du CDA patient permet de représenter une personne physique."
* ^status = #draft
* nullFlavor 0..0
* typeId.nullFlavor 0..0
* typeId.assigningAuthorityName 0..0
* typeId.displayable 0..0
* determinerCode 0..0
* name ^short = "Noms et prénoms."
* name 1..1
* name.nullFlavor 0..0
* administrativeGenderCode ^short = "Sexe."
* administrativeGenderCode 1..1
* administrativeGenderCode from https://mos.esante.gouv.fr/NOS/JDV_J143-AdministrativeGender-CISIS/FHIR/JDV-J143-AdministrativeGender-CISIS
* birthTime ^short = "Date de naissance."
* birthTime 1..1
* sdtcDeceasedInd ^short = "Patient décédé ou pas ?"
* sdtcDeceasedTime ^short = "Date de décès."
* sdtcMultipleBirthInd ^short = "Patient né d'une grossesse multiple."
* sdtcMultipleBirthOrderNumber ^short = "Numéro d’ordre de naissance (si issu d'une grossesse multiple)."	
* maritalStatusCode 0..0
* religiousAffiliationCode 0..0 
* raceCode 0..0 
* sdtcRaceCode 0..0
* ethnicGroupCode 0..0 
* sdtcEthnicGroupCode 0..0
* languageCommunication 0..0
* guardian ^short = "Représentant du patient/usager."
* birthplace ^short = "Lieu de naissance."
