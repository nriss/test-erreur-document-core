Profile: FRObservationAdministrationBloodDerivativesDocument
Parent: Observation
Id: fr-observation-administration-blood-derivatives-document
Title: "Observation - FR Observation Administration Blood Derivatives Document"
Description: "FRObservationAdministrationBloodDerivativesDocument est un profil utilisé pour indiquer s'il y a eu ou pas une administration de dérivés du sang."

* identifier 1..1 MS
* code MS
* code = https://smt.esante.gouv.fr/fhir/CodeSystem/terminologie-cisis#MED-147 "Administration de dérivés du sang"
* value[x] only boolean
* valueBoolean 1..1 MS
* valueBoolean ^short = "Administration de dérivés du sang"

* insert FRRuleSetSimpleObservation