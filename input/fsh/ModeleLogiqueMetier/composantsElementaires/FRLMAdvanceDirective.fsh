Logical: FRLMAdvanceDirective
Id: fr-lm-advance-directive
Parent: FRLMEntry
Title: "Logical model - FR LM Advance Directive"
Description: """Entree Directive anticipee"""
Characteristics: #can-be-target

* header.status 1..1
  * ^short = "Statut de la directive anticipée"
* date 1..1 dateTime "Date de la directive anticipée"
* category 1..1 CodeableConcept "Type de directive"
  * ^binding.description = "jdv-type-directive-anticipee-cisis (1.2.250.1.213.1.1.5.136)"
  * ^binding.valueSet = "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-type-directive-anticipee-cisis"
* value 1..1 boolean "Procédure autorisée ou pas"
* note 0..1 string "Commentaire"
* attachment 0..1 FRLMAttachment "Piece jointe associee a la directive"