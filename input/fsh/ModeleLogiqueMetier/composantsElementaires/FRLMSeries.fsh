Logical: FRLMSeries
Id: fr-lm-series
Parent: FRLMEntry
Title: "Logical model - FR LM Series"
Description: """Séries d'actes d'imagerie"""
Characteristics: #can-be-target

* seriesUid 1..* Identifier "DICOM UUID instance de la série"
* number 0..1 integer "identfiant numérique de la série"
* seriesModality 1..1 CodeableConcept "Modalités d'imagerie utilisées lors de l'examen (DICOM CID029)"
  * ^binding.description = "jdv-modalite-acquisition-cisis : Modalité d'imagerie"
  * ^binding.valueSet = "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-modalite-acquisition-cisis"
* bodySite 0..1 FRLMBodyStructure "Localisations anatomiques"
* specimen 0..* FRLMSpecimen "Spécimen associé à la série"
* numberOfInstances	0..1 integer "Nombre d'instances d'imagerie composant l'examen"
* seriesEndpoint 0..* FRLMEndpoint "Endpoint de l'examen d'imagerie"
* started 0..1 dateTime "Date de début de la série d'actes"
* instanceSOP 1..1 FRLMSOPInstance "SOP instance"