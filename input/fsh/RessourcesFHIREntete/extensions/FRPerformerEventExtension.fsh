Extension: FRPerformerEventExtension
Id: fr-performer-event-extension
Title: "FR Performer Event Extension"
Description: "Extension permettant d'ajouter un performer à l'élément event d'une Composition."
* ^context.type = #element
* ^context.expression = "Composition.event"
* . ^short = "Exécutant de l’évènement documenté"
* valueReference only Reference(FRPractitionerRoleDocument)