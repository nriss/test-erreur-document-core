Logical: FRLMDevice
Id: fr-lm-device
Title: "Logical model - Device"
Description: """Entrée Dispositif médical"""
Characteristics: #can-be-target

* identifier 0..* Identifier "Identifiant du DM"
* udi 0..1 Identifier "Identifiant unique du DM (UDI)"
* manufacturer 0..1 string "Nom du fabricant du DM. Si le code du fabricant est inclus dans l'identifiant, le nom du fabricant doit correspondre à ce code."
* manufactureDate 0..1 dateTime "Date d'heure de production du DM"
* expiryDate 0..1 dateTime "Date d'expiration du DM"
* lotNumber 0..1 string "Numéro de lot du DM. Optionnel si le numéro de lot est inclus dans l'identifiant."
* serialNumber 0..1 string "Numéro de série attribué par le fabricant. Optionnel si le numéro de série est inclus dans l'identifiant."
* name 0..* Base "Nom du DM"
  * value 1..1 string "Nom du DM (ex Nom du DM associé à l'UDI, Nom commercial du DM attribué par le fabricant)"
  * type 1..1 CodeableConcept "Type de nom du DM (ex Nom du DM associé à l'UDI, nom commercial du DM attribué par le fabricant)"
* modelNumber 0..1 string "Numéro de modèle attribué par le fabricant."
* version 0..* string "Version du DM"
* type 1..1 CodeableConcept "Type de DM - EMDN (1.2.250.1.213.2.68)"
* note 0..1 string "Commentaire"
