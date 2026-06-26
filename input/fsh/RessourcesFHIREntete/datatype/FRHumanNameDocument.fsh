Profile: FRHumanNameDocument
Parent: FRCoreHumanNameProfile
Id: fr-human-name-document
Title: "FR Human Name Document"
Description: "Ce profil correspond au type de données HumanName utilisé dans le document."
* family 1..
* prefix ^short = "Civilité"
* prefix from $JDV_J245-Civilite-CISIS (required)
* suffix ^short = "Titre"
* suffix from $JDV_J246-Titre-CISIS (required)