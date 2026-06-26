Profile: FRObservationRadiationExposureDocument
Parent: Observation
Id: fr-observation-radiation-exposure-document
Title: "Observation - FR Observation Radiation Exposure Document"
Description: "FRObservationRadiationExposureDocument permet d'enregistrer les informations relatives à l’exposition du patient aux rayonnements et les informations de radioprotection."

* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "type"
* identifier ^slicing.rules = #open
* identifier ^slicing.ordered = false
* identifier ^slicing.description = "Identifiant de l'exposition aux radiations"

* identifier contains radiationUID 0..* MS
* identifier[radiationUID].type.coding.code = #00083010 // Irradiation Event UID
* identifier[radiationUID].system = "urn:dicom:uid"
* identifier[radiationUID].value 1..1
* identifier[radiationUID] ^short = "Radiation Exposures UID"

// référence à la demande d'examen d'imagerie contenant l'Accession Number comme identifiant
* basedOn MS
* basedOn ^slicing.discriminator.type = #pattern  
* basedOn ^slicing.discriminator.path = "$this"
* basedOn ^slicing.rules = #open
* basedOn contains serviceRequestAccessionNumber 0..*
* basedOn[serviceRequestAccessionNumber] only Reference(FRServiceRequestDocument)
* basedOn[serviceRequestAccessionNumber] ^short = "Référence à la demande d'examen contenant l'Accession Number"

* partOf ^slicing.discriminator.type = #type
* partOf ^slicing.discriminator.path = "reference"
* partOf ^slicing.rules = #open
* partOf ^slicing.description = "Ressources liées à cette exposition aux radiations" 

* partOf contains imagingStudyRef 1..1 MS and medicationAdministrationRef 0..1 MS
* partOf[imagingStudyRef] only Reference(FRImagingStudyDocument)
* partOf[imagingStudyRef] ^short = "Imaging study associé à cette exposition aux radiations"
* partOf[medicationAdministrationRef] only Reference(FRMedicationAdministrationDocument)
* partOf[medicationAdministrationRef] ^short = "Référence à l'administration du radiopharmaceutique associée à cette exposition aux radiations"

* code MS
* code = $LNC#73569-6 "Exposition aux rayonnements et informations de radioprotection"

* subject 1..1 MS
* subject only Reference(FRPatientINSDocument or FRPatientDocument)
* subject ^short = "Patient exposé aux radiations"

* effective[x] only dateTime
* effective[x] 1..1 MS
* effective[x] ^short = "Date de début de l'exposition aux radiations"

* bodySite 1..1 MS
* bodySite ^short = "Localisation anatomique en SNOMED CT"
* bodySite.extension contains http://hl7.org/fhir/StructureDefinition/procedure-targetBodyStructure named precisionTopographique 0..1 MS
* bodySite.extension[precisionTopographique] ^short = "Modificateurs topographiques"
* bodySite.extension[precisionTopographique].valueReference only Reference(FRBodyStructureDocument) 

// Mesures quantitatives telles que les mesures linéaires, les mesures de surface, de volume et numériques
* component ^short = "Mesures quantitatives liées à l'exposition aux rayonnements"
* component.code from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-quantite-exposition-rayonnements-cisis (required)
* component.value[x] 1..1 MS
* component.value[x] only Quantity
* component.valueQuantity MS
* component.valueQuantity ^short = "Quantité mesurée"

// Device utilisé pour l’irradiation
* device MS
* device only Reference(Device)
* device ^short = "Modalité d’irradiation utilisée pour l’exposition aux rayonnements"

// Irradiation Authorizing Person
* performer ^slicing.discriminator.type = #type
* performer ^slicing.discriminator.path = "reference"
* performer ^slicing.rules = #closed

* performer contains professionnelAutorisantExposition 1..1 MS
* performer[professionnelAutorisantExposition] only Reference(FRPractitionerRoleDocument)
* performer 1..1 MS
* performer[professionnelAutorisantExposition] ^short = "Identité du professionnel de santé ayant donné l'autorisation de l'exposition du patient aux rayonnements"