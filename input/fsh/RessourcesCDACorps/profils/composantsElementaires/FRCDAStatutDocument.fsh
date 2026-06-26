Profile: FRCDAStatutDocument
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Observation
Id: fr-cda-statut-document
Title: "CDA - FR Statut document"
Description: "Entrée FR-Statut-document: Cette entrée permet d'indiquer le statut du document (son état d'avancement dans le cycle de vie du document, depuis sa création jusqu'à sa validation définitive par son responsable légal (élément 'legalAuthenticator' de l'en-tête) ainsi que la date de ce statut."
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
and frStatutDocument 1..1
* templateId[iheSimpleObservation].root 1..1
* templateId[iheSimpleObservation].root = "1.3.6.1.4.1.19376.1.5.3.1.4.13"
* templateId[iheSimpleObservation] ^short = "Conformité FR-Severite (CI-SIS)"
* templateId[iheSimpleObservation] ^definition = "Conformité FR-Severite (CI-SIS)"
* templateId[frSimpleObservation].root 1..1
* templateId[frSimpleObservation].root = "1.2.250.1.213.1.1.3.48"
* templateId[frSimpleObservation] ^short = "Conformité FR-Simple-observation (CI-SIS)"
* templateId[frSimpleObservation] ^definition = "Conformité FR-Simple-observation (CI-SIS)"
* templateId[frStatutDocument].root 1..1
* templateId[frStatutDocument].root = "1.2.250.1.213.1.1.3.48.16"
* templateId[frStatutDocument] ^short = "Conformité FR-Statut-document (CI-SIS)"
* templateId[frStatutDocument] ^definition = "Conformité FR-Statut-document (CI-SIS)"
* code MS
* code ^short = "Code de l'entrée"
* code ^definition = "Code de l'entrée"
* code.code = #GEN-065
* code.displayName = "Statut du document"
* code.codeSystem = "1.2.250.1.213.1.1.4.322"
* code.codeSystemName = "TerminologieCISIS"
* code.code 1..1 MS
* code.displayName MS
* code.codeSystem 1..1 MS
* text MS
* text 1..1
* text ^short = "Partie narrative de l'entrée"
* text ^definition = "Partie narrative de l'entrée"
* text.reference 1..1 MS
* statusCode MS
* statusCode 1..1
* statusCode ^short = "Statut de l'entrée"
* statusCode ^definition = "Statut de l'entrée"
* statusCode.code = #completed
* effectiveTime MS
* effectiveTime 1..1
* effectiveTime ^short = "Date du statut du document"
* effectiveTime ^definition = "Date du statut du document"
* value MS
* value ^short = """Statut du document :\r\n
Dans le cas où aucune réponse n'est disponible, la valeur nullFlavor='UNK' est autorisée."""
* value ^definition = "Statut métier du document"
* value 1..1
* value only CD
* value from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-statut-document-cisis (required)
* author 0..1
* author only FRCDAAuthor
