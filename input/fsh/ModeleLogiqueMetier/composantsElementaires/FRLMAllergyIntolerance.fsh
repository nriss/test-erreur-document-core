Logical: FRLMAllergyIntolerance	
Id: fr-lm-allergy-intolerance	
Parent: FRLMEntry
Title: "Logical model - FR LM Allergy Intolerance"
Description: """Entrée Allergie ou Hypersensibilité"""
Characteristics: #can-be-target

* type 1..1 CodeableConcept "Allergie / hypersensibilité non allergique / intolérance / idiosyncrasie"
  * ^binding.description = " jdv-type-event-indesirable-previsible-cisis (1.2.250.1.213.1.1.5.842)"
  * ^binding.valueSet = "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-type-evenement-indesirable-previsible-cisis"
* category 1..1 CodeableConcept "food | medication | environment | biologic"
  * ^binding.description = " jdv-hl7-allergy-intolerance-category-cisis (2.16.840.1.113883.4.642.3.133)"
  * ^binding.valueSet = ""
* agentOrAllergen 1..1 CodeableConcept "Agent responsable
- Médicaments : CIP ou UCD
- Substances : SMS
- Aliments : CIM-11 Chapitre X Extensions – Allergènes ou substances non médicinales
- Agents environnementaux ou physiques : idem CIM-11 Chapitre X Extensions
- Allergènes pouvant induire une contre-indication vaccinale : jdv-allergie-vaccin-cisis"
* header.status
  * ^short = "Statut clinique de l'allergie"
  * ^binding.description = "jdv-hl7-allergyintolerance-clinical-cisis (2.16.840.1.113883.4.642.3.1372)"
  * ^binding.valueSet = "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-hl7-allergyintolerance-clinical-cisis"
* note 0..1 string "commentaire"
* criticality 0..1 CodeableConcept "Criticité"
  * ^binding.description = "jdv-hl7-allergy-intolerance-criticality-cisis (2.16.840.1.113883.4.642.3.129"
  * ^binding.valueSet = "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-hl7-allergy-intolerance-criticality-cisis"
* certainty 0..1 CodeableConcept "Certitude"
  * ^binding.description = "jdv-hl7-condition-ver-status-cisis (2.16.840.1.113883.4.642.3.166)"
  * ^binding.valueSet = "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-hl7-condition-ver-status-cisis" 
* period 1..1 period "Période"
  * onsetDate 0..1 dateTime "Date de début"
  * endDate 0..1 dateTime "Date de fin"
* reaction 0..* Base "Réaction observée"
  * agentOrAllergen 0..1 CodeableConcept "Agent responsable : - Substances : SMS"
    * ^binding.description = "SMS"
  * manifestation 1..1 CodeableConcept "Manifestation
CIM-11 / Chapitre 04 Maladies du système immunitaire / Bloc Affections allergiques ou d'hypersen-sibilité"
    * ^binding.description = "CIM-11"
  * severity 0..1 CodeableConcept "Sévérité de la manifestion"
    * ^binding.description = "SNOMED_CT (preferred)"
    * ^binding.valueSet = "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-severite-observation-cisis"
  * period 1..1 period "Période"
    * onsetDate 0..1 dateTime "Date de début"
    * endDate 0..1 dateTime "Date de fin"