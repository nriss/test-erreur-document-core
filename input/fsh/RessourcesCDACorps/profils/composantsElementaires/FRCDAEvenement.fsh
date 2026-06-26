Profile: FRCDAEvenement
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Encounter
Id: fr-cda-evenement
Title: "CDA - FR Evenement"
Description: "Entrée FR-Evenement: FR-EvenementCette entrée est un élément de type 'encounter' permettant de conserver les données d’activités liées à un patient / usager. Il peut s'agir d'un évènement passé ou à venir."
* classCode MS
* moodCode MS
* moodCode ^short = "Si évènement planifié @moodCode ='INT' ; Si évènement réalisé @mooCode = 'EVN'"
* moodCode ^definition = "Si évènement planifié @moodCode ='INT' ; Si évènement réalisé @mooCode = 'EVN'"
* id 1..* MS
* id ^short = "Identifiant de l'évènement"
* id ^definition = "Identifiant de l'évènement"
* templateId 1..3
* templateId ^slicing.discriminator.type = #value
* templateId ^slicing.discriminator.path = "root"
* templateId ^slicing.rules = #open
* templateId contains ccdEncounterActivity 0..1
and ccdPlanOfCareActivityPlannedRealised 0..1
and frEvenement 1..1
* templateId[ccdEncounterActivity].root 0..1
* templateId[ccdEncounterActivity].root = "2.16.840.1.113883.10.20.1.21"
* templateId[ccdEncounterActivity] ^short = "Conformité Encounter activity (CCD) si évènement réalisée (EVN) "
* templateId[ccdEncounterActivity] ^definition = "Conformité Encounter activity (CCD) si évènement réalisée (EVN)"
* templateId[ccdPlanOfCareActivityPlannedRealised].root 0..1
* templateId[ccdPlanOfCareActivityPlannedRealised].root = "2.16.840.1.113883.10.20.1.25"
* templateId[ccdPlanOfCareActivityPlannedRealised] ^short = "Conformité Plan of care activity (CCD) si évènement planifiée (INT) "
* templateId[ccdPlanOfCareActivityPlannedRealised] ^definition = "Conformité Plan of care activity (CCD) si évènement planifiée (INT)"
* templateId[frEvenement].root 1..1
* templateId[frEvenement].root = "1.2.250.1.213.1.1.3.215"
* templateId[frEvenement] ^short = "Conformité FR-Evenement (CI-SIS)"
* templateId[frEvenement] ^definition = "Conformité FR-Evenement (CI-SIS)"
* code MS
* code 1..1
* code ^short = "Type d'évènement :Le JDV dépend du volet utilisant cette entrée (les précisions sont alors fournies dans le volet correspondant). Si pas d'information utiliser le code Wolf ‘Aucun’."
* code ^definition = "Type d'évènement"
  * code 1..1 MS
  * codeSystem 1..1 MS
  * displayName MS
  * originalText 0..1
  * originalText ^short = "Précision sur le type d'évènement au format texte"
  * originalText ^definition = "Précision sur le type d'évènement au format texte"
    * reference  1..1
    * reference ^short = "Référence vers la partie narrative de la section"
  * qualifier 0..*
  * qualifier ^short = "Précision sur le type d'évènement au format codé"
  * qualifier ^definition = "Précision sur le type d'évènement au format codé"
    * name 0..1
    * name ^short = "Type de précision : Le JDV dépend du volet utilisant cette entrée (les précisions sont alors fournies dans le volet correspondant)."
    * name ^definition = "Type de précision"
    * value 1..1
    * value ^short = "Valeur de la précision :Le JDV dépend du volet utilisant cette entrée (les précisions sont alors fournies dans le volet correspondant)."
    * value ^definition = "Valeur de la précision"
* text MS
* text 0..1
* text ^short = "Libellé et motif de l'évènement"
* text.reference 1..1 MS
* statusCode MS
* statusCode 0..1
* statusCode ^short = "Statut de l'entrée"
* statusCode ^definition = "Statut de l'entrée"
* statusCode from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-hl7-v3-ActStatus-cisis (required)
* effectiveTime MS
* effectiveTime ^short = "Date de l’évènement"
* effectiveTime ^definition = "Date de l’évènement"
* performer only FRCDAPerformerCorps
* performer ^short = "Executant - Les attributs de cet élément prennent les valeurs suivantes: @typeCode='PRF'"
* author only FRCDAAuthor
* author ^short = "Auteur"
* informant only FRCDAInformant
* informant ^short = "Informateur"
* participant only FRCDAParticipantCorps
* participant ^short = "Lieu d'exécution / Entité juridique responsable de l'événement / Autres participants - Les attributs de cet élément prennent les valeurs suivantes : @typeCode='LOC' pour un Lieu d'éxécution - @typeCode='RESP' pour une Entité juridique - Les attributs du sous-élément participantRole prennent les valeurs suivantes : @classCode='SDLOC' pour un Lieu d'éxécution - Les attributs du sous-élément playingEntity prennent les valeurs suivantes : @classCode='PLC' pour un Lieu d'éxécution - @classCode='ENT' pour une Entité juridique @determinerCode='INSTANCE' pour un Lieu d'éxécution ou une Entité Juridique"
* entryRelationship MS
* entryRelationship ^slicing.discriminator.type = #value
* entryRelationship ^slicing.discriminator.path = "$this"
* entryRelationship ^slicing.rules = #open
* entryRelationship contains 
frSimpleObservation 0..*
 and frCommentaireER 0..*
 and frReferenceInterne 0..*
 and frTransportDuPatient 0..*
 and frStatut 0..*
 and frTransportDuProfessionnel 0..*
* entryRelationship[frSimpleObservation].observation only FRCDASimpleObservation
* entryRelationship[frSimpleObservation] ^short = "Caractéristique de l'évènement"
* entryRelationship[frSimpleObservation].typeCode = #COMP
* entryRelationship[frSimpleObservation].inversionInd = false
* entryRelationship[frCommentaireER].act only FRCDACommentaireER
* entryRelationship[frCommentaireER] ^short = "Commentaire"
* entryRelationship[frCommentaireER].typeCode = #SUBJ
* entryRelationship[frCommentaireER].inversionInd = true
* entryRelationship[frReferenceInterne].act only FRCDAReferenceInterne
* entryRelationship[frReferenceInterne] ^short = "Pièces jointes (ex : CR de l'évènement)"
* entryRelationship[frReferenceInterne].typeCode = #REFR
* entryRelationship[frReferenceInterne].inversionInd = false
* entryRelationship[frTransportDuPatient].act only FRCDATransportDuPatient
* entryRelationship[frTransportDuPatient] ^short = "Transport du patient/usager - (aller ou retour)"
* entryRelationship[frTransportDuPatient].typeCode = #COMP
* entryRelationship[frTransportDuPatient].inversionInd = false
* entryRelationship[frStatut].observation only FRCDAStatut
* entryRelationship[frStatut] ^short = "Statut métier de l’évènement"
* entryRelationship[frStatut].typeCode = #COMP
* entryRelationship[frStatut].inversionInd = false
* entryRelationship[frTransportDuProfessionnel].act only FRCDATransportDuProfessionnel
* entryRelationship[frTransportDuProfessionnel] ^short = "Transport d’un professionnel ayant participé à l’évènement"
* entryRelationship[frTransportDuProfessionnel].typeCode = #COMP
* entryRelationship[frTransportDuProfessionnel].inversionInd = false