Profile: FRCDASectionDICOMActeImagerie
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Section
Id: fr-cda-dicom-acte-imagerie
Title: "CDA - FR DICOM Acte imagerie"
Description: "DICOM Part 20 - Imaging Procedure Description Section
 - Cette section permet d'enregistrer les informations sur les détails techniques de l'acte d'imagerie et peut inclure des informations sur le protocole, le dispositif d’imagerie, le contraste, la dose de rayonnement, les médicaments administrés."
* templateId 1..2
* templateId ^slicing.discriminator.type = #value
* templateId ^slicing.discriminator.path = "root"
* templateId ^slicing.rules = #open
* templateId contains frSectionDicomActeImagerie 1..1
and dicomModalityPerformedProcedureStep 1..1
* templateId[frSectionDicomActeImagerie].root = "1.2.250.1.213.1.1.2.206"
* templateId[frSectionDicomActeImagerie] ^short = "Conformité FR-DICOM-Acte-imagerie (CI-SIS)"
* templateId[dicomModalityPerformedProcedureStep].root = "1.2.840.10008.9.3"
* templateId[dicomModalityPerformedProcedureStep] ^short = "Conformité Imaging Procedure Description (DICOM Part 20)"
* id 1..1 MS
* id ^short = "Identifiant de la section"
* id ^definition = "Identifiant de la section"
* code MS
* code 1..1
* code ^short = "Code de la section"
* code ^definition = "Code de la section"
* code.code 1..1
* code.code = #55111-9
* code.displayName 1..1
* code.displayName = "Description de l'acte d’imagerie"
* code.codeSystem 1..1
* code.codeSystem = "2.16.840.1.113883.6.1"
* code.codeSystemName = "LOINC"
* title 1..1 MS
* title ^short = "Titre de la section"
* title ^definition = "Titre de la section"
* text 1..1 MS
* text ^short = "Bloc narratif"
* text ^definition = "Bloc narratif"
* component MS
* component 1..3
* component ^slicing.discriminator.type = #type
* component ^slicing.discriminator.path = "$this"
* component ^slicing.rules = #open
* component contains
frSectionDicomComplications 0..1 and
frSectionDicomExpositionAuxRadiations 0..1 and
frSectionDicomObjectCatalog 1..1 
* component[frSectionDicomComplications].section only FRCDASectionDICOMComplications
* component[frSectionDicomComplications].section ^short = "Section Complications"
* component[frSectionDicomExpositionAuxRadiations].section only FRCDASectionDICOMExpositionAuxRadiations
* component[frSectionDicomExpositionAuxRadiations].section ^short = "Section Expositions aux radiations"
* component[frSectionDicomObjectCatalog].section only FRCDASectionDICOMObjectCatalog
* component[frSectionDicomObjectCatalog].section ^short = "Section Catalogue d'objects"
* entry 1..* MS
* entry ^slicing.discriminator.type = #type
* entry ^slicing.discriminator.path = "$this"
* entry ^slicing.rules = #open
* entry contains
frDicomTechniqueImagerie 1..1 and
frDicomAdministrationProduitDeSante 0..* 
* entry[frDicomTechniqueImagerie].procedure only FRCDADICOMTechniqueImagerie
* entry[frDicomTechniqueImagerie].procedure ^short = "Entrée technique d'imagerie"
* entry[frDicomAdministrationProduitDeSante].substanceAdministration only FRCDADICOMAdministrationProduitDeSante
* entry[frDicomAdministrationProduitDeSante].substanceAdministration ^short = "Entrée Administration de produits"