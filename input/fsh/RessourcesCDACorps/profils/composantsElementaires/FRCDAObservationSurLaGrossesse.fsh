Profile: FRCDAObservationSurLaGrossesse
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Observation
Id: fr-cda-observation-sur-la-grossesse
Title: "CDA - FR Observation sur la grossesse"
Description: "Entrée FR-Observation-sur-la-grossesse: IHE-PCC - Pregnancy Observation. Cette entrée permet d'apporter des informations relatives aux grossesses actuelle ou passées."
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
* templateId contains ihePregnancyObservation 1..1
and iheSimpleObservation 1..1
and frObservationSurLaGrossesse 1..1

* templateId[ihePregnancyObservation].root 1..1
* templateId[ihePregnancyObservation].root = "1.3.6.1.4.1.19376.1.5.3.1.4.13.5"
* templateId[ihePregnancyObservation] ^short = "Conformité Pregnancy Observation (IHE PCC)"
* templateId[ihePregnancyObservation] ^definition = "Conformité Pregnancy Observation (IHE PCC)"
* templateId[iheSimpleObservation].root 1..1
* templateId[iheSimpleObservation].root = "1.3.6.1.4.1.19376.1.5.3.1.4.13"
* templateId[iheSimpleObservation] ^short = "Conformité Simple Observation (IHE PCC)"
* templateId[iheSimpleObservation] ^definition = "Conformité Simple Observation (IHE PCC)"
* templateId[frObservationSurLaGrossesse].root 1..1
* templateId[frObservationSurLaGrossesse].root = "1.2.250.1.213.1.1.3.53"
* templateId[frObservationSurLaGrossesse] ^short = "Conformité Simple Observation (CI-SIS)"
* templateId[frObservationSurLaGrossesse] ^definition = "Conformité FR-Observation-Sur-La-Grossesse (CI-SIS)"
* code MS
* code ^short = "Type d'observationCe code peut provenir du JDV_ObservationGrossesse_CISIS (1.2.250.1.213.1.1.5.500).D’autres codes ou JDV peuvent être utilisés."
* code ^definition = "Type d'observation"
* code.code 1..1 MS
* code.displayName MS
* code.codeSystem 1..1 MS
* text MS
* text 1..1
* statusCode MS
* statusCode 1..1
* statusCode ^short = "Statut de l'entrée"
* statusCode ^definition = "Statut de l'entrée"
* statusCode.code = #completed
* effectiveTime MS
* effectiveTime 1..1
* effectiveTime ^short = "Date de l'observation"
* effectiveTime ^definition = "Date de l'observation"
* value MS
* value 1..1
* value ^short = "Résultat de l’observation effectuée"
* value ^definition = "Résultat de l’observation effectuée. 
 Valeur peut être issue du JDV_StatutGrossesse_CISIS (1.2.250.1.213.1.1.5.671) pour le statut de grossesse si le code de l'entrée est '11449-6'"