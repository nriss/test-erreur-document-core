Profile: FRDeviceUseStatementDocument
Parent: DeviceUseStatement
Id: fr-device-use-statement-document
Title: "DeviceUseStatement - FR Device Use Statement Document"
Description: "FRDeviceUseStatementDocument représente les informations sur un dispositif médical"

// mettre le bon canonical à partir de HL7 Europe Base and Core FHIR IG
//* ^extension[$imposeProfile].valueCanonical = Canonical()

// Identifiant
* identifier 1..* MS
* identifier ^short = "Identifiant de la fourniture du DM
Sous la forme UID (UUID ou OID)."

// Date/heure de l'utilisation
* timing[x] only Timing or Period

// Dispensateur  
* source MS
* source ^short = "Dispensateur"
* source.extension contains FRActorExtension named performer 0..1
* source.extension[performer] ^short = "Dispensateur: référence au professionnel de santé ou à l'organisation ayant initié ou dispensé le dispositif"
* source.extension[performer].extension[type].valueCode = #PRF
* source.extension[performer].extension[actor].valueReference only Reference(FRPractitionerRoleDocument or FROrganizationDocument)

// Élément device
* device MS
* device only Reference(Device)
* device ^short = "Dispositif médical"

// Slicing sur reasonReference
* reasonReference ^slicing.discriminator.type = #value
* reasonReference ^slicing.discriminator.path = "resolve().code"
* reasonReference ^slicing.rules = #open
* reasonReference MS
* reasonReference ^short = "Raisons liées à l'utilisation du dispositif médical"

// Définition des slices
* reasonReference contains
    EnRapportAvecALD 0..1 and
    EnRapportAvecAccidentTravail 0..1 and
    EnRapportAvecLaPrevention 0..1

* reasonReference[EnRapportAvecALD] only Reference(FRConditionDocument)
* reasonReference[EnRapportAvecALD] ^short = "Observation indiquant que l'utilisation est en rapport avec une ALD"
* reasonReference[EnRapportAvecALD] MS

* reasonReference[EnRapportAvecAccidentTravail] only Reference(FRObservationWorkRelatedAccidentDocument)
* reasonReference[EnRapportAvecAccidentTravail] ^short = "Observation indiquant que l'utilisation est en rapport avec un accident de travail"
* reasonReference[EnRapportAvecAccidentTravail] MS

* reasonReference[EnRapportAvecLaPrevention] only Reference(FRConditionDocument)
* reasonReference[EnRapportAvecLaPrevention] ^short = "Observation indiquant que l'utilisation est liée à la prévention"
* reasonReference[EnRapportAvecLaPrevention] MS

* extension contains FRNotCoveredExtension named notCovered 0..1
* extension[notCovered] ^short = "DM n'est remboursable / remboursable"