Logical: FRLMPregnancyStatus
Id: fr-lm-pregnancy-status
Parent: FRLMEntry
Title: "Logical model- FR LM Pregnancy Status"
Description: """Statut de grossesse"""
Characteristics: #can-be-target

* header.status 1..1 
* observationDate[x] 1..1 dateTime or Period "Date ou periode de l'observation"
* type 1..1 CodeableConcept "Type d'observation"
  * ^short = "LOINC 11449-6 'Pregnancy status'"
* result 1..1 Base "Resultat de l'observation"
  * value[x] 0..1 string or Quantity or Range or Ratio or CodeableConcept "Valeur du resultat"
    * ^binding.description = "Statut de grossesse de la patiente (enceinte, pas enceinte, etc.)"
    * ^binding.valueSet = "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-statut-grossesse-cisis"
  * uncertainty 0..1 Base "Incertitude associée au resultat"
    * value 1..1 decimal "Niveau d'incertitude du resultat"
    * type 0..1 Coding "Type d'incertitude"
  * dataAbsentReason 0..1 CodeableConcept "Raison de l'absence de resultat"
* note 0..1 string "Commentaire"
* hasMember[x] 0..* Base "Observations rattachées a cette entrée"
  * hasMemberFRLMLaboratoryObservation 0..* FRLMLaboratoryObservation "Observation de laboratoire associée"
  * hasMemberEstimatedDeliveryDate 0..* FRLMObservation "Observation associée a la date d'accouchement"
    * ^binding.description = "jdv-date-accouchement-cisis (1.2.250.1.213.1.1.5.853)"
    * ^binding.valueSet = "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-date-accouchement-cisis"
  * hasMemberGestationalAge 0..* FRLMObservation "Observation associée a l'age gestationnel"
    * ^binding.description = "jdv-age-gestationnel-cisis (1.2.250.1.213.1.1.5.854)"
    * ^binding.valueSet = "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-age-gestationnel-cisis"