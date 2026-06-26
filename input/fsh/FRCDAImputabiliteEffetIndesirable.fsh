Profile: FRCDAImputabiliteEffetIndesirable
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Observation
Id: fr-cda-imputabilite-effet-indesirable
Title: "CDA - FR Imputabilite effet indesirable"
Description: "Entrée FR-Imputabilite-effet-indesirable: Cette entrée permet de préciser l'imputabilité d'un effet indésirable à un médicament. Il est utilisé exclusivement dans un lien entryRelationship grâce auquel il est lié à l’élément qu’il qualifie."
* classCode MS
* classCode = #OBS
* moodCode MS
* moodCode = #EVN
* templateId 1..1
* templateId ^slicing.discriminator.type = #value
* templateId ^slicing.discriminator.path = "root"
* templateId ^slicing.rules = #open
* templateId contains frImputabiliteEffetIndesirable 1..1
* templateId[frImputabiliteEffetIndesirable].root 1..1
* templateId[frImputabiliteEffetIndesirable].root = "1.2.250.1.213.1.1.3.211"
* templateId[frImputabiliteEffetIndesirable] ^short = "Conformité FR-Imputabilite-effet-indesirable (CI-SIS)"
* templateId[frImputabiliteEffetIndesirable] ^definition = "Conformité FR-Imputabilite-effet-indesirable (CI-SIS)"
* code MS
* code ^short = "Code de l'entrée"
* code ^definition = "Code de l'entrée"
* code.code = #GEN-318
* code.displayName = "Imputabilité"
* code.codeSystem = "1.2.250.1.213.1.1.4.322"
* code.codeSystemName = "TerminologieCISIS"
* code.code 1..1 MS
* code.displayName MS
* code.codeSystem 1..1 MS
* text MS
* text 1..1
* text ^short = "Partie narrative de l'entrée"
* statusCode MS
* statusCode 1..1
* statusCode ^short = "Statut de l'entrée. Fixé à la valeur 'completed'"
* statusCode ^definition = "Statut de l'entrée"
* statusCode.code = #completed
* value MS
* value 1..1
* value ^short = "Niveau d'imputabilité"
* value ^definition = "Niveau d'imputabilité"
* value only CD
* value from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-imputabilite-cisis (required)
* value.code MS
* value.code 1..1