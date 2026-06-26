Profile: FRObservationTransfusionAccidentsDocument
Parent: Observation
Id: fr-observation-transfusion-accidents-document
Title: "Observation - FR Observation Transfusion Accidents Document"
Description: "FRObservationTransfusionAccidentsDocument est un profil utilisé pour décrire un accident transfusionnel."

// mettre le bon canonical à partir de HL7 Europe Base and Core FHIR IG
//* ^extension[$imposeProfile].valueCanonical = Canonical()

* identifier 1..1 MS
* code MS
* code = https://smt.esante.gouv.fr/fhir/CodeSystem/terminologie-cisis#MED-146 "Accidents transfusionnels"
* value[x] only string
* valueString 1..1 MS
* valueString ^short = "Description sous forme textuelle de l'accident transfusionnel"

* insert FRRuleSetSimpleObservation