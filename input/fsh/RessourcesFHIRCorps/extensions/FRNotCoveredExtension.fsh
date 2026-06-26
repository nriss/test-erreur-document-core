Extension: FRNotCoveredExtension
Id: fr-not-covered-extension
Title: "FR Not Covered Extension"
Description: "Extension permettant d'indiquer si le traitement est non remboursable."
* ^context.type = #element
* ^context.expression = "MedicationRequest"
* ^context.type = #element
* ^context.expression = "DeviceRequest"
* ^context.type = #element
* ^context.expression = "DeviceUseStatement"
* valueBoolean 1..1