Profile: FRCDAHorsAMM
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Observation
Id: fr-cda-hors-amm
Title: "CDA - FR Hors AMM"
Description: "Entrée FR-Hors-AMM: IHE-PCC - Simple-Observation. Cette observation permet d'indiquer si le traitement auquel elle est associée est hors AMM."
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
and frHorsAMM 1..1
* templateId[iheSimpleObservation].root 1..1
* templateId[iheSimpleObservation].root = "1.3.6.1.4.1.19376.1.5.3.1.4.13"
* templateId[iheSimpleObservation] ^short = "Conformité Simple Observation (IHE PCC)"
* templateId[iheSimpleObservation] ^definition = "Conformité Simple Observation (IHE PCC)"
* templateId[frSimpleObservation].root 1..1
* templateId[frSimpleObservation].root = "1.2.250.1.213.1.1.3.48"
* templateId[frSimpleObservation] ^short = "Conformité FR-Simple-Observation (CI-SIS)"
* templateId[frSimpleObservation] ^definition = "Conformité FR-Simple-Observation (CI-SIS)"
* templateId[frHorsAMM].root 1..1
* templateId[frHorsAMM].root = "1.2.250.1.213.1.1.3.48.12"
* templateId[frHorsAMM] ^short = "Conformité FR-Hors-AMM (CI-SIS)"
* templateId[frHorsAMM] ^definition = "Conformité FR-Hors-AMM (CI-SIS)"
* code MS
* code ^short = "Type de l'entrée"
* code ^definition = "Type de l'entrée"
* code.code = #GEN-179
* code.displayName = "Hors Autorisation de Mise sur le Marché (AMM)"
* code.codeSystem = "1.2.250.1.213.1.1.4.322"
* code.codeSystemName = "TerminologieCISIS"
* code.code 1..1 MS
* code.displayName MS
* code.codeSystem 1..1 MS
* text MS
* text 1..1
* text ^short = "Partie narrative de l'entrée"
* statusCode MS
* statusCode 1..1
* statusCode ^short = "Statut de l'entrée. Fixé à la valeur 'completed'"
* statusCode ^definition = "Statut de l'entrée"
* statusCode.code = #completed
* effectiveTime MS
* effectiveTime ^short = "Horodatage de l'entrée"
* effectiveTime ^definition = "Horodatage de l'entrée"
* effectiveTime ^type.profile = "http://hl7.org/cda/stds/core/StructureDefinition/IVL-TS"
* value MS
* value 1..1
* value ^short = "Résultat. L'attribut @value pourra prendre l'une des deux valeurs suivantes : 
value='true' : le traitement prescrit ne possède pas d'AMM. 
value='false' : le traitement prescrit possède une AMM"
* value ^definition = "Résultat"
* value only BL
* author 1..1
* author ^short = "Participation d'un auteur au document"
* author ^definition = "Participation d'un auteur au document"
* author only FRCDAAuthor