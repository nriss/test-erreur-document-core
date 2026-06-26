Extension: FRActorExtension
Id: fr-actor-extension
Title: "FR Actor Extension"
Description: "Extension permettant de représenter un acteur impliqué dans le document avec son type et sa référence."

* ^context[+].type = #element
* ^context[=].expression = "Resource"

* extension contains
    type 1..1 and
    typeCode 0..1 and
    actor 1..1

// Sous-extension type
* extension[type].value[x] only code
* extension[type].valueCode from FRValueSetActorTypeDocument (required)
* extension[type] ^short = "Type d'acteur (AUT, PRF, PART, INF)"

* extension[typeCode].value[x] only CodeableConcept
* extension[typeCode] ^short = "Type de participation"

// Sous-extension actor
* extension[actor].value[x] only Reference(FRPractitionerRoleDocument or Device or FRDeviceAuteurDocument or FROrganizationDocument or FRRelatedPersonDocument or FRPatientINSDocument or FRPatientDocument)
* extension[actor] ^short = "Référence vers le rôle du praticien dans le document"
