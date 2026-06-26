Profile: FRCDACustodian
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Custodian
Id: fr-cda-custodian
Title: "CDA - custodian"
Description: "L'élément de l'en-tête du CDA custodian permet de représenter la structure chargée de la conservation du document."
* ^status = #draft
* nullFlavor 0..0
* typeId.nullFlavor 0..0
* typeId.assigningAuthorityName 0..0
* typeId.displayable 0..0
* assignedCustodian ^short = "Structure"
* assignedCustodian only fr-cda-assigned-custodian