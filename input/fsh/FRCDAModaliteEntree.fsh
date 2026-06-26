Profile: FRCDAModaliteEntree
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Observation
Id: fr-cda-modalite-entree
Title: "CDA - FR Modalite entree"
Description: "Entrée FR-Modalite-entree: Cette entrée permet d'indiquer la modalité d'entrée d'un patient en ES (urgence, programmée, etc...)."
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
* templateId contains frModaliteEntree 1..1
* templateId[frModaliteEntree].root 1..1
* templateId[frModaliteEntree].root = "1.2.250.1.213.1.1.3.48.6"
* templateId[frModaliteEntree] ^short = "Conformité FR-Modalite-entree (CI-SIS)"
* templateId[frModaliteEntree] ^definition = "Conformité FR-Modalite-entree (CI-SIS)"
* code MS
* code ^short = "Code de l'observation"
* code ^definition = "Code de l'observation"
* code.code = #ORG-070
* code.displayName = "Modalité d'entrée"
* code.codeSystem = "1.2.250.1.213.1.1.4.322"
* code.codeSystemName = "TerminologieCISIS"
* code.code 1..1 MS
* code.displayName MS
* code.codeSystem 1..1 MS
* text MS
* text 1..1
* text ^short = " Description narrative de l'observation."
* text.reference 1..1 MS
* text.reference ^short = "Référence à la partie narrative de la section qui contiend la modalité d'entrée sous forme textuelle si la réponse est 'autre'."
* text.reference ^definition = "Référence à la partie narrative de la section"
* statusCode MS
* statusCode 1..1
* statusCode ^short = " Statut de l'entrée"
* statusCode ^definition = "Statut de l'entrée"
* statusCode from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-hl7-v3-ActStatus-cisis (required)
* effectiveTime MS
* effectiveTime 1..1
* effectiveTime ^short = "Date de l'entrée"
* effectiveTime ^definition = "Date de l'entrée"
* value MS
* value 1..1
* value ^short = "Modalité d'entrée"
* value ^definition = "Modalité d'entrée"
* value only CE
* value from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-modalite-entree-cisis (required)
* author MS
* author only FRCDAAuthor