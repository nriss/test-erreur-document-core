Profile: FRCDAHabitusModeDeVie
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Observation
Id: fr-cda-habitus-mode-de-vie
Title: "CDA - FR Habitus Mode de vie"
Description: "Entrée FR-Habitus-Mode-de-vie: IHE-PCC - Social History Observation
 - L'entrée Habitus, Mode de vie permet de décrire des éléments sociaux du patient 
 - Cette entrée est basée sur l'élément Simple Observation (1.3.6.1.4.1.19376.1.5.3.1.4.13) qu'elle spécialise en portant des contraintes sur les vocabulaires des éléments 'code' et 'value'"
* classCode MS
* classCode = #OBS
* moodCode MS
* moodCode = #EVN
* id 1..1 MS
* id ^short = "Identifiant de l'entrée"
* id ^definition = "Identifiant de l'entrée"
* templateId 1..4
* templateId ^slicing.discriminator.type = #value
* templateId ^slicing.discriminator.path = "root"
* templateId ^slicing.rules = #open
* templateId contains iheSocialHistoryObservation 1..1
and iheSimpleObservation 1..1
and socialHistoryObservation 1..1
and FRCDAHabitusModeDeVie 1..1
* templateId[iheSocialHistoryObservation].root 1..1
* templateId[iheSocialHistoryObservation].root = "1.3.6.1.4.1.19376.1.5.3.1.4.13.4"
* templateId[iheSocialHistoryObservation] ^short = "Conformité Social history observation (IHE PCC)"
* templateId[iheSocialHistoryObservation] ^definition = "Conformité Social history observation (IHE PCC)"
* templateId[iheSimpleObservation].root 1..1
* templateId[iheSimpleObservation].root = "1.3.6.1.4.1.19376.1.5.3.1.4.13"
* templateId[iheSimpleObservation] ^short = "Conformité Simple Observation (IHE PCC)"
* templateId[iheSimpleObservation] ^definition = "Conformité Simple Observation (IHE PCC)"
* templateId[socialHistoryObservation].root 1..1
* templateId[socialHistoryObservation].root = "2.16.840.1.113883.10.20.1.33"
* templateId[socialHistoryObservation] ^short = "Conformité Social history observation (CCD)"
* templateId[socialHistoryObservation] ^definition = "Conformité Social history observation (CCD)"
* templateId[FRCDAHabitusModeDeVie].root 1..1
* templateId[FRCDAHabitusModeDeVie].root = "1.2.250.1.213.1.1.3.52"
* templateId[FRCDAHabitusModeDeVie] ^short = "Conformité FR-Habitus-Mode-de-vie (CI-SIS)"
* templateId[FRCDAHabitusModeDeVie] ^definition = "Conformité FR-Habitus-Mode-de-vie (CI-SIS)"
* code MS
* code ^short = "Élément observé"
* code ^definition = "Élément observé"
* code from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-social-history-code-cisis (required)
* code.qualifier MS
* code.qualifier ^short = "Précision du code"
* code.qualifier ^definition = "Précision du code"
* code.code 1..1 MS
* code.displayName MS
* code.codeSystem 1..1 MS
* text MS
* text 1..1
* text ^short = "Description narrative"
* statusCode MS
* statusCode 1..1
* statusCode ^short = "Statut de l'observationFixé à la valeur 'completed'"
* statusCode ^definition = "Statut de l'observation"
* statusCode.code = #completed
* effectiveTime MS
* effectiveTime 1..1
* effectiveTime ^short = "Horodatage de l'entrée"
* effectiveTime ^definition = "Horodatage de l'entrée"
* value MS
* value 1..1 
* value ^short = "Résultat de l'observation effectuéee"
* value ^definition = "Résultat de l'observation effectuée"