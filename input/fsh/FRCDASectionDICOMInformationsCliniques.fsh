Profile: FRCDASectionDICOMInformationsCliniques
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Section
Id: fr-cda-dicom-informations-cliniques
Title: "CDA - FR DICOM Informations cliniques"
Description: "DICOM Part 20 - Clinical Information Section. Cette section permet d'enregistrer les détails cliniques liés au patient, tels que : 
 - Justification de la demande dans la sous-section FR-DICOM-demande-examen [1..1] 
 - Finalité de l'examen dans la même sous-section FR-DICOM-demande-examen [0..1] 
 - Antécédents médicaux significatifs et pertinents pour cet examen dans la sous-section FR-Historique-medical [0..1]
 - Antécédents chirurgicaux pertinents pour cet examen dans la sous-section FR-Historique-medical [0..1] 
 - Contre-indications et facteurs de risques connus au moment de la demande et dépendant de la modalité dans la sous-section FR-Historique-medical [0..1]"
* templateId 1..2
* templateId ^slicing.discriminator.type = #value
* templateId ^slicing.discriminator.path = "root"
* templateId ^slicing.rules = #open
* templateId contains frSectionDicomInformationsCliniques 1..1
and dicomClinicalInformationSection 1..1
* templateId[frSectionDicomInformationsCliniques].root = "1.2.250.1.213.1.1.2.205"
* templateId[frSectionDicomInformationsCliniques] ^short = "Conformité FR-DICOM-Informations-cliniques (CI-SIS)"
* templateId[dicomClinicalInformationSection].root = "1.2.840.10008.9.2"
* templateId[dicomClinicalInformationSection] ^short = "Conformité Clinical Information (DICOM Part 20)"
* id 1..1 MS
* id ^short = "Identifiant de la section"
* id ^definition = "Identifiant de la section"
* code MS
* code 1..1
* code ^short = "Code de la section"
* code ^definition = "Code de la section"
* code.code 1..1
* code.code = #55752-0
* code.displayName 1..1
* code.displayName = "Informations cliniques"
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
* component 1..2
* component ^slicing.discriminator.type = #type
* component ^slicing.discriminator.path = "$this"
* component ^slicing.rules = #open
* component contains
frSectionDicomDemandeExamen 1..1 and
frSectionDicomHistoriqueMedical 1..1 
* component[frSectionDicomDemandeExamen].section only FRCDASectionDICOMDemandeExamen
* component[frSectionDicomDemandeExamen].section ^short = "Sous-section DICOM Demande examen"
* component[frSectionDicomHistoriqueMedical].section only FRCDASectionDICOMHistoriqueMedical
* component[frSectionDicomHistoriqueMedical].section ^short = "Sous-section DICOM Historique médical"