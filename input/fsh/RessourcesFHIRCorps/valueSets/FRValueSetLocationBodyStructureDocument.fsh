ValueSet: FRValueSetLocationBodyStructureDocument
Id: fr-vs-location-body-structure-document
Title: "ValueSet – FR ValueSet Localisation anatomique et voie d'abord"
Description: """
Codes SNOMED CT autorisés pour décrire une localisation anatomique ou une voie d'abord.
Inclut :
- Les structures anatomiques pour body site : http://hl7.org/fhir/ValueSet/body-site
- Les structures anatomiques pour voie d'abord (approach-site-codes) : http://hl7.org/fhir/ValueSet/approach-site-codes
"""

// Structures anatomiques cibles (Procedure.bodySite)
* include codes from valueset http://hl7.org/fhir/ValueSet/body-site

// Structures anatomiques pour voie d'abord (approachBodyStructure)
* include codes from valueset http://hl7.org/fhir/ValueSet/approach-site-codes
