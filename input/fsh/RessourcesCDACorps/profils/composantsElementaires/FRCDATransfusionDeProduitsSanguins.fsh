Profile: FRCDATransfusionDeProduitsSanguins
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Observation
Id: fr-cda-transfusion-de-produits-sanguins
Title: "CDA - FR Transfusion de produits sanguins"
Description: "Entrée FR-Transfusion-de-produits-sanguins: Cette entrée permet d'indiquer s'il a eu ou pas transfusion de produit sanguin."
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
and frTransfusionDeProduitsSanguins 1..1
* templateId[iheSimpleObservation].root 1..1
* templateId[iheSimpleObservation].root = "1.3.6.1.4.1.19376.1.5.3.1.4.13"
* templateId[iheSimpleObservation] ^short = "Conformité Simple Observation (IHE PCC)"
* templateId[iheSimpleObservation] ^definition = "Conformité Simple Observation (IHE PCC)"
* templateId[frSimpleObservation].root 1..1
* templateId[frSimpleObservation].root = "1.2.250.1.213.1.1.3.48"
* templateId[frSimpleObservation] ^short = "Conformité FR-Simple-Observation (CI-SIS)"
* templateId[frSimpleObservation] ^definition = "Conformité FR-Simple-Observation (CI-SIS)"
* templateId[frTransfusionDeProduitsSanguins] 1..1
* templateId[frTransfusionDeProduitsSanguins].root = "1.2.250.1.213.1.1.3.48.10"
* templateId[frTransfusionDeProduitsSanguins] ^short = "Conformité FR-Transfusion-de-produits-sanguins (CI-SIS)"
* templateId[frTransfusionDeProduitsSanguins] ^definition = "Conformité FR-Transfusion-de-produits-sanguins (CI-SIS)"
* code MS
* code ^short = "Code de l'observation"
* code ^definition = "Code de l'observation"
* code.code = #MED-145
* code.displayName = "Transfusion de produits sanguins"
* code.codeSystem = "1.2.250.1.213.1.1.4.322"
* code.codeSystemName = "TerminologieCISIS"
* code.code 1..1 MS
* code.displayName MS
* code.codeSystem 1..1 MS
* text MS
* text 1..1
* text ^short = "Partie narrative de l’observation"
* text.reference 1..1 MS
* statusCode MS
* statusCode 1..1
* statusCode ^short = "Statut de l’entréeFixé à la valeur 'completed'"
* statusCode ^definition = "Statut de l’entrée"
* statusCode.code = #completed
* effectiveTime MS
* effectiveTime 1..1
* effectiveTime ^short = "Date de l'observation"
* effectiveTime ^definition = "Date de l'observation"
* value 1..1 MS 
* value ^short = "Transfusion de produit sanguin."
* value ^definition = "Transfusion de produit sanguin"
* value only BL
* author 0..1
* author only FRCDAAuthor
