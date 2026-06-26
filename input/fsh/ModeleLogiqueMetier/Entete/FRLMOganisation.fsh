Logical: FRLMOrganisation		
Id: fr-lm-organisation
Title: "Logical model - FR LM Organisation"			
Description: "Une structure (organisation) pour les professionnels de santé." 
* . 1..1
* identifier 0..* Identifier "Identifiant de la structure"
* type 0..*	CodeableConcept	"Type de structure"
  * ^binding.description = "Catégorie d'établissement provenant du jdv FHIR https://smt.esante.gouv.fr/fhir/ValueSet/jdv-j368-categorie-etablissement-cisis"
  * ^binding.valueSet = "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-j368-categorie-etablissement-cisis"
* name 0..1	string "Nom de la structure"
* address 0..1 Address "Adresse de la structure"
* telecom 0..* ContactPoint "Coordonnées télécom"
* partOf 0..1 FRLMOrganisation "Lieu dont celui-ci fait physiquement partie"
* industrySector 0..1 CodeableConcept "JDV_J02_XdsHealthcareFacilityTypeCode_CISIS"
  * ^binding.description = "JDV_J02_XdsHealthcareFacilityTypeCode_CISIS (Code de type d'établissement de santé provenant du JDV FHIR)"    
  * ^binding.valueSet = "https://mos.esante.gouv.fr/NOS/JDV_J02-XdsHealthcareFacilityTypeCode-CISIS/FHIR/JDV-J02-XdsHealthcareFacilityTypeCode-CISIS"