Profile: FROrganizationDocument
Parent: AsOrganizationProfile
Id: fr-organization-document
Title: "FR Organization Document"
Description: "Ce profil représente la structure pour le compte de laquelle intervient le professionnel." 

* identifier ^short = "Identifiant de la structure
 - Obligatoire dans la structure chargée de la conservation du document(Composition.custodian 1..1)"

// slice : type
* type contains standardIndustryClassCode 0..1
* type[standardIndustryClassCode] from $JDV_J04-XdsPracticeSettingCode-CISIS (required)
* type[standardIndustryClassCode] ^short = "Cadre d'exercice"