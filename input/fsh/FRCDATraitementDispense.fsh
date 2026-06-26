Profile: FRCDATraitementDispense
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Supply
Id: fr-cda-traitement-dispense
Title: "CDA - FR Traitement dispense"
Description: "Entrée FR-Traitement-dispense: IHE PHARM DIS - DispenseItemEntry. Cette entrée de type supply permet de décrire un traitement dispensé avec notamment le médicament dispensé, la quantité et la référence de la prescription."
* classCode MS
* moodCode MS
* moodCode = #EVN
* id 1..1 MS
* id ^short = "Identifiant de l'entrée"
* id ^definition = "Identifiant de l'entrée"
* templateId 1..4
* templateId ^slicing.discriminator.type = #value
* templateId ^slicing.discriminator.path = "root"
* templateId ^slicing.rules = #open
* templateId contains iheDispenseItemEntry 1..1
and frTraitementDispense 1..1
and ccdSupplyActivity 1..1
and iheSupplyEntry 1..1
* templateId[iheDispenseItemEntry].root 1..1
* templateId[iheDispenseItemEntry].root = "1.3.6.1.4.1.19376.1.9.1.3.4"
* templateId[iheDispenseItemEntry] ^short = "Conformité DispenseItemEntry (IHE PHARM DIS)"
* templateId[iheDispenseItemEntry] ^definition = "Conformité DispenseItemEntry (IHE PHARM DIS)"
* templateId[frTraitementDispense].root 1..1
* templateId[frTraitementDispense].root = "1.2.250.1.213.1.1.3.204"
* templateId[frTraitementDispense] ^short = "Conformité FR-Traitement-dispensé (CI-SIS)"
* templateId[frTraitementDispense] ^definition = "Conformité FR-Traitement-dispensé (CI-SIS)"
* templateId[ccdSupplyActivity].root 1..1
* templateId[ccdSupplyActivity].root = "2.16.840.1.113883.10.20.1.34"
* templateId[ccdSupplyActivity] ^short = "Conformité Supply Activity (CCD)"
* templateId[ccdSupplyActivity] ^definition = "Conformité Supply Activity (CCD)"
* templateId[iheSupplyEntry].root 1..1
* templateId[iheSupplyEntry].root = "1.3.6.1.4.1.19376.1.5.3.1.4.7.3"
* templateId[iheSupplyEntry] ^short = "Conformité Supply Entry (IHE PCC)"
* templateId[iheSupplyEntry] ^definition = "Conformité Supply Entry (IHE PCC)"
* code MS
* code ^short = "Complétude de la dispensation : Valeur issue du JDV_CompletudeDispensation_CISIS (1.2.250.1.213.1.1.5.765)"
* code ^definition = "Complétude de la dispensation"
* code from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-completude-dispensation-cisis (required)
* code.code 1..1 MS
* code.displayName MS
* code.codeSystem 1..1 MS
* text MS
* text 1..1
* text ^short = "Texte de l'entrée"
* text ^definition = "Texte de l'entrée"
* text.reference 1..1 MS
* quantity 1..1 MS
* quantity ^short = "Quantité : Unité issue de EDQM Packaging"
* quantity ^definition = "Quantité"
* product 1..1 MS
* product ^short = "Médicament délivré"
* product ^definition = "Médicament délivré"
* product only FRCDAProduitDeSante
* entryRelationship MS
* entryRelationship ^slicing.discriminator.type = #value
* entryRelationship ^slicing.discriminator.path = "$this"
* entryRelationship ^slicing.rules = #open
* entryRelationship contains 
frReferenceItemPrescription 0..1
 and frTraitement 0..1
 and frInstructionsAuPatient 0..1
 and frNotesDuDispensateur 0..1
 and frActeSubstitution 0..1
* entryRelationship[frReferenceItemPrescription].substanceAdministration only FRCDAReferenceItemPrescription
* entryRelationship[frReferenceItemPrescription] ^short = "Référence de la prescription"
* entryRelationship[frReferenceItemPrescription] ^definition = "Référence de la prescription"
* entryRelationship[frReferenceItemPrescription].typeCode = #REFR
* entryRelationship[frReferenceItemPrescription].inversionInd = false

* entryRelationship[frTraitement].substanceAdministration only FRCDATraitement
* entryRelationship[frTraitement] ^short = "Posologie"
* entryRelationship[frTraitement] ^definition = "Posologie"
* entryRelationship[frTraitement].typeCode = #COMP

* entryRelationship[frInstructionsAuPatient].act only FRCDAInstructionsAuPatient
* entryRelationship[frInstructionsAuPatient] ^short = "Instructions au patient"
* entryRelationship[frInstructionsAuPatient] ^definition = "Instructions au patient"
* entryRelationship[frInstructionsAuPatient].typeCode = #SUBJ
* entryRelationship[frInstructionsAuPatient].inversionInd = true

* entryRelationship[frNotesDuDispensateur].act only FRCDANotesDuDispensateur
* entryRelationship[frNotesDuDispensateur] ^short = "Notes du dispensateur"
* entryRelationship[frNotesDuDispensateur] ^definition = "Notes du dispensateur"
* entryRelationship[frNotesDuDispensateur].typeCode = #SUBJ
* entryRelationship[frNotesDuDispensateur].inversionInd = true

* entryRelationship[frActeSubstitution].act only FRCDAActeSubstitution
* entryRelationship[frActeSubstitution] ^short = "Substitution"
* entryRelationship[frActeSubstitution] ^definition = "Substitution"
* entryRelationship[frActeSubstitution].typeCode = #COMP
