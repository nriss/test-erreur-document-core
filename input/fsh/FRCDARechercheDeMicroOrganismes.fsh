Profile: FRCDARechercheDeMicroOrganismes
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Observation
Id: fr-cda-recherche-de-micro-organismes
Title: "CDA - FR Recherche de micro organismes"
Description: "Entrée FR-Recherche-de-micro-organismes: IHE PCC – Simple Observation. Cette entrée permet d'indiquer si une recherche de micro-organismes multirésistants ou émergents a été effectuée ou pas."
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
and frRechercheDeMicroOrganismes 1..1
* templateId[iheSimpleObservation].root 1..1
* templateId[iheSimpleObservation].root = "1.3.6.1.4.1.19376.1.5.3.1.4.13"
* templateId[iheSimpleObservation] ^short = "Conformité Simple Observation (IHE PCC)"
* templateId[iheSimpleObservation] ^definition = "Conformité Simple Observation (IHE PCC)"
* templateId[frSimpleObservation] 1..1
* templateId[frSimpleObservation].root = "1.2.250.1.213.1.1.3.48"
* templateId[frSimpleObservation] ^short = "Conformité FR-Simple-Observation (CI-SIS)"
* templateId[frSimpleObservation] ^definition = "Conformité FR-Simple-Observation (CI-SIS)"
* templateId[frRechercheDeMicroOrganismes].root 1..1
* templateId[frRechercheDeMicroOrganismes].root = "1.2.250.1.213.1.1.3.48.8"
* templateId[frRechercheDeMicroOrganismes] ^short = "Conformité FR- Recherche-de-micro-organismes (CI-SIS)"
* templateId[frRechercheDeMicroOrganismes] ^definition = "Conformité FR- Recherche-de-micro-organismes (CI-SIS)"
* code MS
* code ^short = "Code de l’entrée"
* code ^definition = "Code de l’entrée"
* code.code = #MED-309
* code.displayName = "Recherche de microorganismes multi-résistants ou émergents effectuée"
* code.codeSystem = "1.2.250.1.213.1.1.4.322"
* code.codeSystemName = "TerminologieCISIS"
* code.code 1..1 MS
* code.displayName MS
* code.codeSystem 1..1 MS
* text MS
* text 1..1
* text ^short = "Partie narrative de l'observation"
* text ^definition = "Partie narrative de l'observation"
* text.reference 1..1 MS
* statusCode MS
* statusCode 1..1
* statusCode ^short = "Statut de l’entrée"
* statusCode ^definition = "Statut de l’entrée"
* statusCode.code = #completed
* effectiveTime MS
* effectiveTime ^short = "Date de l'observation"
* effectiveTime ^definition = "Date de l'observation"
* value MS
* value 1..1
* value ^short = "Valeur de l’observation"
* value ^definition = "Valeur de l’observation"
* value only BL
* author 0..1
* author ^short = "Participation d'un auteur au document"
* author ^definition = "Participation d'un auteur au document"
* author only FRCDAAuthor