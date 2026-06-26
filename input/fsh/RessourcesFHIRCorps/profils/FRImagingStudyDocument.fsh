Profile: FRImagingStudyDocument
Parent: ImagingStudy
Id: fr-imaging-study-document
Title: "ImagingStudy - FR Imaging study Document"
Description: "FRImagingStudyDocument (DICOM Part 20 - Study Act) contient les informations DICOM d’un examen d’imagerie réalisé sur un patient.
L’examen est composé d'une ou de plusieurs séries d’images médicales."

// mettre le bon canonical à partir de HL7 Europe Base and Core FHIR IG
//* ^extension[$imposeProfile].valueCanonical = Canonical()

* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.ordered = false
* identifier 1..* MS
* identifier ^short = "Study Instance UUID"
* identifier contains studyInstanceUid 1..*
* identifier[studyInstanceUid] only FRStudyInstanceUidIdentifierDocument

// référence à la demande d'examen d'imagerie contenant l'Accession Number comme identifiant
* basedOn MS
* basedOn ^slicing.discriminator.type = #pattern  
* basedOn ^slicing.discriminator.path = "$this"
* basedOn ^slicing.rules = #open
* basedOn contains serviceRequestAccessionNumber 0..*
* basedOn[serviceRequestAccessionNumber] only Reference(FRServiceRequestDocument)
* basedOn[serviceRequestAccessionNumber] ^short = "Référence à la demande d'examen contenant l'Accession Number"

* numberOfSeries MS
* numberOfSeries ^short = "Nombre de séries"

* started MS
* started ^short = "Date de l'acte"

* modality 1..* MS
* modality ^short = "Modalité d'acquisition de l'acte d'imagerie"
* modality from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-modalite-acquisition-cisis

* procedureReference ^short = "Technique d'imagerie"
* procedureReference only Reference (FRProcedureImagingDocument)

* series 1..1 MS
* series ^short = "Séries d'examen"

* series.uid ^short = "DICOM Series Instance UID"

* series.started ^short = "Date de la série d'actes"

* series.modality MS
* series.modality ^short = "Modalité d'acquisition de la série d'acte"
* series.modality from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-modalite-acquisition-cisis

// ImagingStudy.series.bodySite est une nouvelle donnée qui n'était pas présente en CDA
* series.bodySite ^short = "Localisation anatomique en SNOMED CT"
* series.bodySite from http://hl7.org/fhir/ValueSet/body-site (extensible)

 // Modificateurs topographiques
* series.laterality 1..1 MS
* series.laterality ^short = "modificateur topographique"
* series.laterality from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-modificateur-topographique-cisis

* series.instance 1..* MS
* series.instance ^short = "Url permettant d’accéder aux images sur la Drim box source"
* series.instance.sopClass from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-sop-class-cisis (required)
* series.instance.extension contains FRNumberOfFramesExtension named number-of-frames 0..1
* series.instance.extension[number-of-frames] ^short = "Nombre de cadres dans une instance d'image"

* series.endpoint ^short = "Référence WADO"
* series.endpoint only Reference(FREndpointWadoDocument)

//  Proposition 1 pour Objectifs de référence
/* * reasonReference 0..1 MS
* reasonReference ^short = "Objectifs de référence"
* reasonReference only Reference(FrObservationPurposeOfReferenceDICOM)  */
* reasonCode ^short = "Objectifs de référence de l'imagerie"
* reasonCode from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-imagerie-objectif-reference-cisis