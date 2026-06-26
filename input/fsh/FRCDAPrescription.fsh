Profile: FRCDAPrescription
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Supply
Id: fr-cda-prescription
Title: "CDA - FR Prescription"
Description: "Entrée FR-Prescription: IHE-PCC - Supply - Cette entrée permet de décrire l’acte de prescription lié à un élément substanceAdministration par l’intermédiaire d’un élément entryRelationship dans les entrées suivantes : FR-Traitement, FR-Traitement-maladie-rare, FR-Vaccination, FR-Vaccin-recommande, FR-Fluide-intraveineux"
* classCode MS
* moodCode MS
* moodCode ^short = " Si la prescription a déjà été dispensée : moodCode='EVN' - Si la prescription est en attente de dispensation : moodCode='INT' "
* moodCode ^definition = "Si la prescription a déjà été dispensée:"
* id 1..1 MS
* id ^short = "Identifiant de l'entrée"
* id ^definition = "Identifiant de l'entrée"
* templateId 1..3
* templateId ^slicing.discriminator.type = #value
* templateId ^slicing.discriminator.path = "root"
* templateId ^slicing.rules = #open
* templateId contains ccdSupplyActivity 1..1
and iheSupplyEntry 1..1
and frPrescription 1..1
* templateId[ccdSupplyActivity].root 1..1
* templateId[ccdSupplyActivity].root = "2.16.840.1.113883.10.20.1.34"
* templateId[ccdSupplyActivity] ^short = "Conformité Supply activity (CCD)"
* templateId[ccdSupplyActivity] ^definition = "Conformité Supply activity (CCD)"
* templateId[iheSupplyEntry].root 1..1
* templateId[iheSupplyEntry].root = "1.3.6.1.4.1.19376.1.5.3.1.4.7.3"
* templateId[iheSupplyEntry] ^short = "Conformité Supply Entry (IHE PCC)"
* templateId[iheSupplyEntry] ^definition = "Conformité Supply Entry (IHE PCC)"
* templateId[frPrescription].root 1..1
* templateId[frPrescription].root = "1.2.250.1.213.1.1.3.44"
* templateId[frPrescription] ^short = "Conformité FR-Prescription (CI-SIS)"
* templateId[frPrescription] ^definition = "Conformité FR-Prescription (CI-SIS)"
* repeatNumber ^short = "Nombre de renouvellements possibles"
* quantity ^short = "Quantité - L'unité est exprimée selon le système de codage UCUM. "
* quantity ^definition = "Quantité"
* performer MS
* performer ^short = "Dispensateur"
* performer ^definition = "Dispensateur"
  * time MS
  * time 1..1
  * time ^short = "Date de la dispensation"
  * time ^definition = "Date de la dispensation"
  * time.nullFlavor = #UNK
  * assignedEntity 1..1
  * assignedEntity ^short = "Dispensateur"
  * assignedEntity ^definition = "Dispensateur"
    * id 1..1 MS
    * id ^short = "Identifiant du dispensateur"
    * id ^definition = "Identifiant du dispensateur"
    // CHOICE
    * assignedPerson 0..1
      * name 1..1
    * representedOrganization 0..1
      * name 1..1
  // END_CHOICE
* author 0..1
* author only FRCDAAuthor
* entryRelationship MS
* entryRelationship.act only FRCDAInstructionsAuDispensateur
* entryRelationship ^short = "Prescripteur -  Une prescription est en attente de dispensation (moodCode='INT'), peut comporter le prescripteur."
* entryRelationship.typeCode = #SUBJ