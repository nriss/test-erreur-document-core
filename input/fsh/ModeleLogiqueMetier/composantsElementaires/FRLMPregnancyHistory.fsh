Logical: FRLMPregnancyHistory
Id: fr-lm-pregnancy-history
Parent: FRLMEntry
Title: "Logical model- FR LM Pregnancy History"
Description: """Entrée Historique de la grossesse"""
Characteristics: #can-be-target

* header.status 1..1 
* directSubject[x] 0..1	FRLMPatient or FRLMDevice or FRLMHealthProfessional or FRLMOrganisation	or FRLMProcedure "Sujet de l'observation (si différent du patient)"
* observationDate[x] 1..1	dateTime or Period "Période de la grossesse"
* type 1..1 CodeableConcept	"Type d'observation"
  * ^binding.description = "jdv-historique-grossesses-cisis (1.2.250.1.213.1.1.5.852)"
  * ^binding.valueSet = "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-historique-grossesses-cisis"
* method 0..1	CodeableConcept "Methode utilisée"
* result 1..1	Base "Resultat de l'observation sur l'historique de grossesse"
  * value[x] 0..1	string or Quantity or Range or Ratio or CodeableConcept "Valeur du resultat"
  * uncertainty	0..1 Base "Incertitude associée au resultat"
    * value	1..1	decimal "Niveau d'incertitude du resultat"
    * type	0..1	Coding "Type d'incertitude"
  * dataAbsentReason 0..1	CodeableConcept "Raison de l'absence de resultat"
* interpretation 0..*	CodeableConcept	"Interpretation du resultat"
* note 0..1	string	"Commentaire"
* component	0..* Base	"Composant detaillé de l'observation"
* derivedFrom[x]	0..*	FRLMObservation or FRLMLaboratoryObservation	or FRLMImagingStudy	"Observation ou examen source dont derive cette information"
* hasMember[x] 0..*		FRLMLaboratoryObservation or FRLMObservation "Observations associées et rattachées à cette entree"