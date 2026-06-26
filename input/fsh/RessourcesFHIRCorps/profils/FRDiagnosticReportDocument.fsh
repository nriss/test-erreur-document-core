Profile: FRDiagnosticReportDocument
Parent: DiagnosticReport
Id: fr-diagnostic-report-document
Title: "DiagnosticReport - FR Diagnostic Report Document"
Description: "FRDiagnosticReportDocument est un profil permettant de regrouper les types des résultats classés par type d’examens (BIO, IMG, etc…)."

//* ^extension[$imposeProfile].valueCanonical = Canonical()
* identifier MS
* identifier ^short = "Identifiant"
* category 1.. MS
  * ^short = "Type de résultat"
* category from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-resultat-type-cisis (preferred)

* code ^short = "Code du résultat"
* status MS
* status ^short = "Statut"
* status = #final
* effective[x] 1..1 MS
* effective[x] only dateTime
  * ^short = "Date"
* performer MS 
  * ^short = "Exécutant"
* performer only Reference (FRPractitionerDocument or FRPractitionerRoleDocument or FROrganizationDocument)

* resultsInterpreter MS
  * ^short = "Auteur"
* resultsInterpreter only Reference (FRPractitionerDocument or FRPractitionerRoleDocument or FROrganizationDocument)  
* resultsInterpreter.extension contains FRActorExtension named author 1..*
* resultsInterpreter.extension[author] ^short = "Auteur du compte-rendu (Médecin - Radiologue - Biologiste ...)"
* resultsInterpreter.extension[author].extension[type].valueCode = #AUT
* resultsInterpreter.extension[author].extension[actor].valueReference only Reference(FRPractitionerRoleDocument)

* result 1..* MS
  * ^short = "Résultat"
* result only Reference (FRObservationResultDocument or FRObservationLaboratoryReportResultsDocument)

* media MS
* media ^short = "Images clés associées à ce rapport"
  * link MS
  * link ^short = "Lien vers les images clés"
  * link only Reference(FRMediaDocument)

* conclusion MS
* conclusion ^short = "Conclusions cliniques et interprétations du rapport."

* presentedForm 1..1 MS
* presentedForm ^short = "Copie du document"