Logical: FRLMImagingStudy
Id: fr-lm-imaging-study
Parent: FRLMEntry
Title: "Logical model - FR LM Imaging Study"
Description: """Entrée DICOM Examen Imagerie"""
Characteristics: #can-be-target

* header.identifier 1..*
  * ^short = "UUID instance examen"
* modality 1..* CodeableConcept "Modalités d'imagerie utilisées lors de l'examen (DICOM CID029)"
  * ^binding.description = "jdv-modalite-acquisition-cisis : Modalité d'imagerie"
  * ^binding.valueSet = "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-modalite-acquisition-cisis"
* bodySite 0..* FRLMBodyStructure "Localisations anatomiques"
* encounter 0..1 FRLMEncounter "Rencontre associée à l'examen"
* started 0..1 dateTime "Date de l'examen" 
* basedOn 0..* FRLMServiceRequest "Demande d'examen"
* numberOfSeries 0..1 integer "Nombre de séries d'actes d'imagerie composant l'examen"
* numberOfInstances	0..1 integer "Nombre d'instances d'imagerie composant l'examen"
* seriesEndpoint 0..* FRLMEndpoint "Endpoint de l'examen d'imagerie"
* series 1..1 FRLMSeries "Séries d'actes d'imagerie composant l'examen"