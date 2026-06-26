Profile: FRObservationSurveyPannelDocument
Parent: Observation
Id: fr-observation-survey-pannel-document
Title: "Observation - FR Observation Survey Pannel Document"
Description: "FRObservationSurveyPannelDocument permet de rassembler des observations de questionnaires."

// mettre le bon canonical à partir de HL7 Europe Base and Core FHIR IG
//* ^extension[$imposeProfile].valueCanonical = Canonical()

* identifier 1..* MS
* identifier ^short = "Identifiant"

* status MS
* status = #final
* status ^short = "Statut de l'ensemble des évaluations"

* code MS
* code ^short = "Code de l'ensemble des évaluations"

* effectiveDateTime 1..1 MS
* effectiveDateTime ^short = "Date"

* hasMember 1..* MS
* hasMember only Reference(FRObservationSurveyDocument)
* hasMember ^short = "Évaluations"