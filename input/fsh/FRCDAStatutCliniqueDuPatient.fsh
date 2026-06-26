Profile: FRCDAStatutCliniqueDuPatient
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Observation
Id: fr-cda-statut-clinique-du-patient
Title: "CDA - FR Statut clinique du patient"
Description: "Entrée FR-Statut-clinique-du-patient: IHE-PCC - Health-Status-Observation. L'entrée Statut clinique du patient permet de donner une évaluation de l'état clinique du patient. L'entrée Statut clinique du patient est un élément observation qui est inséré dans un autre élément à l'aide d'un lien entryRelationship."
* classCode MS
* classCode = #OBS
* moodCode MS
* moodCode = #EVN
* templateId 1..3
* templateId ^slicing.discriminator.type = #value
* templateId ^slicing.discriminator.path = "root"
* templateId ^slicing.rules = #open
* templateId contains ccdProblemHealthStatusObservation 1..1
and iheHealthStatusObservation 1..1
and frStatutCliniqueDuPatient 1..1
* templateId[ccdProblemHealthStatusObservation].root 1..1
* templateId[ccdProblemHealthStatusObservation].root = "2.16.840.1.113883.10.20.1.51"
* templateId[ccdProblemHealthStatusObservation] ^short = "Conformité Problem healthstatus observation (CCD)"
* templateId[ccdProblemHealthStatusObservation] ^definition = "Conformité Problem healthstatus observation (CCD)"
* templateId[iheHealthStatusObservation].root 1..1
* templateId[iheHealthStatusObservation].root = "1.3.6.1.4.1.19376.1.5.3.1.4.1.2"
* templateId[iheHealthStatusObservation] ^short = "Conformité Health Status Observation (IHE PCC)"
* templateId[iheHealthStatusObservation] ^definition = "Conformité Health Status Observation (IHE PCC)"
* templateId[frStatutCliniqueDuPatient].root 1..1
* templateId[frStatutCliniqueDuPatient].root = "1.2.250.1.213.1.1.3.31"
* templateId[frStatutCliniqueDuPatient] ^short = "Conformité FR-Statut-clinique-du-patient (CI-SIS)"
* templateId[frStatutCliniqueDuPatient] ^definition = "Conformité FR-Statut-clinique-du-patient (CI-SIS)"
* code MS
* code ^short = "Code de l’entrée"
* code ^definition = "Code de l’entrée"
* code.code = #11323-3
* code.codeSystem = "2.16.840.1.113883.6.1"
* code.displayName = "Statut clinique du patient"
* code.codeSystemName = "LOINC"
* code.code 1..1 MS
* code.displayName MS
* code.codeSystem 1..1 MS
* text MS
* text 1..1
* text ^short = "Description narrative"
* text ^definition = "Description narrative"
* text.reference 1..1 MS
* statusCode MS
* statusCode 1..1
* statusCode ^short = "Statut de l’entrée"
* statusCode ^definition = "Statut de l’entrée"
* statusCode.code = #completed
* value MS
* value ^short = "Statut clinique du patient"
* value ^definition = "Statut clinique du patient"
* value from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-health-status-code-cisis (required)
* value 1..1
* value only CE
