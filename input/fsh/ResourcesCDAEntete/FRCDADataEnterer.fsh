Profile: FRCDADataEnterer
Parent: http://hl7.org/cda/stds/core/StructureDefinition/DataEnterer
Id: fr-cda-data-enterer
Title: "CDA - dataEnterer"
Description: "L'élément de l'en-tête du CDA dataEnterer contient les informations relatives à l’opérateur de saisie de tout ou partie du contenu du document." 
* ^status = #draft
* nullFlavor 0..0
* typeId.nullFlavor 0..0
* typeId.assigningAuthorityName 0..0
* typeId.displayable 0..0
* contextControlCode 0..0
* time ^short = "Horodatage de la participation de l’opérateur."
* time 1..1
  * value ^short = "Date et heure à laquelle l’opérateur a participé à l’élaboration du document."
* assignedEntity ^short = "Personne physique."
* assignedEntity only fr-cda-assigned-entity