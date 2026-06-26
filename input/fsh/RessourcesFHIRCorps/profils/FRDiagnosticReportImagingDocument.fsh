Profile: FRDiagnosticReportImagingDocument
Id: fr-diagnostic-report-imaging-document
Parent: FRDiagnosticReportDocument
Title: "DiagnosticReport - FR Diagnostic Report Imaging Document"
Description: """
Le profil FRDiagnosticReportImagingDocument est dédié aux comptes rendus d’imagerie.
Ce document représente le rapport d’un examen d’imagerie. Il constitue la ressource principale qui fait référence à l’ensemble des données produites lors de l’examen d’imagerie.
"""

* identifier 1..
  * ^short = "identifiant du compte-rendu d'imagerie"

* status
  * ^short = "Statut du compte-rendu d'imagerie"

// référence à la demande d'examen d'imagerie contenant l'Accession Number comme identifiant
* basedOn MS
* basedOn ^slicing.discriminator.type = #pattern  
* basedOn ^slicing.discriminator.path = "$this"
* basedOn ^slicing.rules = #open
* basedOn contains serviceRequestAccessionNumber 0..*
* basedOn[serviceRequestAccessionNumber] only Reference(FRServiceRequestDocument)
* basedOn[serviceRequestAccessionNumber] ^short = "Référence à la demande d'examen contenant l'Accession Number"

* category = $LNC#18748-4 "Imagerie"

* code from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-code-document-imagerie-cisis (required)
  * ^short = "Type de document d'imagerie"

* subject only Reference(FRPatientINSDocument)
* subject ^short = "Patient concerné par le compte-rendu d'imagerie"

* performer MS
* performer ^slicing.discriminator.type = #pattern
* performer ^slicing.discriminator.path = "$this"
* performer ^slicing.rules = #open

* performer contains organization 0..*
* performer[organization] only Reference(FROrganizationDocument)
* performer[organization] ^short = "Organization productrice du CR d'imagerie"

* resultsInterpreter.extension[author] ^short = "Auteur du compte-rendu d'imagerie (Médecin - Radiologue)"

* result ^short = "Résultats d'examen (actuels ou antérieurs)"
* result ^comment = "Les résultats sont exprimés sous forme non codée dans notre cas d’usage. Le contenu narratif du résultat est porté dans une note"

// Slicing des résultats d'examen en résultats actuels et résultats antérieurs
* result ^slicing.discriminator.type = #pattern
* result ^slicing.discriminator.path = "reference"
* result ^slicing.ordered = false
* result ^slicing.rules = #open

* result contains resultatActuel 0..1 and resultatAnterieur 0..1

// Slice : résultats actuels
* result[resultatActuel] ^short = "Résultats actuels de l'examen d'imagerie"
* result[resultatActuel] ^comment = "Si les résultats d'examen sont codés, ils sont référencés dans FRObservationResultDocument. Si les résultats d'examen sont exprimés sous forme non codée, ils sont portés dans une note de FRObservationResultDocument."
* result[resultatActuel] only Reference(FRObservationResultDocument)

// Slice : résultats antérieurs
* result[resultatAnterieur] ^short = "Résultats antérieurs"
* result[resultatAnterieur] ^comment = "Si les résultats d'examen sont codés, ils sont référencés dans FRObservationResultDocument. Si les résultats d'examen sont exprimés sous forme non codée, ils sont portés dans une note de FRObservationResultDocument."
* result[resultatAnterieur] only Reference(FRObservationResultDocument)

// La conclusion est non codée
* conclusion ^short = "Conclusions cliniques et interprétations du rapport d’imagerie."

* imagingStudy only Reference(FRImagingStudyDocument)
* imagingStudy ^short = "Acte d'imagerie associé au compte-rendu"

* extension contains FRComparisonStudiesExtension named comparaison 0..* MS
* extension[comparaison] ^short = "Comparaisons avec des résultats antérieurs"

* extension contains FRPatientHistoryExtension named historiqueMedical 0..* MS
* extension[historiqueMedical] ^short = "Historique médical du patient pertinent pour l'examen d'imagerie"

* extension contains FRImagingProcedureExtension named procedure 0..* MS
* extension[procedure] ^short = "Technique d'imagerie"

/* Création des extensions utilisées dans le profil FRDiagnosticReportImagingDocument en suivant
 la même structure que HL7 Europe DiagnosticReportEuImaging */

// Aujourd'hui, la comparaison des examens d'imagerie avec des examens antérieur est représentée dans une note textuelle (comparaison non codée)
Extension: FRComparisonStudiesExtension
Title: "FR Comparison Studies Extension"
Id: fr-comparison-studies-extension
Description: "Examen de comparaison radiologique"
Context: DiagnosticReport
* value[x] only Reference(FRImagingStudyDocument)

Extension: FRPatientHistoryExtension
Title: "FR Patient History Extension"
Id: fr-patient-history-extension
Description: "Historique médical du patient pertinent pour l'examen d'imagerie"
Context: DiagnosticReport
//* value[x] only Reference(Resource)
* value[x] only Reference(FRObservationPregnancyDocument or FRObservationContraIndicationsImagingDocument or FRConditionDocument or Observation or FRDeviceAuteurDocument or FRMedicationAdministrationDocument)

Extension: FRImagingProcedureExtension
Title: "FR Imaging Procedure Extension"
Id: fr-imaging-procedure-extension
Description: "Imaging procedure used for the imaging acquisition"
Context: DiagnosticReport
* value[x] only Reference(FRProcedureImagingDocument)