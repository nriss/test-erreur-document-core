Profile: FRCDADispositifMedical
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Supply
Id: fr-cda-dispositif-medical
Title: "CDA - FR Dispositif medical"
Description: "Entrée FR-Dispositif-medical: L'entrée Dispositif Médical est une entrée de type 'supply' qui permet de fournir les information sur un dispositif médical."
* classCode MS
* moodCode MS
* moodCode ^short = "
 - Si le DM a été dispensé : @moodCode='EVN'  
 - Si le DM n’a pas encore été dispensé : @moodCode='INT'"
* moodCode ^definition = "
 - Si le DM a été dispensé : @moodCode='EVN'  
 - Si le DM n’a pas encore été dispensé : @moodCode='INT'"
* id 1..* MS
* id ^short = "Identifiant de la fourniture du DM -Sous la forme UID (UUID ou OID). Cet identifiant correspond à l'identifiant de la fourniture du dispositf médical (p. ex. procédure d'implant). Si l'identifiant n'est pas connu, utiliser la valeur nullFlavor='UNK'."
* id ^definition = "Identifiant de la fourniture du DM"
* templateId 1..2
* templateId ^slicing.discriminator.type = #value
* templateId ^slicing.discriminator.path = "root"
* templateId ^slicing.rules = #open
* templateId contains ccdSupplyActivity 1..1
and frDispositifMedical 1..1
* templateId[ccdSupplyActivity].root 1..1
* templateId[ccdSupplyActivity].root = "2.16.840.1.113883.10.20.1.34"
* templateId[ccdSupplyActivity] ^short = "Conformité Supply Activity (CCD)"
* templateId[ccdSupplyActivity] ^definition = "Conformité Supply Activity (CCD)"
* templateId[frDispositifMedical].root 1..1
* templateId[frDispositifMedical].root = "1.2.250.1.213.1.1.3.20"
* templateId[frDispositifMedical] ^short = "Conformité FR-Dispositif-medical (CI-SIS)"
* templateId[frDispositifMedical] ^definition = "Conformité FR-Dispositif-medical (CI-SIS)"
* text MS
* text ^short = "Description narrative"
  * reference MS
  * reference ^short = "Référence de la description narrative de la section"
* statusCode MS
* statusCode ^short = "Statut de l'entrée"
* statusCode ^definition = "Statut de l'entrée"
* statusCode from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-hl7-v3-ActStatus-cisis (required)
* effectiveTime MS
* effectiveTime 1..1
* effectiveTime ^short = "Date d'utilisation ou de présence chez le patient - Si la date n'est pas connue, utiliser la valeur nullFlavor='UNK'."
* effectiveTime ^definition = "Date d'utilisation ou de présence chez le patient"
* repeatNumber MS
* repeatNumber ^short = "Nombre de renouvellement(s) possible(s)"
* repeatNumber ^definition = "Nombre de renouvellement(s) possible(s)"
* quantity MS
* quantity ^short = "Quantité"
* expectedUseTime MS
* expectedUseTime ^short = "Durée d'utilisation - Si la date n’est pas connue, utiliser la valeur nullFla-vor='UNK'"
* expectedUseTime ^definition = "Durée d'utilisation"
* performer MS
* performer ^short = "Dispensateur"
* performer ^definition = "Dispensateur"
  * time MS
  * time 1..1
    * nullFlavor = #UNK
  * assignedEntity MS
  * assignedEntity only FRCDAAssignedEntity
* participant 1..* MS
* participant ^short = "Dispositif médical"
* participant ^definition = "Dispositif médical"
  * typeCode = #DEV
  * participantRole MS
    * classCode = #MANU
    * id MS
    * id ^short = "Identifiant unique du DM (UDI)Cet élément est facultatif, car les identifiants de production (p. ex., numéro de série, numéro de lot, identifiant unique) peuvent ne pas être connus."
    * id ^definition = "Identifiant unique du DM (UDI)"
    * playingDevice 1..1
    * playingDevice ^short = "Type de DM"
    * playingDevice ^definition = "Type de DM"
      * classCode MS
      * classCode = #DEV
      * code MS
      * code 1..1
      * code ^short = "Code du DM :Terminologie EMDN (1.2.250.1.213.2.68) : catégorie européenne du DMouJDV_AbsentOrUnknownDevices_CISIS (1.2.250.1.213.1.1.5.663)"
      * code ^definition = "Code du DM"
        * translation MS
        * translation ^short = "Autre code du dispositif médical : tout autre code disponible, par exemple : Référence catalogue / Date du catalogue + Identifiant catalogue (après l'arrivée d'EUDAMED) CLADIMED (2.250.1.213.2.65) - ACL-13 : Association Codification Logistique (OID [Précision attendue] ) pour le DM non implantables uniquement pour la ville (et parfois pour l'hôpital) - GTIN : Global trade Item Number (OID [Précision attendue] ) - LPP (OID [Précision attendue] ) [FR] (facturation) de la Cnam"
        * translation ^definition = "Autre code du dispositif médical"
* author MS
* author only FRCDAAuthor
* entryRelationship MS
* entryRelationship ^slicing.discriminator.type = #value
* entryRelationship ^slicing.discriminator.path = "$this"
* entryRelationship ^slicing.rules = #open
* entryRelationship contains 
frEnRapportAvecALD 0..1
 and frEnRapportAvecAccidentTravail 0..1
 and frEnRapportAvecLaPrevention 0..1
 and frNonRemboursable 0..1
* entryRelationship[frEnRapportAvecALD].observation only FRCDAEnRapportAvecALD
* entryRelationship[frEnRapportAvecALD] ^short = "Entrée En rapport avec une Affection Longue Durée (ALD)"
* entryRelationship[frEnRapportAvecALD].typeCode = #COMP
* entryRelationship[frEnRapportAvecAccidentTravail].observation only FRCDAEnRapportAvecAccidentTravail
* entryRelationship[frEnRapportAvecAccidentTravail] ^short = "Entrée En rapport avec accident travail"
* entryRelationship[frEnRapportAvecAccidentTravail].typeCode = #COMP
* entryRelationship[frEnRapportAvecLaPrevention].observation only FRCDAEnRapportAvecLaPrevention
* entryRelationship[frEnRapportAvecLaPrevention] ^short = "Entrée En rapport avec la prevention"
* entryRelationship[frEnRapportAvecLaPrevention].typeCode = #COMP
* entryRelationship[frNonRemboursable].observation only FRCDANonRemboursable
* entryRelationship[frNonRemboursable] ^short = "Entrée non remboursable"
* entryRelationship[frNonRemboursable].typeCode = #COMP
