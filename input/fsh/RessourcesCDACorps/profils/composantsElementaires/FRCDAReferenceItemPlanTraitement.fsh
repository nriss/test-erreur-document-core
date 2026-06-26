Profile: FRCDAReferenceItemPlanTraitement
Parent: http://hl7.org/cda/stds/core/StructureDefinition/SubstanceAdministration
Id: fr-cda-reference-item-plan-traitement
Title: "CDA - FR Reference item plan traitement"
Description: "Entrée FR-Reference-item-plan-traitement: IHE-Pharm - Cette entrée permet d’enregistrer une référence à un traitement dans un plan de traitement."
* classCode MS
* moodCode MS
* moodCode = #SBADM
* id 1..1 MS
* id ^short = "Identifiant de l'entrée"
* id ^definition = "Identifiant de l'entrée"
* templateId 1..2
* templateId ^slicing.discriminator.type = #value
* templateId ^slicing.discriminator.path = "root"
* templateId ^slicing.rules = #open
* templateId contains iheReferenceToMedicationTreatmentPlanItem 1..1
and frReferenceItemPlanTraitement 1..1
* templateId[iheReferenceToMedicationTreatmentPlanItem].root 1..1
* templateId[iheReferenceToMedicationTreatmentPlanItem].root = "1.3.6.1.4.1.19376.1.9.1.3.10"
* templateId[iheReferenceToMedicationTreatmentPlanItem] ^short = "Conformité Reference to Medication Treatment Plan Item (IHE PHARM PRE)"
* templateId[iheReferenceToMedicationTreatmentPlanItem] ^definition = "Conformité Reference to Medication Treatment Plan Item (IHE PHARM PRE)"
* templateId[frReferenceItemPlanTraitement].root 1..1
* templateId[frReferenceItemPlanTraitement].root = "1.2.250.1.213.1.1.3.85"
* templateId[frReferenceItemPlanTraitement] ^short = "Conformité FR-reference-item-plan-traitement (CI-SIS)"
* templateId[frReferenceItemPlanTraitement] ^definition = "Conformité FR-reference-item-plan-traitement (CI-SIS)"
* code MS
* code 1..1
* code ^short = "Code de l’entrée. Code indiquant que la référence est une ligne de traitement dans un plan de traitement."
* code ^definition = "Code de l’entrée"
* code.code = #MTPItem
* code.displayName = "Ligne dans un plan de traitement"
* code.codeSystem = "1.3.6.1.4.1.19376.1.9.2.2"
* code.codeSystemName = "IHE Pharmacy Item Type List"
* code.code 1..1 MS
* code.displayName MS
* code.codeSystem 1..1 MS
* consumable MS
  * manufacturedProduct MS
    * manufacturedMaterial 1..1
      * nullFlavor 1..1 MS
      * nullFlavor = #NA
* author 1..1
* author ^short = "Auteur de la ligne de traitement"
* author ^definition = "Auteur de la ligne de traitement"
* author only FRCDAAuthor
* entryRelationship 1..1 MS
* entryRelationship ^short = "Item d'un plan de traitement. Copie non modifiée de la ligne de traitement référencée."
* entryRelationship ^definition = "Item d'un plan de traitement"
* entryRelationship.typeCode = #REFR
* entryRelationship.substanceAdministration only FRCDAItemPlanTraitement
* reference 0..1 MS
* reference ^short = "Identifiant du plan de traitement. Cet identifiant peut faciliter la recherche du plan de traitement d'origine si nécessaire."
* reference ^definition = "Identifiant du plan de traitement"
* reference.typeCode = #XCRPT
* reference.externalDocument 1..1 MS