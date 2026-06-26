Profile: FRCDAHistoriqueDeLaGrossesse
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Organizer
Id: fr-cda-historique-de-la-grossesse
Title: "CDA - FR Historique de la grossesse"
Description: "Entrée FR-Historique-de-la-grossesse: IHE-PCC - Pregnancy History Organizer. 
 - Cette entrée permet de regrouper les observations relatives à un épisode de grossesse."
* classCode MS
* classCode = #CLUSTER
* moodCode MS
* id 1..1 MS
* id ^short = "Identifiant de l'entrée"
* id ^definition = "Identifiant de l'entrée"
* templateId 1..2
* templateId ^slicing.discriminator.type = #value
* templateId ^slicing.discriminator.path = "root"
* templateId ^slicing.rules = #open
* templateId contains ihePregnancyHistoryOrganizer 1..1
and frHistoriqueDeLaGrossesse 1..1
* templateId[ihePregnancyHistoryOrganizer].root 1..1
* templateId[ihePregnancyHistoryOrganizer].root = "1.3.6.1.4.1.19376.1.5.3.1.4.13.5.1"
* templateId[ihePregnancyHistoryOrganizer] ^short = "Conformité Pregnancy History Organizer (IHE PCC)"
* templateId[ihePregnancyHistoryOrganizer] ^definition = "Conformité Pregnancy History Organizer (IHE PCC)"
* templateId[frHistoriqueDeLaGrossesse].root 1..1
* templateId[frHistoriqueDeLaGrossesse].root = "1.2.250.1.213.1.1.3.55"
* templateId[frHistoriqueDeLaGrossesse] ^short = "Conformité FR-Historique-de-la-grossesse (CI-SIS)"
* templateId[frHistoriqueDeLaGrossesse] ^definition = "Conformité FR-Historique-de-la-grossesse (CI-SIS)"
* code MS
* code 1..1
* code ^short = "Code de l'entrée"
* code ^definition = "Code de l'entrée"
* code.code = #118185001
* code.displayName = "constatation à propos de la grossesse"
* code.codeSystem = "2.16.840.1.113883.6.96"
* code.codeSystemName = "SNOMED_CT"
* code.code 1..1 MS
* code.displayName MS
* code.codeSystem 1..1 MS
* statusCode MS
* statusCode 1..1
* statusCode ^short = "Statut de l’entréeFixé à la valeur 'completed'"
* statusCode ^definition = "Statut de l’entrée"
* statusCode.code = #completed
* effectiveTime MS
* effectiveTime 1..1
* effectiveTime ^short = "Période de la grossesse"
* effectiveTime ^definition = "Période de la grossesse"
* component MS
* component 1..1
* component ^slicing.discriminator.type = #type
* component ^slicing.discriminator.path = "$this"
* component ^slicing.rules = #open
* component contains
  frNaissance 0..1 and
  frObservationSurLaGrossesse 0..1
* component[frNaissance].typeCode = #COMP
* component[frNaissance].organizer ^short = "Informations relatives aux naissances. Chaque entrée FR-Naissance, de type Organizer, rassemble les observations concernant l'issue de la grossesse relative à un fœtus. Cette structuration est rendue nécessaire pour prendre en compte les grossesses multiples, mais peut cependant être utilisée pour une naissance unique."
* component[frNaissance].organizer ^definition = "Informations relatives aux naissances"
* component[frNaissance].organizer only FRCDANaissance
* component[frNaissance].typeCode = #COMP
* component[frNaissance].observation ^short = "Informations relatives à la grossesse. Chaque entrée FR-Observation-sur-la-grossesse permet  de fournir une observation relative à une grossesse."
* component[frNaissance].observation ^definition = "Informations relatives à la grossesse"
* component[frNaissance].observation only FRCDAObservationSurLaGrossesse