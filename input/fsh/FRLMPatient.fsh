Logical: FRLMPatient
Id: fr-lm-patient		
Title: "Logical model - FR LM Patient"				
Description:  """Patient/Usager concerné par le document."""
Characteristics: #can-be-target	
* . 1..1						
* identifier 1..* Identifier "Identifiant du patient / usager.
- Première occurrence obligatoire pour un document mis en partage dans un système d’information de santé partagé : Matricule INS du patient/usager tel que défini dans le cadre juridique.
- Occurrence(s) suivante(s) (optionnelles) : Identifiant connu pour le patient/usager dans le système d’information du producteur du document (IPP, NIP, etc.)."""				
* address 0..* Address "Adresse géopostale du patient/usager."				
* telecom 0..* ContactPoint "Coordonnées télécom du patient/usager (numéro de téléphone, adresse e-mail, …)."		 		
* name 1..1 FRLMHumanName "Noms et prénoms du patient/usager."
* administrativeGender 1..1 CodeableConcept "Sexe administratif du patient/usager."
* dateOfBirth 1..1 dateTime "Date et heure de naissance du patient/usager."
* deceased[x] 0..1 boolean or dateTime "Patient/usager décédé / Date et heure du décès."
* multipleBirth[x] 0..1 boolean or integer "Patient/usager né d'une grossesse multiple / Nombre d'ordres de naissance."
* birthPlace 0..1 Address "Lieu de naissance.
  - Obligatoire si le matricule INS est présent pour porter le code officiel géographique (COG) du lieu de naissance.
  - Le lieu de naissance est constitué du nom et/ou de l’adresse du lieu de naissance du patient/usager."
* contact 0..* Base "Représentant du patient/usager."
  * address 0..* Address "Adresse géopostale."
  * telecom 0..* ContactPoint "Coordonnées télécom."
  * name 1..1 FRLMHumanName "Noms et Prénoms du représentant."
  * organization 0..1 FRLMOrganisation "Structure représentant le patient/usager."
