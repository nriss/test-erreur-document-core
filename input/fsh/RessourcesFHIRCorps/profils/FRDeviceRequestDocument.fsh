Profile: FRDeviceRequestDocument
Parent: DeviceRequest
Id: fr-device-request-document
Title: "DeviceRequest - FR Device request Document"
Description: "FRDeviceRequestDocument représente une demande de dispositif médical (DM) qui n’a pas encore été dispensé."

// mettre le bon canonical à partir de HL7 Europe Base and Core FHIR IG
//* ^extension[$imposeProfile].valueCanonical = Canonical()

// Identifiant de la fourniture du DM
* identifier 1..* MS
* identifier ^short = "Identifiant de la fourniture du DM - Sous la forme UID (UUID ou OID)"

// Date d'utilisation ou de présence chez le patient
* occurrence[x] MS
// Nombre de renouvellement(s) possible(s)
* occurrenceTiming MS
* occurrenceTiming ^short = "Date d'utilisation ou de présence chez le patient"
* occurrenceTiming.repeat.count MS
* occurrenceTiming.repeat.count ^short = "Nombre de renouvellement(s) possible(s)"

// Durée d'utilisation
* occurrencePeriod MS
* occurrencePeriod ^short = "Durée d'utilisation"

// Quantité
* parameter 0..1 MS
* parameter.valueQuantity MS
* parameter.valueQuantity ^short = "Quantité"

// Prescripteur
* requester MS
* requester ^short = "Prescripteur"
* requester.extension contains FRActorExtension named prescripteur 0..1
* requester.extension[prescripteur].extension[actor].valueReference only Reference(FRPractitionerRoleDocument)

// Dispositif médical
* codeReference MS
* codeReference only Reference(Device)
* codeReference ^short = "Dispositif médical"

// Raison - Slicing
* reasonReference ^slicing.discriminator.type = #value 
* reasonReference ^slicing.discriminator.path = "resolve().code"
* reasonReference ^slicing.rules = #open
* reasonReference MS
* reasonReference ^short = "Raisons liées au DM"

// Slicing des raisons
* reasonReference contains
    EnRapportAvecALD 0..1 and
    EnRapportAvecAccidentTravail 0..1 and
    EnRapportAvecLaPrevention 0..1

* reasonReference[EnRapportAvecALD] only Reference(FRConditionDocument)
* reasonReference[EnRapportAvecALD] ^short = "En rapport avec une Affection Longue Durée (ALD)"
* reasonReference[EnRapportAvecALD]  MS

* reasonReference[EnRapportAvecAccidentTravail] only Reference(FRObservationWorkRelatedAccidentDocument)
* reasonReference[EnRapportAvecAccidentTravail] ^short = "En rapport avec accident travail"
* reasonReference[EnRapportAvecAccidentTravail] MS

* reasonReference[EnRapportAvecLaPrevention] only Reference(FRConditionDocument)
* reasonReference[EnRapportAvecLaPrevention] ^short = "En rapport avec la prévention"
* reasonReference[EnRapportAvecLaPrevention] MS

* extension contains FRNotCoveredExtension named notCovered 0..1
* extension[notCovered] ^short = "DM prescrit n'est remboursable / remboursable"