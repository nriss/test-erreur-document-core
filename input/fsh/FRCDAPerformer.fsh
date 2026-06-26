Profile: FRCDAPerformer
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Performer1
Id: fr-cda-performer
Title: "CDA - performer"
Description: "L'élément de l'en-tête du CDA performer permet de représenter l'exécutant de l’évènement documenté. Il est obligatoire et son attribut nullFlavor interdit pour l’évènement documenté principal." 
* ^status = #draft
* typeId.nullFlavor 0..0 
* typeId.assigningAuthorityName 0..0
* typeId.displayable 0..0
* typeCode ^short = "PRF pour performer (Exécutant)"
* functionCode ^short = "Rôle fonctionnel"
* time ^short = "Date et heure de participation"
* assignedEntity ^short = "Exécutant"
* assignedEntity only fr-cda-assigned-entity
* assignedEntity.code from https://mos.esante.gouv.fr/NOS/JDV_J01-XdsAuthorSpecialty-CISIS/FHIR/JDV-J01-XdsAuthorSpecialty-CISIS (required)