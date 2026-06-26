Logical: FRLMDicomStudyMetadata
Id: fr-lm-dicom-study-metadata
Parent: FRLMSection
Title: "Logical model - FR LM DICOM Study Metadata"
Description: """Section Object Catalog"""
Characteristics: #can-be-target

* titleSection 1..1 
* subSection 0..0 
* entry
  * imagingStudy 0..* FRLMImagingStudy "Entrée Examen imagerie"