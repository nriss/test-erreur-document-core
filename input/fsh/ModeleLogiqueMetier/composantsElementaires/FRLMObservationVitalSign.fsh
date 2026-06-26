Logical: FRLMObservationVitalSign
Id: fr-lm-observation-vital-sign
Parent: FRLMEntry
Title: "Logical model - FR LM Observation Vital Sign"
Description: """Signe vital observé"""
Characteristics: #can-be-target

* observationDate[x] 1..1 dateTime or Period "date de l'observation"
* type 1..1 CodeableConcept "Type d'observation"
  * ^binding.description = "Valeur issue du jdv-signe-vital-cisis (1.2.250.1.213.1.1.5.171)"
  * ^binding.valueSet = "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-signe-vital-cisis"
* header.status 1..1
* method 0..1 CodeableConcept "Méthode utilisée pour l'observation"
* bodySite 0..1 FRLMBodyStructure "Site de l'observation"
* result 1..1 CodeableConcept "Résultat de l'observation effectuée: unité de la mesure codée à partir de UCUM (2.16.840.1.113883.6.8)"
* interpretation 0..* CodeableConcept "Interprétation"
  * ^binding.description = "Valeur issue du jdv-hl7-v3-ObservationInterpretation-cisis (2.16.840.1.113883.1.113883.5.1170)"
  * ^binding.valueSet = "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-hl7-v3-ObservationInterpretation-cisis"
* note 0..1 string "Commentaire"
