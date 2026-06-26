Profile: FRCompositionDocument
Parent: clinical-document-composition
Id: fr-composition-document
Title: "FR Composition Document"
Description: "Ce profil est utilisé pour représenter un document médical."

//Composition.meta.profile : templateId
* meta.profile ^slicing.discriminator.type = #value
* meta.profile ^slicing.discriminator.path = "$this"
* meta.profile ^slicing.rules = #open
* meta.profile ^slicing.description = "Modèle du document et version du modèle"
* meta.profile contains canonical 0..1
* meta.profile[canonical] = Canonical(fr-composition-document)

* extension[R5-Composition-version] 1..1
* extension[R5-Composition-version] ^short = "Version du document"
* extension[R5-Composition-version] obeys comp-1

// data-enterer-extension
* extension[data-enterer].extension[type] 1..1
* extension[data-enterer].extension[type] ^short = "Type de participation : opérateur de saisie"
* extension[data-enterer].extension[time] 1..1
* extension[data-enterer].extension[time] ^short = "Date de la saisie"
* extension[data-enterer].extension[party] ^short = "Opérateur"
* extension[data-enterer].extension[party].valueReference only Reference(FRPractitionerRoleDocument)

// informant-extension
* extension[informant].extension[type] 1..1 
* extension[informant].extension[type] ^short = "Type de participation : Informateur"
* extension[informant].extension[party] ^short = "Informateur"
* extension[informant].extension[party].valueReference only Reference(FRPractitionerRoleDocument or FRRelatedPersonDocument or FRPatientINSDocument or FRPatientDocument)

// information-recipient-extension
* extension[information-recipient].extension[type] 1..1 
* extension[information-recipient].extension[type] ^short = "Type de participation : destinataire"
* extension[information-recipient].extension[type].valueCodeableConcept from FRValueSetParticipationType
* extension[information-recipient].extension[party] ^short = "Destinataire"
* extension[information-recipient].extension[party].valueReference only Reference(FRPractitionerRoleDocument)

// participant-extension
* extension[participant].extension[type] 1..1 
* extension[participant].extension[type] ^short = "Type de participation"
* extension[participant].extension[type].valueCodeableConcept from $JDV_J144-ParticipationType-CISIS (required)
* extension[participant].extension[function] 0..1 
* extension[participant].extension[function] ^short = "Précision sur le rôle fonctionnel"
* extension[participant].extension[function].valueCodeableConcept from $JDV_J47-FunctionCode-CISIS (required)
* extension[participant].extension[time] 1..1 
* extension[participant].extension[time] ^short = "Date de début et/ou de fin de la participation"
* extension[participant].extension[party] ^short = "Identification du participant"
* extension[participant].extension[party].valueReference only Reference(FRPractitionerRoleDocument)
* extension[participant].extension[party] obeys comp-3

// basedOn-extension

* extension[basedOn].valueReference only Reference(ServiceRequest)
* extension[basedOn].valueReference ^short = "Association du document à une prescription"

* language 1..1 MS
* identifier ^short = "Identifiant lot de versions"
* identifier 1..1 MS
* status MS
* status ^short = "Statut du document"
* type only CodeableConcept
* type MS
* type ^short = "Type de document"
* title MS
* title ^short = "Titre du document CDA"
* title ^definition = "Les volets de contenus du CI-SIS fixent parfois le titre du document. Dans les autres cas, le titre provient soit de la saisie directe par le professionnel ou le patient/usager, soit d’une valeur par défaut générée par le logiciel et modifiable par le professionnel ou le patient/usager."
* subject 1.. MS
* subject ^short = "Patient / Usager"
* subject only Reference(FRPatientINSDocument or FRPatientDocument)
* subject.reference 1.. MS
* date MS
* date ^short = "Date de création"
* confidentiality 1..1 MS
* confidentiality ^short = "Niveau de confidentialité"
* author MS
* author ^short = "Auteur du document"
* author ^definition = "author permet d’enregistrer un auteur du document. Un document peut avoir un ou plusieurs auteurs. Un professionnel de santé auteur d'un document est toujours dans une situation d'exercice donnée (FRPractitionerRoleDocument)."
* author only Reference(FRPractitionerRoleDocument or FRPatientINSDocument or FRPatientDocument or FRDeviceAuteurDocument)
* author.extension contains fr-author-time-extension named time 1..1

// Responsable du document : legalAuthenticator
* attester[legal_attester] 1..1
* attester[legal_attester].mode = #legal
* attester[legal_attester].time 1..1
* attester[legal_attester].party 1..1 
* attester[legal_attester].party only Reference(FRPractitionerRoleDocument)
* attester[legal_attester] ^short = "Responsable du document"

// Professionnel attestant la validité du contenu du document : authenticator
* attester[professional_attester].mode = #professional
* attester[professional_attester].time 1..1
* attester[professional_attester].party 1..1 
* attester[professional_attester].party only Reference(FRPractitionerRoleDocument)
* attester[professional_attester] ^short = "Professionnel attestant la validité du contenu du document"

* event 1..*
* event.detail 0..1
* event.period ^short = "Date et heure de l’évènement documenté"
* event.extension contains fr-performer-event-extension named performer 0..1

// Slicing event : évènement documenté principal 
* event ^slicing.discriminator.type = #value
* event ^slicing.discriminator.path = "$this"
* event ^slicing.rules = #open

* event contains principalEvent 1..1
* event[principalEvent] ^short = "Evènement documenté principal"
* event[principalEvent].period 1..1 
* event[principalEvent].detail 0..1
* event[principalEvent].extension[performer] 1..1 
* event[principalEvent].extension[performer] ^short = "Exécutant de l'évènement documenté principal"

* relatesTo 1..*
* relatesTo ^short = "Document de référence"
* relatesTo.target[x] only Identifier or Reference(FRCompositionDocument)
* relatesTo.targetIdentifier.type 1..1
* relatesTo.targetIdentifier.system 1..1
* relatesTo.targetIdentifier.value 1..1

* relatesTo[replaced_document] 0..1
* relatesTo[replaced_document].code = #replaces

* relatesTo contains transformed_document 0..1 
* relatesTo[transformed_document].code = #transforms

* custodian 1..1
* custodian ^short = "Structure chargée de la conservation du document"
* custodian only Reference(FROrganizationDocument)
* encounter 1..1 MS
* encounter only Reference(FREncounterCareDocument)

* section 1..*
// Binder section.code sur le ValueSet
* section.code from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-section-document-cisis
* section.title 1..1
* section.text 1..1
* section obeys comp-4

/// INVARIANTS
Invariant: comp-1
Description: "La valeur de l'extension versionNumber doit être un entier."
Expression: "value.matches('^[0-9]+$')" 
Severity: #error

Invariant: comp-3
Description: "La valeur du PractitionerRole.code dans l'extension[party]' doit être 'PROV' ou 'AGNT'."
Expression: "value.resolve().code.coding.code.contains('PROV') or value.resolve().code.coding.code.contains('AGNT')"
Severity: #error

Invariant: comp-4
Description: "Une section ne peut pas contenir à la fois des entrées et des sous-sections."
Expression: "not(exists(f:entry) and exists(f:section))"
Severity: #error
