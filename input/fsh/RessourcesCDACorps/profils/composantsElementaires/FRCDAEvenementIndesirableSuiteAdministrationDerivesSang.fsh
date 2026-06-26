Profile: FRCDAEvenementIndesirableSuiteAdministrationDerivesSang
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Observation
Id: fr-cda-evenement-indesirable-suite-administration-derives-sang
Title: "CDA - FR Evenement indesirable suite administration derives sang"
Description: "Entrée FR-Evenement-indesirable-suite-administration-derives-sang: Cette entrée permet de décrire sous forme textuelle des événements indésirables survenus suite à l'administration de dérivés du sang."
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
and frEvenementIndesirableSuiteAdministrationDerivesSang 1..1
* templateId[iheSimpleObservation].root = "1.3.6.1.4.1.19376.1.5.3.1.4.13"
* templateId[frSimpleObservation].root = "1.2.250.1.213.1.1.3.48"
* templateId[frEvenementIndesirableSuiteAdministrationDerivesSang].root = "1.2.250.1.213.1.1.3.48.4"
* code MS
* code ^short = "Code de l'observation"
* code ^definition = "Code de l'observation"
* code.code = #MED-148
* code.displayName = "Evènements indésirables suite à l'administration de dérivés du sang"
* code.codeSystem = "1.2.250.1.213.1.1.4.322"
* code.codeSystemName = "TerminologieCISIS"
* code.code 1..1 MS
* code.displayName MS
* code.codeSystem 1..1 MS
* text MS
* text 1..1
  * reference 1..1
* statusCode MS
* statusCode 1..1
* statusCode.code = #completed
* effectiveTime MS
* effectiveTime 1..1
* effectiveTime ^short = "Date de l'observation"
* effectiveTime ^definition = "Date de l'observation"
* value MS
* value 1..1
* value only ST
* value ^short = "Description sous forme textuelle des évènements indésirables survenus suite à l'administration de dérivés du sang."
* value ^definition = "Description sous forme textuelle des évènements indésirables survenus suite à l'administration de dérivés du sang."
* author 0..1
* author only FRCDAAuthor
