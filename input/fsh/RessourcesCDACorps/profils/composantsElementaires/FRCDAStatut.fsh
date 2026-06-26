Profile: FRCDAStatut
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Observation
Id: fr-cda-statut
Title: "CDA - FR Statut"
Description: "Entrée FR-Statut: Cette entrée de type observation permet de décrire et de suivre le statut métier d’un objet."
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
and frStatut 1..1
* templateId[iheSimpleObservation].root 1..1
* templateId[iheSimpleObservation].root = "1.3.6.1.4.1.19376.1.5.3.1.4.13"
* templateId[iheSimpleObservation] ^short = " Conformité Simple observation (IHE PCC)"
* templateId[iheSimpleObservation] ^definition = "Conformité Simple observation (IHE PCC)"
* templateId[frSimpleObservation].root 1..1
* templateId[frSimpleObservation].root = "1.2.250.1.213.1.1.3.48"
* templateId[frSimpleObservation] ^short = "Conformité FR-Simple-observation (CI-SIS)"
* templateId[frSimpleObservation] ^definition = "Conformité FR-Simple-observation (CI-SIS)"
* templateId[frStatut].root 1..1
* templateId[frStatut].root = "1.2.250.1.213.1.1.3.217"
* templateId[frStatut] ^short = "Conformité FR-Statut (CI-SIS)"
* templateId[frStatut] ^definition = "Conformité FR-Statut (CI-SIS)"
* code MS
* code ^short = "Code de l'observation"
* code ^definition = "Code de l'observation"
* code ^short = ""
* code.code = #106199-3
* code.displayName = "Statut"
* code.codeSystem = "2.16.840.1.113883.6.1"
* code.codeSystemName = "LOINC"
* code.code 1..1 MS
* code.displayName MS
* code.codeSystem 1..1 MS
* text MS
* text 1..1
* text ^short = "Description narrative de l'observation"
* text.reference 1..1 MS
* statusCode MS
* statusCode 1..1
* statusCode ^short = "Statut de l'entrée"
* statusCode ^definition = "Statut de l'entrée"
* statusCode.code = #completed
* effectiveTime MS
* effectiveTime 1..1
* effectiveTime ^short = "Date associée au statut métier"
* effectiveTime ^definition = "Date associée au statut métier"
* value MS
* value 1..1
* value only CD
* value ^short = "Statut métier"
  * qualifier 1..1 MS
  * qualifier ^short = "Motif associé au statut métier"
    * name 1..1
    * name.code = #GEN-348
    * name.codeSystem = "1.2.250.1.213.1.1.4.322"
    * name.displayName = "Motif du statut métier"
    * name.codeSystemName = "TerminologieCISIS"
    * value 1..1
    * value only CD
    * value ^short = "Valeur du motif associé au statut"
* interpretationCode MS
* interpretationCode 0..1
* interpretationCode ^short = "Interprétation :interpretationCode provient du JDV_HL7_ObservationInterpretation_CISIS (2.16.840.1.113883.1.11.78)"
* interpretationCode ^definition = "Interprétation"
* interpretationCode from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-hl7-v3-ObservationInterpretation-cisis (required)
* author 0..1
* author only FRCDAAuthor
* author ^short = """
Auteur de l'observation : \r\n
Une entrée SimpleObservation est supposée être rédigée par l'auteur du document (par reconduction de contexte). 
Toutefois, l'auteur spécifique d'une observation peut être fourni en enregistrant l'auteur dans l'en-tête et en faisant référence à cet auteur dans une l'élément <author> de l'entrée. 
Si les auteurs sont explicitement répertoriés dans le document, un élément <id> permet de faire référence à l'ID de l'auteur dans l'en-tête. 
Si l'auteur de l'observation n'est pas l'auteur du document, l'élément <person> doit comporter son nom et son identifiant.
"""
* author ^definition = "Auteur de l'observation"
