Profile: FRCDAAssignedCustodian
Parent: http://hl7.org/cda/stds/core/StructureDefinition/AssignedCustodian
Id: fr-cda-assigned-custodian
Title: "CDA - assignedCustodian"
Description: "L'élément de l'en-tête du CDA assignedCustodian contient l’élément representedCustodianOrganization caractérisant la structure conservant le document."
* ^status = #draft
* typeId.nullFlavor 0..0 
* typeId.assigningAuthorityName 0..0
* typeId.displayable 0..0 
* representedCustodianOrganization ^short = "Structure"
* representedCustodianOrganization only fr-cda-represented-custodian-organization