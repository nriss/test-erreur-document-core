Logical: FRLMHumanName
Id: fr-lm-human-name
Parent: Base
Title: "Logical model - FR LM Human Name"
Description: "Modele logique metier - FR LM Human Name"

* use 0..1 CodeableConcept "Identifie le type de nom (ex : official, usual, etc.)"
  * ^binding.description = "ValueSet HL7 name-use"
  * ^binding.valueSet = "http://hl7.org/fhir/ValueSet/name-use"
* text 0..1 string "Nom complet tel qu'il doit etre affiche"
* family 0..* string "Nom"
* given 0..* string "Prenom"
* prefix 0..1 string "Civilite"
  * ^binding.description = "JDV_J245-Civilite-CISIS"
  * ^binding.valueSet = "https://mos.esante.gouv.fr/NOS/JDV_J245-Civilite-CISIS/FHIR/JDV-J245-Civilite-CISIS"
* suffix 0..1 string "Titre"
  * ^binding.description = "JDV_J246-Titre-CISIS"
  * ^binding.valueSet = "https://mos.esante.gouv.fr/NOS/JDV_J246-Titre-CISIS/FHIR/JDV-J246-Titre-CISIS"
* period 0..1 Period "Periode pendant laquelle ce nom est/etait utilisé"