Profile: FRCDACertitude
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Observation
Id: fr-cda-certitude
Title: "CDA - FR Certitude"
Description: "Entrée FR-Certitude: Cette entrée permet de fournir la certitude d'une observation (problème ou allergie/hypersensibilité). Elle est utilisée exclusivement dans un lien entryRelationship grâce auquel elle est liée à l’élément qu’elle qualifie."
* classCode MS
* classCode = #OBS
* moodCode MS
* moodCode = #EVN
* id 1..1 MS
* id ^short = "Identifiant de l'entrée"
* id ^definition = "Identifiant de l'entrée"
* templateId 1..3
* templateId ^slicing.discriminator.type = #value
* templateId ^slicing.discriminator.path = "root"
* templateId ^slicing.rules = #open
* templateId contains iheSimpleObservation 1..1
and frSimpleObservation 1..1
and frCertitude 1..1
* templateId[iheSimpleObservation].root 1..1
* templateId[iheSimpleObservation].root = "1.3.6.1.4.1.19376.1.5.3.1.4.13"
* templateId[iheSimpleObservation] ^short = "Conformité Simple Observation (IHE-PCC)"
* templateId[iheSimpleObservation] ^definition = "Conformité Simple Observation (IHE-PCC)"
* templateId[frSimpleObservation].root 1..1
* templateId[frSimpleObservation].root = "1.2.250.1.213.1.1.3.48"
* templateId[frSimpleObservation] ^short = "Conformité FR-Simple-observation (CI-SIS)"
* templateId[frSimpleObservation] ^definition = "Conformité FR-Simple-observation (CI-SIS)"
* templateId[frCertitude].root 1..1
* templateId[frCertitude].root = "1.2.250.1.213.1.1.3.171"
* templateId[frCertitude] ^short = "Conformité FR-Certitude (CI-SIS)"
* templateId[frCertitude] ^definition = "Conformité FR-Certitude (CI-SIS)"
* code MS
* code ^short = "Code de l'observation"
* code ^definition = "Code de l'observation"
* code.code = #66455-7
* code.displayName = "Certitude"
* code.codeSystem = "2.16.840.1.113883.6.1"
* code.codeSystemName = "LOINC"
* code.code 1..1 MS
* code.displayName MS
* code.codeSystem 1..1 MS
* text MS
* text 1..1
* text ^short = "Description narrative de l'observation"
* text ^definition = "Description narrative de l'observation"
  * reference 1..1
* statusCode MS
* statusCode 1..1
* statusCode ^short = "Statut de l'observation"
* statusCode ^definition = "Statut de l'observation"
* statusCode.code = #completed
* effectiveTime MS
* effectiveTime 1..1
* effectiveTime ^short = "Date de l'observation"
* effectiveTime ^definition = "Date de l'observation"
* value MS
* value 1..1
* value only CD
* value from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-hl7-condition-ver-status-cisis (required)
