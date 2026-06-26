Profile: FRObservationResultDocument
Parent: Observation
Id: fr-observation-result-document
Title: "Observation - FR Observation Result Document"
Description: "FRObservationResultDocument permet d'indiquer le résultat observé."

//* ^extension[$imposeProfile].valueCanonical = Canonical()

// Demande d'examen associée à l'observation
* basedOn MS
* basedOn ^slicing.discriminator.type = #pattern  
* basedOn ^slicing.discriminator.path = "$this"
* basedOn ^slicing.rules = #open
* basedOn contains serviceRequestAccessionNumber 0..*
* basedOn[serviceRequestAccessionNumber] only Reference(FRServiceRequestDocument)
* basedOn[serviceRequestAccessionNumber] ^short = "Référence à la demande d'examen contenant l'Accession Number"

* value[x] MS
  * ^short = "Observation effectuée"
* referenceRange MS
  * ^short = "Intervalles de référence"

* interpretation ^short = "Interprétation"
* interpretation from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-hl7-v3-ObservationInterpretation-cisis

* note MS
* note ^short = "Commentaires (résultats d'examen non codés)"

* insert FRRuleSetSimpleObservation