// ne fait partie du modèle Européen EHDS, on le garde pour des prochaines versions
Profile: FRTaskPatientTransportDocument
Parent: Task
Id: fr-task-patient-transport-document
Title: "Task - FR Task Patient Transport Document"
Description: "FRTaskPatientTransportDocument permet de décrire le transport d'un patient/usager lors d'un déplacement (entrée ou sortie d'hôpital, ...)."

* identifier 1..1 MS
  * ^short = "Identifiant du transport"

* code 1..1 MS
* code ^short = "Mode de transport (Ambulance publique, Taxi, VSL, …)"
* code from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-mode-de-transport-cisis

* input ^slicing.discriminator.type = #pattern
* input ^slicing.discriminator.path = "type"
* input ^slicing.rules = #open
* input contains
    typeMotorisation 1..1 and
    natureTransport 1..1 and 
    lieuDepart 0..1 and 
    destination 0..1 and 
    autresPrecisions 0..* 

// Type de motorisation
* input[typeMotorisation].value[x] only CodeableConcept
* input[typeMotorisation].valueCodeableConcept from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-type-motorisation-cisis
* input[typeMotorisation].type.coding.code = #GEN-346
* input[typeMotorisation].type.coding.system from $terminologie-cisis
* input[typeMotorisation] ^short = "Type de motorisation"

// Nature du transport
* input[natureTransport].value[x] only CodeableConcept
* input[natureTransport].type.coding.code = #GEN-345
* input[natureTransport].type.coding.system from $terminologie-cisis
* input[natureTransport] ^short = "Nature du transport de l'usager"

// Lieu de départ
* input[lieuDepart].value[x] only Address
* input[lieuDepart].type.text = "Lieu de départ"

// Destination
* input[destination].value[x] only Address
* input[destination].type.text = "Destination"
* input[destination] ^short = "Adresse de destination"

// Autres précision sur le trajet ou le transport du patient
* input[autresPrecisions].value[x] 1..1
* input[autresPrecisions].type.text = "Autres précision"
* input[autresPrecisions] ^short = "Autres précision sur le trajet ou le transport du patient"

// Date début / fin de transport
* executionPeriod 1..1 
* executionPeriod.start 1..1
* executionPeriod.end 1..1

// transporteur
* owner MS
* owner ^short = "Transporteur"
* owner only Reference(FRPractitionerRoleDocument or FROrganizationDocument)
