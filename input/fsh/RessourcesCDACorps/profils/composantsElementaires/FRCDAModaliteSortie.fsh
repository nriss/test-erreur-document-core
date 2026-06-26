Profile: FRCDAModaliteSortie
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Observation
Id: fr-cda-modalite-sortie
Title: "CDA - FR Modalite sortie"
Description: "Entrée FR-Modalite-sortie: Cette entrée permet de préciser la modalité de sortie du patient d'un ES (retour à domicile, EHPAD, HAD, etc...)."
* classCode MS
* classCode = #OBS
* moodCode MS
* moodCode ^short = "@moodCode='EVN' (si réalisée), 'INT' (si prévisionnelle)"
* moodCode ^definition = "@moodCode='EVN' (si réalisée), 'INT' (si prévisionnelle)"
* id 1..1 MS
* id ^short = "Identifiant de l'entrée"
* id ^definition = "Identifiant de l'entrée"
* templateId 1..1
* templateId ^slicing.discriminator.type = #value
* templateId ^slicing.discriminator.path = "root"
* templateId ^slicing.rules = #open
* templateId contains frModaliteSortie 1..1
* templateId[frModaliteSortie].root 1..1
* templateId[frModaliteSortie].root = "1.2.250.1.213.1.1.3.48.7"
* templateId[frModaliteSortie] ^short = "Conformité FR-Modalite-sortie (CI-SIS)"
* templateId[frModaliteSortie] ^definition = "Conformité FR-Modalite-sortie (CI-SIS)"
* code MS
* code ^short = "Code de l'observation"
* code ^definition = "Code de l'observation"
* code.code = #ORG-074
* code.displayName = "Modalité de sortie"
* code.codeSystem = "1.2.250.1.213.1.1.4.322"
* code.codeSystemName = "TerminologieCISIS"
* code.code 1..1 MS
* code.displayName MS
* code.codeSystem 1..1 MS
* text MS
* text 1..1
* text ^short = "Partie narrative de l'observation"
* text.reference 1..1 MS
* text.reference ^short = "Référence à la partie narrative de la section qui contiend la modalité d'entrée sous forme textuelle si la réponse est 'autre'."
* text.reference ^definition = "Référence à la partie narrative de la section"
* statusCode MS
* statusCode 1..1
* statusCode ^short = "Status de l'observation"
* statusCode ^definition = "Status de l'observation"
* statusCode from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-hl7-v3-ActStatus-cisis (required)
* effectiveTime MS
* effectiveTime 1..1
* effectiveTime ^short = "Date de la sortie"
* effectiveTime ^definition = "Date de la sortie"
* value MS
* value 1..1
* value ^short = "Modalité d'entrée"
* value ^definition = "Modalité d'entrée"
* value only CE
* value from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-modalite-sortie-cisis (required)
* author 0..1
* author only FRCDAAuthor