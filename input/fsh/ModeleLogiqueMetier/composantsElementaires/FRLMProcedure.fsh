Logical: FRLMProcedure
Id: fr-lm-procedure
Parent: FRLMEntry
Title: "Logical model- FR LM Procedure"
Description: """Entrée Acte"""
Characteristics: #can-be-target

* code 1..1 CodeableConcept "Code de l'acte"
  * ^binding.description = "CCAM (1.2.250.1.215.300.1)"
* header.status 1..1
  * ^short = "Statut de l'acte"
  * ^binding.description = "jdv-hl7-v3-ActStatus-cisis (2.16.840.1.113883.1.11.15933)"
  * ^binding.valueSet = "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-hl7-v3-ActStatus-cisis"
* procedureDate[x] 1..1	period "Période de l'acte"
  * procedureDateDateTime 0..1	dateTime "Date de début de l'acte"
  * procedureDatePeriod	0..1	dateTime "Date de fin de l'acte"
* priority 0..1	CodeableConcept	"Priorité"
  * ^binding.description = "jdv-hl7-v3-ActPriority-cisis (2.16.840.1.113883.1.11.16866) ou autre JDV"
* bodySite 0..1	FRLMBodyStructure	"localisation anatomique"
  * ^binding.description = "SNOMED CT (2.16.840.1.113883.6.96)"
* approachSiteCode 0..1	CodeableConcept	"Voie d’abord"
  * ^binding.description = "SNOMED CT (2.16.840.1.113883.6.96)"
* difficulty 0..1	CodeableConcept	"Difficulté"
* reason[x]	0..* CodeableConcept or FRLMCondition or FRLMObservation or FRLMProcedure	or FRLMEncounter "Motif de l’acte.
- motif codé (spécifique à un  contexte)
- motif : un problème
- motif : une observation
- motif : un acte
- motif : une rencontre (consultation, etc…)"
* outcome	0..1	CodeableConcept	"Résultat immédiat de l'acte (succès, échec, ...). Ne concerne pas l'évaluation sur une période plus longue."
* complication 0..*	CodeableConcept	"Complication survenue pendant l'acte ou immédiatement après uniquement."
  * ^binding.description = "(preferred): ICD-10, SNOMED CT"
* deviceUsed 0..*	FRLMDevice "Dispositif médical utilisé pendant l'acte"
* focalDevice	0..* FRLMDevice	"Dispositif implanté, retiré ou manipulé chez le patient (étalonnage, remplacement de la batterie, pose d'une prothèse, fixation d'un système de drainage des plaies par aspiration, etc.)." 
* note 0..1	string "Commentaire"