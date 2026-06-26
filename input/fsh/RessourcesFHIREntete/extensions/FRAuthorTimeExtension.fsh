//Cette extension permet d'associer un horodatage à l'élément Composition.author, indiquant la date et l'heure à laquelle l’auteur a participé à l’élaboration du document.
//Aucune extension du HL7 FHIR ne permet d’enregistrer cette donnée.
Extension: FRAuthorTimeExtension
Id: fr-author-time-extension
Title: "FR Author Time Extension"
Description: "Extension permettant d'ajouter un horodatage (TS) à l'élément author d'une Composition."
* ^context.type = #element
* ^context.expression = "Composition.author"
* . ^short = "Horodatage de la participation de l’auteur."
* value[x] only dateTime