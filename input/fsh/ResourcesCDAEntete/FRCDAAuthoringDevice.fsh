Profile: FRCDAAuthoringDevice
Parent: http://hl7.org/cda/stds/core/StructureDefinition/AuthoringDevice
Id: fr-cda-authoring-device
Title: "CDA - authoringDevice"
Description: "L'élément de l'en-tête du CDA authoringDevice contient les informations complémentaires si l’auteur est un système."
* ^status = #draft
* typeId.nullFlavor 0..0
* typeId.assigningAuthorityName 0..0
* typeId.displayable 0..0
* determinerCode 0..0
* manufacturerModelName ^short = "Nom du modèle du système."
* manufacturerModelName 1..1
* softwareName ^short = "Nom du système."
* softwareName 1..1