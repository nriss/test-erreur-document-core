Profile: FRCDADICOMQuantiteSubordonnee
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Observation
Id: fr-cda-dicom-quantite-subordonnee
Title: "CDA - FR DICOM Quantite subordonnee"
Description: "Entrée FR-DICOM-Quantite-subordonnee: Cette entrée permet d’enregistrer les mesures quantitatives telles que les mesures linéaires, les mesures de surface, de volume et numériques en précisant :  Le type de la mesure, La localisation anatomique / latéralité / topographie,   La quantité. Si la mesure quantitative est basée sur les données d’une image, une référence à l’image peut être précisée dans la partie narrative."
* classCode MS
* classCode = #OBS
* moodCode MS
* id 1..1 MS
* id ^short = "Identifiant de l'entrée"
* id ^definition = "Identifiant de l'entrée"
* templateId 1..2
* templateId ^slicing.discriminator.type = #value
* templateId ^slicing.discriminator.path = "root"
* templateId ^slicing.rules = #open
* templateId contains frDicomQuantiteSubordonnee 1..1
and dicomQuantityMeasurement 1..1
* templateId[frDicomQuantiteSubordonnee].root 1..1
* templateId[frDicomQuantiteSubordonnee].root = "1.2.250.1.213.1.1.3.168"
* templateId[frDicomQuantiteSubordonnee] ^short = "Conformité FR-DICOM-Quantite-subordonnee (CI-SIS)"
* templateId[frDicomQuantiteSubordonnee] ^definition = "Conformité FR-DICOM-Quantite-subordonnee (CI-SIS)"
* templateId[dicomQuantityMeasurement].root 1..1
* templateId[dicomQuantityMeasurement].root = "2.16.840.1.113883.10.20.6.2.14"
* templateId[dicomQuantityMeasurement] ^short = "Conformité Quantity Measurement (DICOM Part 20)"
* templateId[dicomQuantityMeasurement] ^definition = "Conformité Quantity Measurement (DICOM Part 20)"
* code MS
* code ^short = "Code de l'observation"
* code ^definition = "Code de l'observation"
* code from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-quantite-exposition-rayonnements-cisis
* code.code 1..1 MS
* code.displayName MS
* code.codeSystem 1..1 MS
* text MS
* text ^short = "Partie narrative de l'entrée"
* text ^definition = "Partie narrative de l'entrée"
* text.reference 1..1 MS
* statusCode MS
* statusCode 1..1
* statusCode ^short = "Status de l'entrée"
* statusCode ^definition = "Status de l'entrée"
* statusCode from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-hl7-v3-ActStatus-cisis
* effectiveTime MS
* effectiveTime ^short = "Date de l'entrée"
* effectiveTime ^definition = "Date de l'entrée"
* value MS
* value 1..1
* value only PQ
* interpretationCode MS
* interpretationCode 0..1
* interpretationCode ^short = "Interprétation code"
* interpretationCode ^definition = "Interprétation code"
* interpretationCode from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-hl7-v3-ObservationInterpretation-cisis
* methodCode MS
* methodCode 0..1
* methodCode ^short = "Méthode code"
* methodCode ^definition = "Méthode code"
* methodCode from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-hl7-v3-ObservationMethod-cisis
* targetSiteCode 1..1
* targetSiteCode ^short = "Localisation anatomiqueValeur issue du jdv-localisation-anatomique-cisis(1.2.250.1.213.1.1.5.694)"
* targetSiteCode ^definition = "Localisation anatomiqueValeur issue du jdv-localisation-anatomique-cisis"
  * qualifier MS
  * qualifier 0..1
  * qualifier ^short = "Topographie"
  * qualifier ^definition = "Topographie"
    * name MS
    * name 1..1
    * name.code = #106233006
    * name.codeSystem = "2.16.840.1.113883.6.96"
    * name.codeSystemName = "SNOMED-CT"
    * name.displayName = "modificateur topographique"
    * value MS
    * value 1..1
    * value ^short = "Valeur de la topographie"
    * value ^definition = "Valeur de la topographie"
    * value only CD
    * value from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-modificateur-topographique-cisis (required)


