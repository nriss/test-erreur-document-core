Profile: FRCDASeverite
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Observation
Id: fr-cda-severite
Title: "CDA - FR Severite"
Description: "Entrée FR-Severite: IHE-PCC - Severity. 
 - Cette entrée permet de donner le niveau de sévérité d’un problème : bas, modéré, élevé, etc... Il est utilisé exclusivement dans un lien entryRelationship grâce auquel il est lié à l’élément qu’il qualifie."
* classCode MS
* classCode = #OBS
* moodCode MS
* moodCode = #EVN
* templateId 1..3
* templateId ^slicing.discriminator.type = #value
* templateId ^slicing.discriminator.path = "root"
* templateId ^slicing.rules = #open
* templateId contains iheSeverity 1..1
and ccdSeverityObservation 1..1
and frSeverite 1..1
* templateId[iheSeverity].root 1..1
* templateId[iheSeverity].root = "1.3.6.1.4.1.19376.1.5.3.1.4.1"
* templateId[iheSeverity] ^short = "Conformité Severity (IHE PCC)"
* templateId[iheSeverity] ^definition = "Conformité Severity (IHE PCC)"
* templateId[ccdSeverityObservation].root 1..1
* templateId[ccdSeverityObservation].root = "2.16.840.1.113883.10.20.1.55"
* templateId[ccdSeverityObservation] ^short = "Conformité Severity observation (CCD)"
* templateId[ccdSeverityObservation] ^definition = "Conformité Severity observation (CCD)"
* templateId[frSeverite].root 1..1
* templateId[frSeverite].root = "1.2.250.1.213.1.1.3.29"
* templateId[frSeverite] ^short = "Conformité FR-Severite (CI-SIS)"
* templateId[frSeverite] ^definition = "Conformité FR-Severite (CI-SIS)"
* code MS
* code ^short = "Code de l’entrée"
* code ^definition = "Code de l’entrée"
* code.code = #SEV 
* code.codeSystem = "2.16.840.1.113883.5.4"
* code.codeSystemName = "HL7_ActCode"
* code.code 1..1 MS
* code.displayName MS
* code.codeSystem 1..1 MS
* text MS
* text 1..1
* text ^short = "Description narrative"
* text ^definition = "Description narrative"
* text.reference 1..1 MS
* statusCode MS
* statusCode 1..1
* statusCode ^short = "Statut de l’entrée"
* statusCode ^definition = "Statut de l’entrée"
* statusCode.code = #completed
* value MS
* value 1..1
* value ^short = "Niveau de sévérité : 
Valeur provenant de JDV_SeveriteObservation_CISIS (1.2.250.1.213.1.1.5.675). D’autres nomenclatures spécifiques peuvent cependant être utilisées."
* value ^short = "Niveau de sévérité"
* value only CD