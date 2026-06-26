Profile: FRCDAEncompassingEncounter 
Parent: http://hl7.org/cda/stds/core/StructureDefinition/EncompassingEncounter
Id: fr-cda-encompassing-encounter 
Title: "CDA - encompassingEncounter"
Description: "L'élément de l'en-tête du CDA encompassingEncounter permet de décrire la prise en charge du patient/usager par un professionnel ou par une structure." 
* ^status = #draft
* typeId.nullFlavor 0..0
* typeId.assigningAuthorityName 0..0
* typeId.displayable 0..0
* sdtcAdmissionReferralSourceCode 0..0
* id ^short = "Identifiant de la prise en charge"
* code ^short = "Type de prise en charge" 
* code from https://mos.esante.gouv.fr/NOS/JDV_J142-TypeRencontre-CISIS/FHIR/JDV-J142-TypeRencontre-CISIS
  * codeSystem 1..1
  * displayName 1..1
  * nullFlavor 0..0
  * codeSystemVersion 0..0
  * sdtcValueSet 0..0
  * sdtcValueSetVersion 0..0
* effectiveTime  ^short = "Date de début et de fin de la prise en charge" 
* dischargeDispositionCode ^short = "Type sortie"
* responsibleParty ^short = "Responsable de la prise en charge"
* responsibleParty.nullFlavor 0..0
* responsibleParty.typeId 0..1
  * nullFlavor 0..0
  * assigningAuthorityName 0..0
  * displayable 0..0
* encounterParticipant only fr-cda-encounter-participant
* encounterParticipant ^short = "Personne impliquée dans la prise en charge"
* location  ^short = "Lieu de la prise en charge"
* location 1..1
* location.nullFlavor 0..0
* location.typeCode 0..0
* location.typeId 0..1
  * nullFlavor 0..0
  * assigningAuthorityName 0..0
  * displayable 0..0
* location.healthCareFacility only fr-cda-health-care-facility