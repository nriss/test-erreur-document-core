Profile: FRCDAObservationSurEchelleDouleur
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Observation
Id: fr-cda-observation-sur-echelle-douleur
Title: "CDA - FR Observation sur echelle douleur"
Description: "Entrée FR-Observation-sur-echelle-douleur: IHE-PCC - Pain Score Observation. Cette entrée permet d'enregistrer l'évaluation du patient de sa douleur sur une échelle de 1 à 10."
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
and ihePainScoreObservation 1..1
and frObservationSurEchelleDouleur 1..1

* templateId[iheSimpleObservation].root 1..1
* templateId[iheSimpleObservation].root = "1.3.6.1.4.1.19376.1.5.3.1.4.13"
* templateId[iheSimpleObservation] ^short = "Conformité Simple Observation (IHE PCC)"
* templateId[iheSimpleObservation] ^definition = "Conformité Simple Observation (IHE PCC)"
* templateId[ihePainScoreObservation].root 1..1
* templateId[ihePainScoreObservation].root = "1.3.6.1.4.1.19376.1.5.3.1.1.12.3.1"
* templateId[ihePainScoreObservation] ^short = "Conformité Pain Score Observation (IHE PCC)"
* templateId[ihePainScoreObservation] ^definition = "Conformité Pain Score Observation (IHE PCC)"
* templateId[frObservationSurEchelleDouleur].root 1..1
* templateId[frObservationSurEchelleDouleur].root = "1.2.250.1.213.1.1.3.89"
* templateId[frObservationSurEchelleDouleur] ^short = "Conformité FR-Observation-sur-echelle-douleur (CI-SIS)"
* templateId[frObservationSurEchelleDouleur] ^definition = "Conformité FR-Observation-sur-echelle-douleur (CI-SIS)"
* code MS
* code ^short = "Code de l'observation"
* code ^definition = "Code de l'observation"
* code.code = #38208-5
* code.displayName = "Sévérité de la douleur"
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
* statusCode ^short = "Statut de l'observation"
* statusCode ^definition = "Statut de l'observation"
* statusCode.code = #completed
* effectiveTime MS
* effectiveTime 1..1
* effectiveTime ^short = "Date de l'observation. L'élément 'effectiveTime' doit être présent dans une observation autonome (c'est-à-dire une observation qui n'apparait pas dans un 'organiser' qui contient déjà un 'effectiveTime') et doit contenir la date de l'observation clinique. Cet élément doit être précis à la date du jour. Si la date et l'heure sont inconnues, cet élément doit l'indiquer à
l'aide d'un attribut nullFlavor. La date doit être enregistrée à l'aide du type de données approprié (pour une date précise ou pour un intervalle contenant un élément 'low' et un élément 'high')."
* effectiveTime ^definition = "Date de l'observation"
* repeatNumber MS
* value MS
* value 1..1
* value ^short = "Valeur de l'observation. Entier de 0 à 10"
* value ^definition = "Valeur de l'observation"
* value only CO
* interpretationCode MS
* interpretationCode 0..1
* interpretationCode ^short = "Interprétation"
* interpretationCode ^definition = "Interprétation"
* interpretationCode from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-evaluation-douleur-cisis (required)
* targetSiteCode 0..1
* targetSiteCode ^short = "Localisation de la douleur"
* targetSiteCode ^definition = "Localisation de la douleur"
* targetSiteCode.code 1..1 MS
* targetSiteCode.codeSystem 1..1 MS