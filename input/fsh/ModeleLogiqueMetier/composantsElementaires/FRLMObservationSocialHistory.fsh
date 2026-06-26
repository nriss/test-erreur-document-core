Logical: FRLMObservationSocialHistory
Id: fr-lm-observation-social-history
Parent: FRLMEntry
Title: "Logical model- FR LM Observation Social History"
Description: """Entrée Habitus Mode de vie"""
Characteristics: #can-be-target

* header.status 1..1
* observationDate[x] 1..1 dateTime	or Period	"date de l'observation"
* type 1..1 CodeableConcept "Type d'observation"
  * ^binding.description = "jdv-social-history-code-cisis (1.2.250.1.213.1.1.4.2.283.4)"
  * ^binding.valueSet = "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-social-history-code-cisis"
* result 1..1 CodeableConcept "Résultat de l’observation effectuée : 
- Statut tabagique : jdv-statut-tabagique-cisis (1.2.250.1.213.1.1.5.667)
- Consommation tabagique : {pack}/d ou {pack}/wk ou {pack}/a ou {cigarette}/d ou {cigarette}/wk ou {cigarette}/a
- Consommation d’alcool : {drink}/d or {drink}/wk
- Consommation de drogue non médicale : SNOMED CT concepts de la sous-hiérarchie 418149003 | substance psychoactive (substance)
- Exercice physique : {times}/wk
- Régime : LOINC Answer List LL3984-
- Statut d'emploi : jdv-hl7-v2-0066-cisis (2.16.840.1.113883.21.29)"
* note 0..1	string	"Commentaire"
