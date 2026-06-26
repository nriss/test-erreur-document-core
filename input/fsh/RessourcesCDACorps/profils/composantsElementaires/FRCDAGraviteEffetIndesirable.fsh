Profile: FRCDAGraviteEffetIndesirable
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Observation
Id: fr-cda-gravite-effet-indesirable
Title: "CDA - FR Gravite effet indesirable"
Description: "Entrée FR-Gravite-effet-indesirable
 - Cette entrée permet de préciser la gravité d'un effet indésirable à un médicament. Il est utilisé exclusivement dans un lien 'entryRelationship' grâce auquel il est lié à l’élément qu’il qualifie."
* classCode MS
* classCode = #OBS
* moodCode MS
* moodCode = #EVN
* templateId 1..1
* templateId ^slicing.discriminator.type = #value
* templateId ^slicing.discriminator.path = "root"
* templateId ^slicing.rules = #open
* templateId contains frGraviteEffetIndesirable 1..1
* templateId[frGraviteEffetIndesirable].root 1..1
* templateId[frGraviteEffetIndesirable].root = "1.2.250.1.213.1.1.3.212"
* templateId[frGraviteEffetIndesirable] ^short = "Conformité FR-Gravite-effet-indesirable (CI-SIS)"
* templateId[frGraviteEffetIndesirable] ^definition = "Conformité FR-Gravite-effet-indesirable (CI-SIS)"
* code MS
* code ^short = "Code de l'entrée"
* code ^definition = "Code de l'entrée"
* code.code = #94030-4
* code.displayName = "Gravité de l'effet indésirable"
* code.codeSystem = "2.16.840.1.113883.6.1"
* code.codeSystemName = "LOINC"
* code.code 1..1 MS
* code.displayName MS
* code.codeSystem 1..1 MS
* text MS
* text 1..1
* text ^short = "Partie narrative de l'entrée"
* text ^definition = "Partie narrative de l'entrée"
* statusCode MS
* statusCode 1..1
* statusCode ^short = "Statut de l'entrée. Fixé à la valeur 'completed'"
* statusCode ^definition = "Statut de l'entrée"
* statusCode.code = #completed
* value MS
* value 1..1
* value ^short = "Niveau de gravité"
* value ^definition = "Niveau de gravité"
* value only CD
* value from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-gravite-cisis (required)