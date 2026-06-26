Profile: FRDiagnosticReportBIOChapterDocument
Parent: FRDiagnosticReportDocument
Id: fr-diagnostic-report-bio-chapter-document
Title: "DiagnosticReport - FR Diagnostic Report BIO chapter Document"
Description: "FRDiagnosticReportBIOChapterDocument utilisé pour représenter un CR de biologie"

* code MS 
* code ^short = "Type de document"

* category = $LNC#26436-6 "Biologie polyvalente"
* category
  * ^short = "Catégorie du rapport de biologie"
* category ^slicing.discriminator.type = #value
* category ^slicing.discriminator.path = "$this"
* category ^slicing.rules = #open
* category contains chapitreBIO 1..*
* category[chapitreBIO] 
  * ^short = "Codes des chapitres du compte-rendu de BIO"
  * ^definition = "Le code du chapitre doit être un code issu du jeu de valeurs Circuit de la biologie (disponible sur bioloinc.fr), onglet ‘2.Chapitres LOINC’ et contenant les codes et libellés traduits en français pour la biologie."

* effective[x] ^short = "Date et heure de création du document"

* status ^short = "Statut du rapport de BIO (final, partial ...)"

* performer ^slicing.discriminator.type = #pattern
* performer ^slicing.discriminator.path = "$this"
* performer ^slicing.rules = #open
* performer contains organization 0..*
* performer[organization] only Reference(FROrganizationDocument)
* performer[organization] ^short = "Organization productrice du CR de biologie"

* resultsInterpreter ^short = "Interpréteur de résultat primaire"

* encounter MS
* encounter ^short = "L’événement de soins auquel se rapporte ce compte rendu de laboratoire (moment où l’examen a été prescrit)."
* encounter only Reference(FREncounterDocument)

* subject MS
* subject 1..1
* subject ^short = "Sujet concerné"
* subject only Reference(FRPatientINSDocument)

* specimen MS
* specimen only Reference(FRSpecimenDocument)
* specimen ^short = "Échantillons sur lesquels repose ce compte rendu."

* result 1..* MS
* result ^short = "Résultats d'examen de biologie"
* result only Reference(FRObservationLaboratoryReportResultsDocument)

* conclusion ^short = "Si le CR de BIO ne comporte pas de sous-chapitres (les commentaires seront dans les sous-chapitres)."