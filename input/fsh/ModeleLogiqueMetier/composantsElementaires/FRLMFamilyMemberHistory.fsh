Logical: FRLMFamilyMemberHistory
Id: fr-lm-family-member-history
Parent: FRLMEntry
Title: "Logical model - FR LM Family Member History"
Description: "Entrée Antécédent familial"
Characteristics: #can-be-target

* header.status 1..1 
  * ^binding.description = "Statut de l'entrée provenant du jdv FHIR https://hl7.org/fhir/R4/valueset-history-status"
  * ^binding.valueSet = "https://hl7.org/fhir/R4/valueset-history-status.html"
* relatedPerson 1..1 FRLMRelatedPerson "Membre de la famille"
* condition 0..* BackboneElement "Problème du membre de la famille"
  * code 1..1 CodeableConcept "Problème du membre de la famille"
  * outcome 0..1 CodeableConcept "mort(e) | incapacité ; sévère | etc."
    * ^binding.description = "Statut provenant du jdv-health-status-code-cisis (1.2.250.1.213.1.1.4.2.283.1)"
    * ^binding.valueSet = "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-health-status-code-cisis"
  * contributedToDeath 0..1 boolean "problème cause du décès (O/N)"
  * onset[x] 0..1 dateTime or Period "Date du problème"
  * bodySite 0..1 FRLMBodyStructure "Site de l'observation"
* note 0..1 string "Commentaire"
