Profile: FRCDASectionPlanDeSoins
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Section
Id: fr-cda-plan-de-soins
Title: "CDA - FR Plan de soins"
Description: "IHE-PCC - Coded Care Plan. La section Plan de soins doit contenir une description narrative des attentes en matière de soins, y compris des propositions, des objectifs et des demandes pour le suivi ou l'amélioration de l'état du patient. "
* templateId 1..3
* templateId ^slicing.discriminator.type = #value
* templateId ^slicing.discriminator.path = "root"
* templateId ^slicing.rules = #open
* templateId contains iheSectionCodedCarePlan 1..1
and ccdSectionCodedCarePlan 1..1
and frSectionPlanDeSoins 1..1
* templateId[iheSectionCodedCarePlan].root = "1.3.6.1.4.1.19376.1.5.3.1.3.36"
* templateId[iheSectionCodedCarePlan] ^short = "Déclaration de conformité de la section aux spécifications (IHE PCC)"
* templateId[ccdSectionCodedCarePlan].root = "2.16.840.1.113883.10.20.1.10"
* templateId[ccdSectionCodedCarePlan] ^short = "Déclaration de conformité de la section aux spécifications (CCD)"
* templateId[frSectionPlanDeSoins].root = "1.2.250.1.213.1.1.2.158"
* templateId[frSectionPlanDeSoins] ^short = "Déclaration de conformité de la section aux spécifications (CI-SIS)"
* id MS
* id ^short = "Identifiant de la section"
* id ^definition = "Identifiant de la section"
* code MS
* code 1..1
* code ^short = "Code de la section"
* code ^definition = "Code de la section"
* code.code 1..1 MS
* code.code = #18776-5
* code.displayName 1..1 MS
* code.displayName = "Plan de soins"
* code.codeSystem 1..1 MS
* code.codeSystem = "2.16.840.1.113883.6.1"
* code.codeSystemName = "LOINC"
* title 1..1 MS
* title ^short = "Titre de la section"
* title ^definition = "Titre de la section"
* text 1..1 MS
* text ^short = "Bloc narratif"
* text ^definition = "Bloc narratif"
* entry MS
* entry ^slicing.discriminator.type = #type
* entry ^slicing.discriminator.path = "$this"
* entry ^slicing.rules = #open
* entry contains
frActe 0..* and
frDemandeDexamenOuDeSuivi 0..* and
frTraitement 0..* and
frVaccinRecommande 0..* and
frRencontre 0..* 
* entry[frActe].procedure only FRCDAActe
* entry[frActe].procedure ^short = "Entrée Acte"
* entry[frDemandeDexamenOuDeSuivi].observation only FRCDADemandeDExamenOuDeSuivi
* entry[frDemandeDexamenOuDeSuivi].observation ^short = "Entrée Demande d'examen ou de suivi"
* entry[frTraitement].substanceAdministration only FRCDATraitement
* entry[frTraitement].substanceAdministration ^short = "Entrée Traitement"
* entry[frVaccinRecommande].substanceAdministration only FRCDAVaccinRecommande
* entry[frVaccinRecommande].substanceAdministration ^short = "Entrée Vaccin recommandé"
* entry[frRencontre].encounter only FRCDARencontre
* entry[frRencontre].encounter ^short = "Entrée Rencontre"
