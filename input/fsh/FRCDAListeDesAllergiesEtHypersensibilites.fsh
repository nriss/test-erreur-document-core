Profile: FRCDAListeDesAllergiesEtHypersensibilites
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Act
Id: fr-cda-liste-des-allergies-et-hypersensibilites
Title: "CDA - FR Liste des allergies et hypersensibilites"
Description: "Entrée FR-Liste-des-allergies-et-hypersensibilites: IHE-PCC - Allergy-And-Intolerance-Concern. 
 - L'entrée Liste des allergies et hypersensibilités est une entrée qui permet de regrouper des informations relatives aux pathologies allergiques du patient. Cette entrée est basée sur l'élément Etat clinique (Concern Entry - 1.3.6.1.4.1.19376.1.5.3.1.4.5.1) qu'elle spécialise. Elle regroupe des entrées Allergie ou hypersensibilité (1.3.6.1.4.1.19376.1.5.3.1.4.6) qui décrivent chacune une allergie ou une hypersensibilité."
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
and iheAllergyAndIntoleranceConcern 1..1
and frListeDesAllergiesEtHypersensibilites 1..1
* templateId[ccdProblemAct].root 1..1
* templateId[ccdProblemAct].root = "2.16.840.1.113883.10.20.1.27"
* templateId[ccdProblemAct] ^short = "Déclaration de conformité de l'entrée au parent CCD"
* templateId[ccdProblemAct] ^definition = "Déclaration de conformité de l'entrée au parent CCD"
* templateId[iheConcernEntry].root 1..1
* templateId[iheConcernEntry].root = "1.3.6.1.4.1.19376.1.5.3.1.4.5.1"
* templateId[iheConcernEntry] ^short = "Déclaration de conformité de l'entrée au parent IHE PCC"
* templateId[iheConcernEntry] ^definition = "Déclaration de conformité de l'entrée au parent IHE PCC"
* templateId[iheAllergyAndIntoleranceConcern].root 1..1
* templateId[iheAllergyAndIntoleranceConcern].root = "1.3.6.1.4.1.19376.1.5.3.1.4.5.3"
* templateId[iheAllergyAndIntoleranceConcern] ^short = "Déclaration de conformité de l'entrée aux spécifications IHE PCC"
* templateId[iheAllergyAndIntoleranceConcern] ^definition = "Déclaration de conformité de l'entrée aux spécifications IHE PCC"
* templateId[frListeDesAllergiesEtHypersensibilites].root 1..1
* templateId[frListeDesAllergiesEtHypersensibilites].root = "1.2.250.1.213.1.1.3.40"
* templateId[frListeDesAllergiesEtHypersensibilites] ^short = "Déclaration de conformité de l'entrée aux spécifications CI-SIS"
* templateId[frListeDesAllergiesEtHypersensibilites] ^definition = "Déclaration de conformité de l'entrée aux spécifications CI-SIS"
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
* effectiveTime ^short = "Date de la dernière mise à jour de la liste des allergies"
* effectiveTime ^definition = "Date de la dernière mise à jour de la liste des allergies"
* effectiveTime.low 1..1
* effectiveTime.low ^short = "Date du début"
* effectiveTime.low ^definition = "Date du début"
* effectiveTime.high 1..1
* effectiveTime ^short = "Date de fin. Le sous-élément 'high' est obligatoire dans les cas ou le problème est dans un statut 'completed' ou aborted' et n’est pas présent dans les autres cas."
* effectiveTime ^definition = "Date de fin"
* entryRelationship MS
* entryRelationship ^slicing.discriminator.type = #type
* entryRelationship ^slicing.discriminator.path = "$this"
* entryRelationship ^slicing.rules = #open
* entryRelationship contains 
frAllergieOuHypersensibilite 1..*
and frAutresInformations 0..*
* entryRelationship[frAllergieOuHypersensibilite].typeCode = #SUBJ
* entryRelationship[frAllergieOuHypersensibilite].inversionInd = false
* entryRelationship[frAllergieOuHypersensibilite].observation only FRCDAAllergieOuHypersensibilite
* entryRelationship[frAutresInformations] ^short = "Entrée Autres informations sur l’allergie ou l'hypersensibilité"
* entryRelationship[frAutresInformations].typeCode = #REFR