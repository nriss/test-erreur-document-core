Profile: FRCDAHealthCareFacility 
Parent: http://hl7.org/cda/stds/core/StructureDefinition/HealthCareFacility
Id: fr-cda-health-care-facility 
Title: "CDA - healthCareFacility"
Description: "L'élément de l'en-tête du CDA healthCareFacility permet de représenter la structure de prise en charge (cabinet du médecin, hôpital ou clinique, etc.)." 
* ^status = #draft
* nullFlavor 0..0
* typeId.nullFlavor 0..0
* typeId.assigningAuthorityName 0..0
* typeId.displayable 0..0
* id 0..0
* sdtcIdentifiedBy 0..0
* code 1..1
* code ^short = "Secteur d'activité : Valeur issue du JDV_J02_XdsHealthcareFacilityTypeCode_CISIS (1.2.250.1.213.1.1.5.466)."
* code from https://mos.esante.gouv.fr/NOS/JDV_J02-XdsHealthcareFacilityTypeCode-CISIS/FHIR/JDV-J02-XdsHealthcareFacilityTypeCode-CISIS
  * code 1..1 
  * codeSystem 1..1
  * displayName 1..1
  * nullFlavor 0..0
  * codeSystemVersion 0..0
  * sdtcValueSet 0..0
  * sdtcValueSetVersion 0..0
  * translation ^short = "Catégorie d'établissement"
  * translation 0..1
    * nullFlavor 0..0
    * code 1..1
    * code from $jdv-j368-categorie-etablissement-cisis
    * codeSystem 1..1
    * displayName 1..1
    * codeSystemVersion 0..0
    * sdtcValueSet 0..0
    * sdtcValueSetVersion 0..0
* location ^short = "Localisation de la structure"