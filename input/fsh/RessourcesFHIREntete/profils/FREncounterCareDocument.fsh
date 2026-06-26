Profile: FREncounterCareDocument
Parent: FRCoreEncounterProfile
Id: fr-encounter-care-document
Title: "FR Encounter Care Document"
Description: "Ce profil représente l'association du document à une prise en charge."
* type 0..1
* type ^short = "Type de prise en charge"
* period 1..1
* period ^short = "Date de début et de fin de la prise en charge"
* hospitalization.dischargeDisposition ^short = "Type sortie"

// Slicing : participant 
* participant ^slicing.discriminator.type = #value
* participant ^slicing.discriminator.path = "type"
* participant ^slicing.rules = #open

// Responsable de la prise en charge : responsibleParty
* participant contains responsibleParty 0..1
* participant[responsibleParty] ^short = "Responsable de la prise en charge"
* participant[responsibleParty].type ^short = "Type de participation"
* participant[responsibleParty].individual 1..1
* participant[responsibleParty].individual ^short = "Entité responsable de la prise en charge"
* participant[responsibleParty].individual only Reference(FRPractitionerRoleDocument)


// Personne impliquée dans la prise en charge : encounterParticipant
* participant contains encounterParticipant 0..*
* participant[encounterParticipant] ^short = "Personne impliquée dans la prise en charge"
* participant[encounterParticipant].type ^short = "Type de participation"
* participant[encounterParticipant].type from $JDV_J140-EncounterParticipationType-CISIS (required)
* participant[encounterParticipant].individual 1..1
* participant[encounterParticipant].individual ^short = "Professionnel impliqué"
* participant[encounterParticipant].individual only Reference(FRPractitionerRoleDocument)

* location 1..1 
* location ^short = "Lieu de la prise en charge"
* location.location only Reference(FRLocationDocument)