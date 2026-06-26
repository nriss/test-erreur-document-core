Profile: FRCDAParticipantRole
Parent: http://hl7.org/cda/stds/core/StructureDefinition/ParticipantRole
Id: fr-cda-participant-role
Title: "CDA - FR participantRole"
Description: "Le participantRole permet de représenter le rôle d’un participant dans un acte clinique."
* classCode MS
* typeId MS
* templateId MS
* id MS
* id ^short = "Identifiant du participant"
* code MS
* code ^short = "Type du participant"
* addr MS
* addr ^short = "Adresses du participant"
* addr only CISISAddr
* telecom MS
* telecom ^short = "Coordonnées télécom du participant"
* telecom only CISISTelecom
* playingEntity MS
* playingEntity ^short = "Identité du participant"
* playingDevice MS
* playingDevice ^short = "Dispositif automatique"
* scopingEntity MS
* scopingEntity ^short = "Organisation"
