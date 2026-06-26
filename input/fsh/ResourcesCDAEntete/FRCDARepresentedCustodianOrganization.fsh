Profile: FRCDARepresentedCustodianOrganization
Parent: http://hl7.org/cda/stds/core/StructureDefinition/CustodianOrganization
Id: fr-cda-represented-custodian-organization
Title: "CDA - representedCustodianOrganization"
Description: "L'élément de l'en-tête du CDA representedCustodianOrganization contient les éléments caractérisant la structure conservant le document, à savoir l'identifiant, le nom, les adresses géopostales et de télécommunication."
* ^status = #draft
* determinerCode 0..0
* typeId.nullFlavor 0..0
* typeId.assigningAuthorityName 0..0 
* typeId.displayable 0..0
* id ^short = "Identifiant de la structure."
* id 1..1
  * root ^short = "- Pour une structure sanitaire ou médico-sociale : valeur fixée à '1.2.250.1.71.4.2.2' 
- Pour le DMP hébergeant les documents d'expression personnelle du patient ou les documents produits par un système via un SNR : 
valeur fixée à '1.2.250.1.213.4.1'"
  * extension ^short = "- Pour une structure sanitaire ou médico-sociale : valeur de Struct_idNat (voir annexe [6]) 
- Pour le DMP hébergeant les documents d'expression personnelle du patient ou les documents produits par un système via un SNR : Non renseigné"
* name ^short = "Nom de la structure : 
- Pour une structure sanitaire ou médico-sociale : valeur de Struct_Nom (voir annexe [6]) 
- Pour le DMP hébergeant les documents d'expression personnelle du patient ou les documents produits par un système via un SNR : valeur fixée à 'DMP'"
* telecom ^short = "Coordonnées télécom de la structure."
* addr ^short = "Adresse géopostale de la structure."
* sdtcTelecom 0..0
