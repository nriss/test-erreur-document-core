Profile: FRCDAName
Parent: http://hl7.org/cda/stds/core/StructureDefinition/PN
Id: fr-cda-name
Title: "CDA - Name"
Description: "L'élément de l'en-tête du CDA  correspond au nom d'une personne physique."
* ^status = #draft
* item.delimiter 0..0
* item.xmlText 0..0
* nullFlavor 0..0
* use 0..0
* validTime 0..0
* item.family ^short = "Nom de famille ou nom d’usage"
* item.family
* item.given ^short = "Prénom"
* item.given 0..1
* item.prefix ^short = "Civilité"
* item.prefix 0..1
* item.prefix from https://mos.esante.gouv.fr/NOS/JDV_J245-Civilite-CISIS/FHIR/JDV-J245-Civilite-CISIS
* item.suffix ^short = "Titre"
* item.suffix 0..1
* item.suffix from https://mos.esante.gouv.fr/NOS/JDV_J246-Titre-CISIS/FHIR/JDV-J246-Titre-CISIS
