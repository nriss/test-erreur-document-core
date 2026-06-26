Extension: FRImmunizationTypeExtension
Id: fr-immunization-type-extension
Title: "FR Immunization Type Extension"
Description: "Extension permettant de représenter le type de vaccination (ex: INITIMMUNIZ, BOOSTER, IMMUNIZ)."
* ^context.type = #element
* ^context.expression = "Immunization"

* value[x] only CodeableConcept
* valueCodeableConcept from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-hl7-v3-ActSubstanceAdministrationImmunizationCode-cisis

