Profile: FRObservationAntenatalTestingAndSurveillanceBatteryDocument
Parent: Observation
Id: fr-observation-antenatal-testing-surveillance-battery-document
Title: "Observation - FR Observation Antenatal Testing And Surveillance Battery Document"
Description: "FRObservationAntenatalTestingAndSurveillanceBattery permet de lister les examens et surveillances prénataux."

// mettre le bon canonical à partir de HL7 Europe Base and Core FHIR IG
//* ^extension[$imposeProfile].valueCanonical = Canonical()

* code MS
* code ^short = "Type de l'observation"
// Code LOINC incorrect dans IHE PCC, un change proposal a été créé pour IHE qui date du 29/20/2021 pour corriger ce code LOINC
* code = $LNC#XX-ANTENATALTESTINGBATTERY "ANTENATAL TESTING AND SURVEILLANCE BATTERY"
* effective[x] ^short = "Date de l'examen ou de la surveillance"

// Auteur
* performer MS
* performer.extension contains FRActorExtension named author 0..*
* performer.extension[author] ^short = "Auteur"
* performer.extension[author].extension[type].valueCode = #AUT
* performer.extension[author].extension[actor].valueReference only Reference(FRPractitionerRoleDocument)

* component MS
* component ^short = "Observations"
* component.code MS
* component.code ^short = "code du résultat"
* component.value[x] MS
* component.value[x] ^short = "valeur du résultat"