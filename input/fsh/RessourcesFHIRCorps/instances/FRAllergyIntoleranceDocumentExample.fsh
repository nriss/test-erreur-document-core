Instance: example-allergy-intolerance-data-absent-reason
InstanceOf: FRAllergyIntoleranceDocument
Title: "Example - AllergyIntolerance avec Data Absent Reason"
Description: """Exemple illustrant l'usage de l'extension `data-absent-reason` sur les éléments
obligatoires de la ressource AllergyIntolerance dont la valeur est inconnue ou
temporairement indisponible.

Cas d'usage illustrés :
- `code` : l'agent allergique est inconnu → code `unknown`
- `reaction.manifestation` : la manifestation clinique est inconnue → code `unknown`"""
Usage: #example

// Identifiant de l'allergie ou de l'intolérance
* identifier.value = "urn:uuid:7f0e9c1a-3b2d-4e5f-8a6b-1c2d3e4f5a6b"
* identifier.system = "urn:ietf:rfc:3986"

// Statut clinique et de vérification
* clinicalStatus = http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical#active "Active"
* verificationStatus = http://terminology.hl7.org/CodeSystem/allergyintolerance-verification#unconfirmed "Unconfirmed"

// Agent allergique (1..1)
// L'agent allergique est inconnu → extension data-absent-reason avec code "unknown"
* code.text = "Agent allergique inconnu"
* code.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* code.extension.valueCode = #unknown

// Patient
* patient.reference = "Patient/exemple-patient"
* patient.display = "Exemple Patient"

// Date de début d'identification de l'allergie ou de l'intolérance
* onsetPeriod.start = "2021-12-04"

// Réaction (reaction.manifestation obligatoire 1..*)
// La manifestation clinique est inconnue → extension data-absent-reason avec code "unknown"
* reaction[+].manifestation[+].text = "Manifestation clinique inconnue"
* reaction[=].manifestation[=].extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* reaction[=].manifestation[=].extension.valueCode = #unknown
