Profile: FRCDACriticite
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Observation
Id: fr-cda-criticite
Title: "CDA - FR Criticite"
Description: "Entrée FR-Criticite: Cette entrée permet de fournir la criticité d'une l’allergie ou hypersensibilité. Elle est utilisée exclusivement dans un lien entryRelationship grâce auquel elle est liée à l’élément qu’elle qualifie."
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
and frCriticite 1..1
* templateId[iheSimpleObservation].root 1..1
* templateId[iheSimpleObservation].root = "1.3.6.1.4.1.19376.1.5.3.1.4.13"
* templateId[iheSimpleObservation].root ^short = "Conformité Simple Observation (IHE PCC)"
* templateId[iheSimpleObservation] ^definition = "Conformité Simple Observation (IHE PCC)"
* templateId[frSimpleObservation].root 1..1
* templateId[frSimpleObservation].root = "1.2.250.1.213.1.1.3.48"
* templateId[frSimpleObservation] ^short = "Conformité Simple Observation (CI-SIS)"
* templateId[frSimpleObservation] ^definition = "Conformité Simple Observation (CI-SIS)"
* templateId[frCriticite].root 1..1
* templateId[frCriticite].root = "1.2.250.1.213.1.1.3.172"
* templateId[frCriticite] ^short = "Conformité FR-Criticite (CI-SIS)"
* templateId[frCriticite] ^definition = "Conformité FR-Criticite (CI-SIS)"
* code MS
* code ^short = "Code de l'observation"
* code ^definition = "Code de l'observation"
* code.code = #82606-5
* code.displayName = "Criticité"
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
* value ^short = "Valeur de l'observation"
* value ^definition = "Valeur de l'observation"
* value from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-hl7-allergy-intolerance-criticality-cisis (required)
* author 0..1
* author only FRCDAAuthor
* author ^short = "Une entrée SimpleObservations est supposée être rédigée par l'auteur du document (par reconduction de contexte). Toutefois, l'auteur spécifique d'une observation peut être fourni en enregistrant l'auteur dans l'en-tête et en faisant référence à cet auteur dans une l'élément <author> de l'entrée. Si les auteurs sont explicitement répertoriés dans le document, un élément <id> permet de faire référence à l'ID de l'auteur dans l'en-tête. Si l'auteur de l'observation n'est pas l'auteur du document, l'élément <person> doit comporter son nom et son identifiant."
* author ^definition = "Auteur de l'observation"

