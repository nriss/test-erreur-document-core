// ne fait partie du modèle Européen EHDS, on le garde pour des prochaines versions
Profile:  FRObservationBirthEventDocument
Parent: Observation
Id: fr-observation-birth-event-document
Title: "Observation - FR Observation Birth Event Document"
Description: "FRObservationBirthEventDocument est un profil qui permet de rassembler les observations relatives à une naissance."

* code MS 
  * ^short = "Code de l'observation"
* code = $SCT#118215003 "observation sur l'accouchement"
* status ^short = "Statut de l'observation"
* status = #completed
* effective[x] 1..1 MS
* effective[x] only dateTime
  * ^short = "Période des observations.
 - Quand ce profil est utilisée dans FRObservationPregnancy, cette période doit correspondre à la période de la grossesse."
* value[x] 0..0
* hasMember 1..* MS 
* hasMember only Reference(FRObservationPregnancyDocument)
  * ^short = "Observation sur la naissance."
* focus 1..1 MS 
* focus only Reference(RelatedPerson)
  * ^short = "Identification du nouveau né."
* focus obeys child-relationship 

Invariant: child-relationship 
Description: "Le relationship de RelatedPerson doit être fixé à CHILD."
Expression: "resolve().relationship.coding.where(code = 'CHILD').exists()"
Severity: #error