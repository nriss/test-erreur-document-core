Profile: FRMediaDocument
Parent: Media
Id: fr-media-document
Title: "Media - FR Media Document"
Description: "FRMediaDocument permet de positionner une image de type gif, jpeg, png ou bm. Elle est encodée en base 64   "

// mettre le bon canonical à partir de HL7 Europe Base and Core FHIR IG
//* ^extension[$imposeProfile].valueCanonical = Canonical()

* content MS
// Langue du contenu
* content.language MS
* content.language ^short = "Langue de l'image (RFC 5646)"
// Contenu image encodé en Base64
* content.contentType MS
* content.contentType ^short = "Type MIME du média"
* content.data MS
* content.data ^short = "Image encodée en base64"

// Sujet concerné
* subject MS
* subject only Reference(FRPatientINSDocument or FRSpecimenDocument)
* subject ^short = "Patient ou specimen concerné par l'image"

// actor (performer, informant, author, participant)
* operator MS
* operator.extension contains
    FRActorExtension named performer 0..* and
    FRActorExtension named author 0..* and
    FRActorExtension named informant 0..* and
    FRActorExtension named participant 0..*

* operator.extension[performer] ^short = "Performer : Personne ayant réalisé l’acte"
* operator.extension[performer].extension[type].valueCode = #PRF

* operator.extension[author] ^short = "Auteur du média"
* operator.extension[author].extension[type].valueCode = #AUT
* operator.extension[author].extension[actor].valueReference only Reference(FRDeviceAuteurDocument or FRPractitionerRoleDocument)

* operator.extension[informant] ^short = "Informateur"
* operator.extension[informant].extension[type].valueCode = #INF

* operator.extension[participant] ^short = "Participant : Personne ayant participé à l’acte"
* operator.extension[participant].extension[type].valueCode = #PART

// EntryRelationship
* basedOn MS
* basedOn only Reference(ServiceRequest or CarePlan)
* basedOn ^short = "Acte ou plan de soins à l'origine de l'image"

// Reference
* partOf MS
* partOf only Reference(Observation or DiagnosticReport or Procedure)
* partOf ^short = "Lien avec une ressource clinique"

/* Précondition
Proposition 1 : utiliser reasonCode */ 
* reasonCode MS
* reasonCode ^short = "Contexte ou justification de l'image (précondition)"

// Proposition 2 : utiliser note.text si besoin d'un texte libre
/* * note 0..*
* note.text ^short = "Commentaire libre sur la précondition"
 */