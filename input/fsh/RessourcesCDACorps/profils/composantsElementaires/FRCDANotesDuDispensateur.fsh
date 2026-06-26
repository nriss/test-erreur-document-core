Profile: FRCDANotesDuDispensateur
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Act
Id: fr-cda-notes-du-dispensateur
Title: "CDA - FR Notes du dispensateur"
Description: "Entrée FR-Notes-du-dispensateur: IHE PHARM DIS - fulfillment notes. 
 - Une dispensation peut contenir une note du dispensateur (pharmacien).Cette entrée est incluse dans une entrée FR-Traitement-dispense à l’aide d’un élément 'entryRelationship'."
* classCode MS
* classCode = #ACT
* moodCode MS
* moodCode = #INT
* id ^short = "Identifiant de l'entrée"
* id ^definition = "Identifiant de l'entrée"
* templateId 1..3
* templateId ^slicing.discriminator.type = #value
* templateId ^slicing.discriminator.path = "root"
* templateId ^slicing.rules = #open
* templateId contains frNotesDuDispensateur 1..1
and iheFulfillmentNotes 1..1
and ccdFulfillmentInstructions 1..1
* templateId[frNotesDuDispensateur].root 1..1
* templateId[frNotesDuDispensateur].root = "1.2.250.1.213.1.1.3.207"
* templateId[frNotesDuDispensateur] ^short = "Conformité FR-Notes-du-dispensateur (CI-SIS)"
* templateId[frNotesDuDispensateur] ^definition = "Conformité FR-Notes-du-dispensateur (CI-SIS)"
* templateId[iheFulfillmentNotes].root 1..1
* templateId[iheFulfillmentNotes].root = "1.3.6.1.4.1.19376.1.5.3.1.4.3.1"
* templateId[iheFulfillmentNotes] ^short = "Conformité fulfillment notes (IHE PHARM DIS)"
* templateId[iheFulfillmentNotes] ^definition = "Conformité fulfillment notes (IHE PHARM DIS)"
* templateId[ccdFulfillmentInstructions].root 1..1
* templateId[ccdFulfillmentInstructions].root = "2.16.840.1.113883.10.20.1.43"
* templateId[ccdFulfillmentInstructions] ^short = "Conformité Fulfillment instructions (CCD)"
* templateId[ccdFulfillmentInstructions] ^definition = "Conformité Fulfillment instructions (CCD)"
* code MS
* code ^short = "Code de l'entrée"
* code ^definition = "Code de l'entrée"
* code.code = #FINSTRUCT
* code.codeSystem = "1.3.6.1.4.1.19376.1.5.3.2"
* code.codeSystemName = "IHEActCode"
* code.code 1..1 MS
* code.displayName MS
* code.codeSystem 1..1 MS
* text MS
* text 1..1
* text ^short = "Notes du dispensateur sous forme textuelle"
* text.reference 1..1 MS
* text.reference ^short = "Référence à la partie narrative contenant le texte libre de l’instruction au dispensateur"
* statusCode MS
* statusCode 1..1
* statusCode ^short = "Statut de l'entréeFixé à la valeur 'completed'"
* statusCode ^definition = "Statut de l'entrée"
* statusCode.code = #completed