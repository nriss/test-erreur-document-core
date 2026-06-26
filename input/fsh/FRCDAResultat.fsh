Profile: FRCDAResultat
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Observation
Id: fr-cda-resultat
Title: "CDA - FR Resultat"
Description: "Entrée FR-Resultat: Cette entrée permet d'indiquer le résultat observé."
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
* templateId contains frResultat 1..1
and iheSimpleObservation 1..1
and frSimpleObservation 1..1
* templateId[frResultat].root 1..1
* templateId[frResultat].root = "1.2.250.1.213.1.1.3.209"
* templateId[frResultat] ^short = "Conformité FR-Resultat (CI-SIS)"
* templateId[frResultat] ^definition = "Conformité FR-Resultat (CI-SIS)"
* templateId[iheSimpleObservation].root 1..1
* templateId[iheSimpleObservation].root = "1.3.6.1.4.1.19376.1.5.3.1.4.13"
* templateId[iheSimpleObservation] ^short = "Conformité Simple Observation (IHE PCC)"
* templateId[iheSimpleObservation] ^definition = "Conformité Simple Observation (IHE PCC)"
* templateId[frSimpleObservation].root 1..1
* templateId[frSimpleObservation].root = "1.2.250.1.213.1.1.3.48"
* templateId[frSimpleObservation] ^short = "Conformité FR-Simple-Observation (CI-SIS)"
* templateId[frSimpleObservation] ^definition = "Conformité FR-Simple-Observation (CI-SIS)"
* code MS
* code ^short = "Code du résultat"
* code ^definition = "Code du résultat"
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
* statusCode ^short = "Statut de l'observation : completed"
* statusCode ^definition = "Statut de l'observation"
* statusCode.code = #completed
* effectiveTime MS
* effectiveTime 1..1
* effectiveTime ^short = "Date de l'observation"
* effectiveTime ^definition = "Date de l'observation"
* value MS
* value ^short = "Observation effectuée"
* value ^definition = "Observation effectuée"
* value 1..1
* interpretationCode MS
* interpretationCode 0..1 MS
* interpretationCode ^short = "Interprétation"
* interpretationCode ^definition = "Interprétation"
* interpretationCode from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-hl7-v3-ObservationInterpretation-cisis (required)
* targetSiteCode 0..1 MS
* targetSiteCode ^short = "Site de l'observation"
* targetSiteCode ^definition = "Site de l'observation"
* author 1..1
* author ^short = "Auteur de l'observation"
* author ^definition = "Auteur de l'observation"
* author only FRCDAAuthor
* referenceRange MS 
* referenceRange ^short = "Intervalles de référence"
* referenceRange ^definition = "Intervalles de référence"
* entryRelationship MS
* entryRelationship ^short = "Entrée FR-Commentaire-ER"
* entryRelationship ^definition = "Entrée FR-Commentaire-ER"
* entryRelationship.typeCode = #COMP
* entryRelationship.act only FRCDACommentaireER