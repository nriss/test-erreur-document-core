/// INVARIANTS
Invariant:  bdle-document-1
Description: "Un Bundle DOIT inclure une et une seule ressource Composition."
Expression: "entry.resource.ofType(Composition).count() = 1"
Severity:    #error

// PROFILE
Profile: FRBundleDocument
Parent: Bundle
Id: fr-bundle-document
Title: "FR Bundle Document"
Description: "Ce profil permet d’assembler les éléments de l’en-tête et du corps d’un document."
* obeys bdle-document-1
* identifier 1..
* type = #document
* timestamp 1..1

* entry MS
// Slicing sur entry
* entry ^slicing.discriminator[0].type = #type
* entry ^slicing.discriminator[=].path = "resource"
* entry ^slicing.discriminator[+].type = #profile
* entry ^slicing.discriminator[=].path = "resource"
* entry ^slicing.rules = #open
* entry ^short = "Ressource Entry dans le FRBundleDocument"
* entry ^definition = "Une ressource Entry incluse dans le bundle de ressources du document"
* entry ^comment = "Doit contenir la Composition comme première entrée"

* entry.fullUrl 1.. MS
// Définition de l'entrée composition
* entry contains composition 1..1
* entry[composition].resource only FRCompositionDocument

// Définition de l'entrée patient
* entry contains patient 1..1
* entry[patient].resource only FRPatientINSDocument or FRPatientDocument

// Définition de l'entrée practitionerRole
* entry contains practitionerRole 1..*
* entry[practitionerRole].resource only FRPractitionerRoleDocument

// Définition de l'entrée practitioner
* entry contains practitioner 1..*
* entry[practitioner].resource only FRPractitionerDocument

// Définition de l'entrée organization
* entry contains organization 1..*
* entry[organization].resource only FROrganizationDocument

// Définition de l'entrée device
* entry contains device 0..1
* entry[device].resource only FRDeviceAuteurDocument

// Définition de l'entrée encounter
* entry contains encounter 1..*
* entry[encounter].resource only FREncounterCareDocument

// Définition de l'entrée location
* entry contains location 1..*
* entry[location].resource only FRLocationDocument

// Définition de l'entrée relatedPerson
* entry contains  relatedPerson 0..*
* entry[relatedPerson].resource only FRRelatedPersonDocument