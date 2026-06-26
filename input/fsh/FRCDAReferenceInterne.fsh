Profile: FRCDAReferenceInterne
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Act
Id: fr-cda-reference-interne
Title: "CDA - FR Reference interne"
Description: "Entrée FR-Reference-interne: IHE-PCC - Internal-Reference. L'élément Référence interne est un élément de type 'act' à l'intérieur d'un 'entryRelationship' qui permet de relier un élément à un autre élément du même document par l'intermédiaire son identifiant 'id'. Tous les types d'éléments du document (act, procedure, observation, substanceAdministration, etc) peuvent être pointés par un élément 'Référence interne'."
* classCode MS
* moodCode MS
* id 1..1 MS
* id ^short = "Identifiant de l'entrée"
* id ^definition = "Identifiant de l'entrée"
* templateId 1..2
* templateId ^slicing.discriminator.type = #value
* templateId ^slicing.discriminator.path = "root"
* templateId ^slicing.rules = #open
* templateId contains iheInternalReferences 1..1
and frReferenceInterne 1..1
* templateId[iheInternalReferences].root 1..1
* templateId[iheInternalReferences].root = "1.3.6.1.4.1.19376.1.5.3.1.4.4.1"
* templateId[iheInternalReferences] ^short = "Conformité Internal References (IHE PCC)"
* templateId[iheInternalReferences] ^definition = "Conformité Internal References (IHE PCC)"
* templateId[frReferenceInterne].root 1..1
* templateId[frReferenceInterne].root = "1.2.250.1.213.1.1.3.36"
* templateId[frReferenceInterne] ^short = "Conformité FR-Reference-interne (CI-SIS)"
* templateId[frReferenceInterne] ^definition = "Conformité FR-Reference-interne (CI-SIS)"
* code MS
* code ^short = "Code de l'élément référencé. Le 'code' est obligatoire et doit être identique au code de l'élément référencé.  
Si l'élément référencé n'a pas codé, alors le 'code' doit être nullFlavor='NA'. "
* code ^definition = "Code de l'élément référencé"
* code.nullFlavor = #NA
