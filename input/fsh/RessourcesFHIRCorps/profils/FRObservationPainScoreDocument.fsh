// ne fait partie du modèle Européen EHDS, on le garde pour des prochaines versions
Profile: FRObservationPainScoreDocument
Parent: Observation
Id: fr-observation-pain-score-document
Title: "Observation - FR Observation Pain Score Document"
Description: "FRObservationPainScoreDocument permet d'enregistrer l'évaluation du patient de sa douleur sur une échelle de 1 à 10."

* identifier 1..1 MS
* identifier ^short = "Identifiant de l'observation"

* code MS
* code.coding.system = $LNC
* code.coding.code = #38208-5
* code.coding.display = "Sévérité de la douleur"
* status MS
* status = #final
* status ^short = "Statut de l'observation"

* effective[x] MS
* effectiveDateTime 1..1 MS
  * ^short = "Date de l'observation"

* interpretation 0..1 MS
* interpretation ^short = "Interprétation"
* interpretation from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-evaluation-douleur-cisis

* bodySite ^short = "Localisation de la douleur"
* bodySite from http://hl7.org/fhir/ValueSet/body-site (extensible)

* value[x] only integer
* valueInteger 1..1 MS
  * ^short = "Valeur de l'observation. entier de 0 à 10"

* hasMember 0..1 MS
* hasMember only Reference(Observation)