Profile: FRPractitionerDocument
Parent: AsPractitionerProfile
Id: fr-practitioner-document
Title: "FR Practitioner Document"
Description: "Ce profil permet de décrire un professionnel de santé dans le cadre d'un document médical"
* identifier 1..* 
* name 1..1
* name ^short = "Identité de la personne physique" 
* name only fr-human-name-document
  * family 1..1
  * given 0..1 

// Savoir-faire / rôle
* qualification[savoirFaire] ^short = "Le savoir-faire ou le rôle apporte des précisions sur certaines professions : 
 - Savoir-faire : pour les professions 10 (Médecin), 21 (Pharmacien), 40 (Chirurgien-dentiste) et 60 (Infirmier).
 - Rôle : pour les professions 41 (Assistant de service social) et 99 (Acteur caractérisé par son rôle)."

// Rôle (Profession 41 et 99) 
* qualification contains role 0..1
* qualification[role] ^short = "Rôle : Pour les professions 41 (Assistant de service social) et 99 (Acteur caractérisé par son rôle)."
* qualification[role].code.coding from FRValueSetRolePriseCharge (required)