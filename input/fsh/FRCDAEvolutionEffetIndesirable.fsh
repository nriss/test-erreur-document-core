Profile: FRCDAEvolutionEffetIndesirable
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Observation
Id: fr-cda-evolution-effet-indesirable
Title: "CDA - FR Evolution effet indesirable"
Description: "Entrée FR-Evolution-effet-indesirable: Cette entrée permet de préciser l'évolution d'un effet indésirable à un médicament. Il est utilisé exclusivement dans un lien entryRelationship grâce auquel il est lié à l’élément qu’il qualifie. "
* classCode MS
* classCode = #OBS
* moodCode MS
* moodCode = #EVN
* templateId 1..1
* templateId.root = "1.2.250.1.213.1.1.3.213"
* templateId ^short = "Conformité FR-Resultat (CI-SIS)"
* templateId ^definition = "Conformité FR-Resultat (CI-SIS)"
* code MS
* code ^short = "Code de l'entrée"
* code ^definition = "Code de l'entrée"
* code.code = #GEN-319
* code.displayName = "Evolution de l'effet indésirable"
* code.codeSystem = "1.2.250.1.213.1.1.4.322"
* code.codeSystemName = "TerminologieCISIS"
* code.code 1..1 MS
* code.displayName  MS
* code.codeSystem 1..1 MS
* text MS
* text 1..1
* text ^short = "Partie narrative de l'entrée"
* statusCode MS
* statusCode 1..1
* statusCode ^short = "Statut de l'entrée - Fixé à la valeur 'completed'"
* statusCode ^definition = "Statut de l'entrée"
* statusCode.code = #completed
* value MS
* value 1..1
* value only CD
* value from  https://smt.esante.gouv.fr/fhir/ValueSet/jdv-evolution-cisis (required)
