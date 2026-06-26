Profile: FRLocationDocument
Parent: FRCoreLocationProfile
Id: fr-location-document
Title: "FR Location Document"
Description: "Ce profil représente le lieu de la prise en charge."

// Slicing : type 
* type MS
* address MS
* address ^short = "Adresse géopostale de la structure"
* name MS
* name ^short = "Nom de la structure"
* type.coding ^slicing.discriminator.type = #value
* type.coding ^slicing.discriminator.path = "coding.code"
* type.coding ^slicing.rules = #open

* type.coding contains secteurActivite 1..1
* type.coding[secteurActivite] ^short = "Secteur d'activité"
* type.coding[secteurActivite].code from $JDV_J02-XdsHealthcareFacilityTypeCode-CISIS (required)

* type.coding contains categorieEtablissement 0..1
* type.coding[categorieEtablissement] ^short = "Catégorie d'établissement"
* type.coding[categorieEtablissement].code from $jdv-j368-categorie-etablissement-cisis (required)