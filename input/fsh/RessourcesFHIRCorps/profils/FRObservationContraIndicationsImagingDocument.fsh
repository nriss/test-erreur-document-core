Profile:  FRObservationContraIndicationsImagingDocument
Parent: Observation
Id: fr-observation-contra-indications-document
Title: "Observation - FR Observation Contra Indications Document"
Description: "FRObservationContraIndicationsDocument permet d'apporter des informations relatives aux contre-indications médicales du patient dans le cadre d'un examen d'imagerie."

* code MS
* code.coding.system = $LNC
* code.coding.code = #64100-1
* code.coding.display = "Contre-indications"

* value[x] 1..1 MS
* value[x] only CodeableConcept
* valueCodeableConcept ^short = "valeur issue du jdv-contre-indication-cisis (1.2.250.1.213.1.1.5.659)"
* valueCodeableConcept from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-contre-indication-cisis (preferred)

* insert FRRuleSetSimpleObservation