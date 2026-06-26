Profile: FRCDAListeDesProblemes
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Act
Id: fr-cda-liste-des-problemes
Title: "CDA - FR Liste des problemes"
Description: "Entrée FR-Liste-des-problemes: IHE-PCC - Problem-Concern. Cette entrée permet de regrouper des informations relatives aux pathologies non-allergiques du patient. Elle regroupe des entrées FR-Probleme qui décrivent chacun une pathologie."
* classCode MS
* classCode = #ACT
* moodCode MS
* moodCode = #EVN
* id 1..1 MS
* id ^short = "Identifiant de l'entrée"
* id ^definition = "Identifiant de l'entrée"
* templateId 1..4
* templateId ^slicing.discriminator.type = #value
* templateId ^slicing.discriminator.path = "root"
* templateId ^slicing.rules = #open
* templateId contains ccdProblemAct 1..1
and iheConcernEntry 1..1
and iheProblemConcern 1..1
and frListeDesProblemes 1..1
* templateId[ccdProblemAct].root 1..1
* templateId[ccdProblemAct].root = "2.16.840.1.113883.10.20.1.27"
* templateId[ccdProblemAct] ^short = "Conformité Problem Act (CCD)"
* templateId[ccdProblemAct] ^definition = "Conformité Problem Act (CCD)"
* templateId[iheConcernEntry].root 1..1
* templateId[iheConcernEntry].root = "1.3.6.1.4.1.19376.1.5.3.1.4.5.1"
* templateId[iheConcernEntry] ^short = "Conformité Concern Entry (IHE PCC)"
* templateId[iheConcernEntry] ^definition = "Conformité Concern Entry (IHE PCC)"
* templateId[iheProblemConcern].root 1..1
* templateId[iheProblemConcern].root = "1.3.6.1.4.1.19376.1.5.3.1.4.5.2"
* templateId[iheProblemConcern] ^short = "Conformité Problem Concern (IHE PCC)"
* templateId[iheProblemConcern] ^definition = "Conformité Problem Concern (IHE PCC)"
* templateId[frListeDesProblemes].root 1..1
* templateId[frListeDesProblemes].root = "1.2.250.1.213.1.1.3.39"
* templateId[frListeDesProblemes] ^short = "Conformité FR-Liste-des-problemes (CI-SIS)"
* templateId[frListeDesProblemes] ^definition = "Conformité FR-Liste-des-problemes (CI-SIS)"
* code MS
* code ^short = "Code de l'entrée"
* code ^definition = "Code de l'entrée"
* code.nullFlavor = #NA
* statusCode MS
* statusCode 1..1
* statusCode ^short = "Statut de l'entrée"
* statusCode ^definition = "Statut de l'entrée"
* statusCode from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-hl7-v3-ActStatus-cisis (required)
* effectiveTime MS
* effectiveTime 1..1
* effectiveTime ^short = "Date de début et de fin du problème"
* effectiveTime ^definition = "Date de début et de fin du problème"
* effectiveTime.low 1..1
* effectiveTime.low ^short = "Date du début"
* effectiveTime.low ^definition = "Date du début"
* entryRelationship  1..* MS
* entryRelationship ^short = "Entrée Problème"
* entryRelationship ^definition = "Entrée Problème"
* entryRelationship.typeCode = #SUBJ
* entryRelationship.inversionInd = false
* entryRelationship.observation only FRCDAProbleme