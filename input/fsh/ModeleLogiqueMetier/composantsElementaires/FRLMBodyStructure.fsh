Logical: FRLMBodyStructure
Id: fr-lm-body-structure	
Title: "Logical model - FR LM Body Structure"
Description: """Localisation anatomique"""
Characteristics: #can-be-target

* morphology 0..1 CodeableConcept "Type de structure représentée par la localisation anatomique. Peut décrire une morphologie normale ou anormale."
* location 0..1 CodeableConcept "Site anatomique"
  * ^binding.description = "SNOMED CT"
  * ^binding.strength = #preferred
* locationQualifier 0..* CodeableConcept "Qualificatif complémentaire de la localisation anatomique (par exemple : supérieur, inférieur, distal, proximal)."
  * ^binding.description = "jdv-modificateur-topographique-cisis"
  * ^binding.valueSet = "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-modificateur-topographique-cisis"
* description 0..1 string "Description textuelle de la localisation anatomique"