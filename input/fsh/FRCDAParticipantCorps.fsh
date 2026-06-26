Profile: FRCDAParticipantCorps
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Participant2
Id: fr-cda-participant-corps
Title: "CDA - FR Participant corps"
Description: "FR-Participant: CDA - participant. Participant du corps"

* templateId ^slicing.discriminator.type = #value
* templateId ^slicing.discriminator.path = "root"
* templateId ^slicing.rules = #open
* templateId ^short = "templateId est optionnel. S'il est présent, son root peut être 1.2.250.1.213.1.1.3.109 et/ou une autre OID valide"
* templateId contains templateId 0..1 and templateId-other 0..*

* templateId[templateId].root = "1.2.250.1.213.1.1.3.109"
* templateId[templateId] ^short = "TemplateId avec root égal à 1.2.250.1.213.1.1.3.109"
* templateId[templateId] ^definition = "TemplateId avec root égal à 1.2.250.1.213.1.1.3.109"

* templateId[templateId-other] ^short = "Autre TemplateId"
* templateId[templateId-other] ^definition = "Autre TemplateId"

* typeCode MS
* time MS
* time ^short = "Date et heure de la participation"
* time ^definition = "Date et heure de la participation"
  * low MS
  * high MS
* participantRole MS
* participantRole ^short = "Rôle du participant dans l'acte"
* participantRole ^definition = "Rôle du participant dans l'acte"
* participantRole only FRCDAParticipantRole
