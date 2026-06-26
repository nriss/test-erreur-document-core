Profile: FRPractitionerRoleDocument
Parent: AsPractitionerRoleProfile
Id: fr-practitionerRole-document
Title: "FR PractitionerRole Document"
Description: "Ce profil représente les professionnels de santé et leurs rôles dans le cadre d'un document médical."

// slice : Rôle fonctionnel du professionnel de santé
* code contains functionCode 0..1
* code[functionCode].coding from $JDV_J47-FunctionCode-CISIS (required)
* code[functionCode] ^short = "Rôle fonctionnel du professionnel de santé"

// slice : PS / Non PS
* code contains classCode 0..1
* code[classCode].coding.code from $JDV_J141-RoleClass-CISIS (required)
* code[classCode] ^short = "Professionnel de santé / Non Professionnel de santé"

// slice : Type de participation
* code contains typeCode 0..1
* code[typeCode].coding from $JDV_J144-ParticipationType-CISIS (required)
* code[typeCode] ^short = "Type de participation"
* practitioner 1..1 
* practitioner only Reference(FRPractitionerDocument)
* organization 1..1
* organization only Reference(FROrganizationDocument)