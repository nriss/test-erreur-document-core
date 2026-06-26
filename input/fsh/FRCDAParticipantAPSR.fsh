Profile: FRCDAParticipantAPSR
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Participant2
Id: fr-cda-participant-apsr
Title: "CDA - FR Participant APSR"
Description: "FR-Participant-APSR: IHE-APSR - AdditionalParticipantAPSR. Cet élément est un élément de type 'participant' utilisable dans les entrées du corps du document et pas dans l'entête. Il permet de décrire un participant à l'élaboration du contenu du document produit par un laboratoire ou par une structure d'anatomopathologie. Le rôle du participant (valideur, responsable, automate ou système, transcripteur) est précisé."
* typeCode MS
* typeCode ^short = "Rôle du participant :\r\n
AUTHEN : valideur, 
RESP : responsable, 
DEV : automate ou système, 
ENT : transcripteur."
* typeCode ^definition = "Rôle du participant"
* typeCode from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-participant-additionnel-resultat-cisis (required)
* templateId 1..2
* templateId ^slicing.discriminator.type = #value
* templateId ^slicing.discriminator.path = "root"
* templateId ^slicing.rules = #open
* templateId contains iheParticipantAPSR 1..1
and frParticipantAPSR 1..1
* templateId[iheParticipantAPSR].root 1..1
* templateId[iheParticipantAPSR].root = "1.3.6.1.4.1.19376.1.8.1.4.7"
* templateId[iheParticipantAPSR] ^short = "Conformité IHE APSR - AdditionalParticipantAPSR (IHE APSR)"
* templateId[iheParticipantAPSR] ^definition = "Conformité IHE APSR - AdditionalParticipantAPSR (IHE APSR)"
* templateId[frParticipantAPSR].root 1..1
* templateId[frParticipantAPSR].root = "1.2.250.1.213.1.1.3.75"
* templateId[frParticipantAPSR] ^short = "Conformité FR Participant APSR (CI-SIS)"
* templateId[frParticipantAPSR] ^definition = "Conformité FR Participant APSR (CI-SIS)"
* time MS
* time ^short = "Période de participation"
* time ^definition = "Période de participation"
* time.low MS
* time.low ^short = "Date de début de la participation"
* time.low ^definition = "Date de début de la participation"
* time.high MS
* time.high ^short = "Date de fin de la participation"
* time.high ^definition = "Date de fin de la participation"
* participantRole MS
* participantRole ^short = "Rôle du participant dans l'acte"
* participantRole ^definition = "Rôle du participant dans l'acte"
  * classCode MS
  * id MS
  * id ^short = "Identifiant du participant"
  * addr MS
  * addr ^short = "Adresses du participant"
  * addr only CISISAddr
  * telecom MS
  * telecom ^short = "Coordonnées télécom du participant"
  * telecom only CISISTelecom
  * playingEntity MS
  * playingEntity ^short = """Nom du participant: \r\n
  Si typeCode est différent de 'DEV' : l'entité qui tient le rôle est une personne (l'élément playingEntity est alors obligatoire)."""
  * playingEntity ^definition = "Nom du participant"
  * playingDevice MS
  * playingDevice ^short = """Dispositif automatique : \r\n
  Si typeCode='DEV' : l'entité qui tient le rôle est un dispositif automatique (l'élément playingDevice est alors obligatoire).
  Dans ce cas, l'un des trois sous-éléments code, manufacturerModelName, softwareName doit être renseigné."""
  * playingDevice ^definition = "Dispositif automatique"