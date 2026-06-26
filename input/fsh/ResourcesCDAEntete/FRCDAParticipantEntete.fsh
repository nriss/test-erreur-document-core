Profile: FRCDAParticipantEntete
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Participant1
Id: fr-cda-participant-entete
Title: "CDA - participant"
Description: "L'élément de l'en-tête du CDA participant permet de représenter toute personne/structure impliquée dans les évènements décrits par le document qui n’a pas été mentionné ailleurs."
* ^status = #draft
* typeId.nullFlavor 0..0
* typeId.assigningAuthorityName 0..0
* typeId.displayable 0..0
* contextControlCode 0..0
* typeCode ^short = "Type de participation"
* functionCode ^short = "Rôle fonctionnel"
* time 1..1
* time ^short = "Date de début et/ou de fin de la participation"
* time.low 0..1
* time.high 0..1
* time.low ^short = "Date/heure de début de la participation"
* time.high ^short = "Date/heure de fin de la participation"
* time.center 0..0
* time.width 0..0
* time.operator 0..0
* functionCode.code ^short = "Code issu du JDV_J47_FunctionCode_CISIS (1.2.250.1.213.1.1.5.124)"
* functionCode.code from https://mos.esante.gouv.fr/NOS/JDV_J47-FunctionCode-CISIS/FHIR/JDV-J47-FunctionCode-CISIS (required)
* functionCode.nullFlavor 0..0
* functionCode.code 1..1
* functionCode.codeSystem 1..1
* functionCode.codeSystemVersion 0..0
* functionCode.sdtcValueSet 0..0
* functionCode.sdtcValueSetVersion 0..0
* functionCode.originalText ^short = "Précision sur le rôle fonctionnel du participant" 
* associatedEntity only fr-cda-associated-entity
* associatedEntity ^short = "Identification du participant"
