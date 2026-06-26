Profile: FRCDARecordTarget
Parent: http://hl7.org/cda/stds/core/StructureDefinition/RecordTarget
Id: fr-cda-record-target
Title: "CDA - recordTarget"
Description: "L'élément de l'en-tête du CDA recordTarget permet de représenter le patient/usager concerné par le document."
* ^status = #draft
* nullFlavor 0..0
* typeId.nullFlavor 0..0
* typeId.assigningAuthorityName 0..0
* typeId.displayable 0..0
* contextControlCode 0..0
* patientRole ^short = "Description du patient/usager."
* patientRole only fr-cda-patient-role
