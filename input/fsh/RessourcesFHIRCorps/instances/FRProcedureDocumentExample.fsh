Instance: example-procedure-data-absent-reason
InstanceOf: FRProcedureDocument
Title: "Example - Procedure avec Data Absent Reason"
Description: """Exemple illustrant l'usage de l'extension `data-absent-reason` sur les éléments
obligatoires de la ressource Procedure dont la valeur est inconnue ou temporairement indisponible.

Cas d'usage illustrés :
- `code` : l'acte est inconnu → extension `data-absent-reason` avec code `unknown`
  (liaison extensible → l'extension peut se substituer au codage)
- `performedDateTime` : la date de l'acte est temporairement indisponible → extension `data-absent-reason` avec code `temp-unknown`
- `status` : le statut est inconnu → code d'exception `unknown` du ValueSet `event-status`
  (liaison required → on utilise directement le code d'exception du ValueSet, pas l'extension)"""
Usage: #example

// Identification
* identifier.value = "urn:uuid:a1b2c3d4-e5f6-7890-abcd-ef1234567890"
* identifier.system = "urn:ietf:rfc:3986"

// Statut (liaison required)
// Le statut est inconnu → code d'exception "unknown" du ValueSet event-status
// VS required interdit l'usage de data-absent-reason ; on utilise le code d'exception natif sauf en cas d'indisponibilité dans le VS.
* status = #unknown

// Patient
* subject.reference = "Patient/exemple-patient"
* subject.display = "Exemple Patient"

// Code de l'acte (liaison extensible)
// L'acte réalisé est inconnu → extension data-absent-reason avec code "unknown"
// La liaison extensible autorise l'usage de data-absent-reason en l'absence de code applicable.
* code.text = "Acte réalisé inconnu : utilisation de l'extension data-absent-reason avec code 'unknown'"
* code.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* code.extension.valueCode = #unknown

// Date de l'acte (performedDateTime)
// La date est temporairement indisponible → extension data-absent-reason avec code "temp-unknown"
* performedDateTime.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* performedDateTime.extension.valueCode = #temp-unknown
