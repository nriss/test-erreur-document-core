Profile: FRCDASectionDICOMObjectCatalog
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Section
Id: fr-cda-dicom-object-catalog
Title: "CDA - FR DICOM Object Catalog"
Description: "DICOM Part 20 - DICOM Object Catalog Section. Le catalogue d’objets DICOM répertorie tous les objets référencés selon l'organisation suivante :
 - [0..*] Examen 
  - [1..*] Série (avec la modalité d'acquisition)
   - [1..*] Objet référencé (avec la classe d'objet)"
* templateId 1..2
* templateId ^slicing.discriminator.type = #value
* templateId ^slicing.discriminator.path = "root"
* templateId ^slicing.rules = #open
* templateId contains frSectionDicomObjectCatalog 1..1
and dicomObjectCatalogSection 1..1
* templateId[frSectionDicomObjectCatalog].root = "1.2.250.1.213.1.1.2.217"
* templateId[frSectionDicomObjectCatalog] ^short = "Conformité FR-DICOM-Object-Catalog (CI-SIS)"
* templateId[dicomObjectCatalogSection].root = "2.16.840.1.113883.10.20.6.1.1"
* templateId[dicomObjectCatalogSection] ^short = "Conformité DICOM Object Catalog Section (DICOM Part 20)"
* id 1..1 MS
* id ^short = "Identifiant de la section"
* id ^definition = "Identifiant de la section"
* code MS
* code 1..1
* code ^short = "Identifiant de la section"
* code ^definition = "Identifiant de la section"
* code.code 1..1
* code.code = #121181
* code.displayName 1..1
* code.displayName = "Catalogue d’objets DICOM"
* code.codeSystem 1..1
* code.codeSystem = "1.2.840.10008.2.16.4"
* code.codeSystemName = "DCM"
* title 1..1 MS
* title ^short = "Titre de la section"
* title ^definition = "Titre de la section"
* text 1..1 MS
* text ^short = "Bloc narratif"
* text ^definition = "Bloc narratif"
* entry MS
* entry.act only FRCDADICOMExamenImagerie
* entry ^short = "Entrée DICOM Historique Examen imagerie"