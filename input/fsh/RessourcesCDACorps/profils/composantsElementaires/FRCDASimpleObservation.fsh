Profile: FRCDASimpleObservation
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Observation
Id: fr-cda-simple-observation
Title: "CDA - FR Simple Observation"
Description: "Entrée FR-Simple-Observation: IHE-PCC - Simple-Observation. Cette entrée est une entrée de base très peu contrainte sur lequel des contraintes spécifiques peuvent être appliquées sur les éléments ou les vocabulaires pour constituer d'autres types d'observations."
* classCode MS
* classCode = #OBS
* moodCode MS
* moodCode = #EVN
* id 1..1 MS
* id ^short = "Identifiant de l'entrée"
* id ^definition = "Identifiant de l'entrée"
* templateId 1..2
* templateId ^slicing.discriminator.type = #value
* templateId ^slicing.discriminator.path = "root"
* templateId ^slicing.rules = #open
* templateId contains iheSimpleObservation 1..1
and frSimpleObservation 1..1
* templateId[iheSimpleObservation].root 1..1
* templateId[iheSimpleObservation].root = "1.3.6.1.4.1.19376.1.5.3.1.4.13"
* templateId[iheSimpleObservation] ^short = "Conformité Simple Observation (IHE PCC)"
* templateId[iheSimpleObservation] ^definition = "Conformité Simple Observation (IHE PCC)"
* templateId[frSimpleObservation].root 1..1
* templateId[frSimpleObservation].root = "1.2.250.1.213.1.1.3.48"
* templateId[frSimpleObservation] ^short = "Conformité FR-Simple-Observation (CI-SIS)"
* templateId[frSimpleObservation] ^definition = "Conformité FR-Simple-Observation (CI-SIS)"
* code MS
* code ^short = "Code de l'observation"
* code ^definition = "Code de l'observation"
* code.code 1..1 MS
* code.displayName MS
* code.codeSystem 1..1 MS
* text MS
* text 1..1
* text ^short = "Description narrative de l'observation"
* text ^definition = "Description narrative de l'observation"
* text.reference MS
* statusCode MS
* statusCode 1..1
* statusCode ^short = "Statut de l'observation"
* statusCode ^definition = "Statut de l'observation"
* statusCode.code = #completed
* effectiveTime MS
* effectiveTime ^short = """Date de l'observation :\r\n
 L'élément  doit être présent dans une observation autonome (c'est-à-dire une observation qui n'apparait pas dans un organizer qui contient déjà un effectiveTime) et doit contenir la date de l'observation clinique. 
 Cet élément doit être précis à la date du jour. 
 Si la date et l'heure sont inconnues, cet élément doit l'indiquer à l'aide d'un attribut nullFlavor. 
 La date doit être enregistrée à l'aide du type de données approprié (pour une date précise ou pour un intervalle contenant un élément low et un élément high). """
* effectiveTime ^definition = "Date de l'observation"
* repeatNumber MS
* value MS
* value ^short = "Valeur de l'observation"
* value ^definition = "Valeur de l'observation"
* interpretationCode MS
* interpretationCode 0..1
* interpretationCode ^short = "Interprétation :interpretationCode provient du JDV_HL7_ObservationInterpretation_CISIS (2.16.840.1.113883.1.11.78)"
* interpretationCode ^definition = "Interprétation"
* interpretationCode from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-hl7-v3-ObservationInterpretation-cisis
* methodCode MS
* methodCode 0..1
* methodCode ^short = "Méthode"
* methodCode ^definition = "Méthode"
* targetSiteCode 0..1
* targetSiteCode ^short = "Localisation anatomique : Terminologie : SNOMED CT (2.16.840.1.113883.6.96) "
* targetSiteCode ^definition = "Localisation anatomique"
* author 0..1
* author ^short = """Auteur de l'observation :\r\n
Une entrée SimpleObservations est supposée être rédigée par l'auteur du document (par reconduction de contexte). 
Toutefois, l'auteur spécifique d'une observation peut être fourni en enregistrant l'auteur dans l'en-tête et en faisant référence à cet auteur dans une l'élément <author> de l'entrée. 
Si les auteurs sont explicitement répertoriés dans le document, un élément <id> permet de faire référence à l'ID de l'auteur dans l'en-tête. 
Si l'auteur de l'observation n'est pas l'auteur du document, l'élément <person> doit comporter son nom et son identifiant."""
* author ^definition = "Auteur de l'observation"
* author only FRCDAAuthor
