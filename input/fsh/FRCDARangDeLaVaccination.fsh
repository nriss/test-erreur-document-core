Profile: FRCDARangDeLaVaccination
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Observation
Id: fr-cda-rang-de-la-vaccination
Title: "CDA - FR Rang de la vaccination"
Description: "Entrée FR-Rang-de-la-vaccination: CDA - Medication series number observation. Cette entrée permet de préciser le rang de la vaccination dans une série d'injections vaccinantes."
* classCode MS
* classCode = #OBS
* moodCode MS
* moodCode = #EVN
* id MS
* id ^short = "Identifiant de l'entrée"
* id ^definition = "Identifiant de l'entrée"
* templateId 1..2
* templateId ^slicing.discriminator.type = #value
* templateId ^slicing.discriminator.path = "root"
* templateId ^slicing.rules = #open
* templateId contains ccdMedicationSeriesNumberObservation 1..1
and frRangDeLaVaccination 1..1
* templateId[ccdMedicationSeriesNumberObservation].root 1..1 
* templateId[ccdMedicationSeriesNumberObservation].root = "2.16.840.1.113883.10.20.1.46"
* templateId[ccdMedicationSeriesNumberObservation] ^short = "Conformité Medication series number observation (CCD)"
* templateId[ccdMedicationSeriesNumberObservation] ^definition = "Conformité Medication series number observation (CCD)"
* templateId[frRangDeLaVaccination].root 1..1
* templateId[frRangDeLaVaccination].root = "1.2.250.1.213.1.1.3.82"
* templateId[frRangDeLaVaccination] ^short = "Conformité FR-Rang-de-la-vaccination (CI-SIS)"
* templateId[frRangDeLaVaccination] ^definition = "Conformité FR-Rang-de-la-vaccination (CI-SIS)"
* code MS
* code ^short = "Code de l'entrée"
* code ^definition = "Code de l'entrée"
* code.code = #30973-2
* code.displayName = "Rang de la vaccination"
* code.codeSystem = "2.16.840.1.113883.6.1"
* code.codeSystemName = "LOINC"
* code.code 1..1 MS
* code.displayName MS
* code.codeSystem 1..1 MS
* derivationExpr MS
* text MS
* text ^short = "Partie narrative de l’entrée"
* text ^definition = "Partie narrative de l’entrée"
* statusCode MS
* statusCode 1..1
* statusCode ^short = "Statut de l'entrée"
* statusCode ^definition = "Statut de l'entrée"
* statusCode.code from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-hl7-v3-ActStatus-cisis (required)
* effectiveTime MS
* effectiveTime ^short = "Date de l’observation"
* effectiveTime ^definition = "Date de l’observation"
* priorityCode MS
* priorityCode ^short = "Priorité"
* priorityCode ^definition = "Priorité"
* priorityCode from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-hl7-v3-ActPriority-cisis (required)
* repeatNumber MS
* languageCode MS
* value MS
* value 1..1
* value ^short = "Rang de la vaccination"
* value ^definition = "Rang de la vaccination"
* value only INT