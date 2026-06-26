Logical: FRLMCondition
Id: fr-lm-condition
Parent: FRLMEntry
Title: "Logical model - FR LM Condition"
Description: """Entrée Problème"""
Characteristics: #can-be-target

* type 1..1  CodeableConcept "Type d'observation"
  * ^binding.description = "Valeur issue du jdv-code-probleme-cisis (1.2.250.1.213.1.1.5.172)"
  * ^binding.valueSet = "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-code-probleme-cisis"
* problem 1..1 CodeableConcept "Problème observé :
 - CIM-10 (2.16.840.1.113883.6.3) ; 
 - CISP-2 (2.16.840.1.113883.6.139) ;
 - CISP-3 / DRC (1.2.250.1.213.2.9) ;
 - OrphaCodes (1.2.250.1.213.2.49)"
* period 1..1 period "Période"
  * onsetDate 0..1 dateTime "Date de début"
  * endDate 0..1 dateTime "Date de fin"
* severity 0..1 CodeableConcept "Sévérité de la manifestion"
  * ^binding.description = "(preferred): SNOMED_CT => Valeur issue du jdv-severite-observation-cisis (1.2.250.1.213.1.1.5.675)"
  * ^binding.valueSet = "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-severite-observation-cisis"
* header.status
  * ^short = "Statut du problème"
  * ^binding.description = "Valeur issue du jdv-hl7-condition-clinical-cisis (2.16.840.1.113883.4.642.3.164)"
  * ^binding.valueSet = "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-hl7-condition-clinical-cisis"
* clinicalStatus 0..1 CodeableConcept "Statut clinique du patient" 
* bodySite 0..* FRLMBodyStructure "Localisation anatomique"
* stage 0..* CodeableConcept "Stade/Grade. codeSystem spécifique au contexte.
Binding Description: (preferred): e.g. TNM, ICD-O-3, Bi-Rads, Li-Rads, …"
* diagnosisAssertionStatus 0..1 CodeableConcept "Certitude"
  * ^binding.description = "Valeur issue du jdv-hl7-condition-ver-status-cisis (2.16.840.1.113883.4.642.3.166)"
  * ^binding.valueSet = "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-hl7-condition-ver-status-cisis"
* reference 1..* uri "Cet élément contient l’URL du document"
* note 0..1 string "commentaire"
