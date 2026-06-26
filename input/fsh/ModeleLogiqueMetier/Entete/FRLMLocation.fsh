Logical: FRLMLocation
Id: fr-lm-location
Title: "Logical model - FR LM Location"
Description: """Lieu"""
Characteristics: #can-be-target

* identifier 0..* Identifier "Identifiant du lieu"
* name 0..1 string "Nom du lieu"
* description 0..1 string "Informations complémentaires sur le lieu permettant de mieux l'identifier, au-delà de son nom."
* type 0..* CodeableConcept "Type de fonction exercée sur le lieu"
  * ^binding.description = "(preferred): https://terminology.hl7.org/ValueSet-v3-ServiceDeliveryLocationRoleType.html"
* address 0..1 Address "Adresse du lieu"
* managingOrganisation 0..1 FRLMOrganisation "Organisation responsable du lieu"
* partOf 0..1 FRLMLocation "Lieu dont celui-ci fait physiquement partie"