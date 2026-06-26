Instance: FRSectionImagingActLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping Métier/CDA/FHIR : Acte d'imagerie"
Description: "Mapping des éléments du modèle métier FRLMActeImagerie vers la section CDA FRCDADICOMActeImagerie, puis vers le profil FHIR FRCompositionDocument.section:ImagingStudy."
* title = "Mapping Métier/CDA/FHIR : \"Acte d'imagerie\""
* status = #draft

// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-acte-imagerie"    
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-dicom-acte-imagerie"
// Élément racine
* group[=].element[+].code = #FRLMActeImagerie
* group[=].element[=].target.code = #FRCDADICOMActeImagerie
* group[=].element[=].target.equivalence = #equivalent
// Code de la section
* group[=].element[+].code = #FRLMActeImagerie.codeSection
* group[=].element[=].target.code = #FRCDADICOMActeImagerie.code
* group[=].element[=].target.equivalence = #equivalent
// titre de la section
* group[=].element[+].code = #FRLMActeImagerie.titreSection
* group[=].element[=].target.code = #FRCDADICOMActeImagerie.title
* group[=].element[=].target.equivalence = #equivalent
// Description narrative de l'acte
* group[=].element[+].code = #FRLMActeImagerie.blocNarratif
* group[=].element[=].target.code = #FRCDADICOMActeImagerie.text
* group[=].element[=].target.equivalence = #equivalent
// Sous section : Complications de l'acte
* group[=].element[+].code = #FRLMActeImagerie.sousSection.complicationsActe
* group[=].element[=].target.code = #FRCDADICOMActeImagerie.component:frDICOMComplications
* group[=].element[=].target.equivalence = #equivalent
// Sous section : Expositions aux radiations
* group[=].element[+].code = #FRLMActeImagerie.sousSection.expositionsRadiations
* group[=].element[=].target.code = #FRCDADICOMActeImagerie.component:frDICOMExpositionsAuxRadiations
* group[=].element[=].target.equivalence = #equivalent
// Sous section : Catalogue des objets
* group[=].element[+].code = #FRLMActeImagerie.sousSection.catalogueObjects
* group[=].element[=].target.code = #FRCDADICOMActeImagerie.component:frDICOMObjectCatalog
* group[=].element[=].target.equivalence = #equivalent
// Entrée : Technique d'imagerie
* group[=].element[+].code = #FRLMActeImagerie.entree.techniqueImagerie
* group[=].element[=].target.code = #FRCDADICOMActeImagerie.entry.frDICOMTechniqueImagerie
* group[=].element[=].target.equivalence = #equivalent
// Entrée : Produits de santé administrés
* group[=].element[+].code = #FRLMActeImagerie.entree.administrationProduits
* group[=].element[=].target.code = #FRCDADICOMActeImagerie.entry.frDICOMAdministrationProduitDeSante
* group[=].element[=].target.equivalence = #equivalent

// Groupe Mapping 2 : CDA → FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-dicom-acte-imagerie"    
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-composition-document"
// Élément racine
* group[=].element[+].code = #FRCDADICOMActeImagerie
* group[=].element[=].target.code = #FRCompositionDocument.section:ImagingStudy
* group[=].element[=].target.equivalence = #equivalent
// Code de la section
* group[=].element[+].code = #FRCDADICOMActeImagerie.code
* group[=].element[=].target.code = #FRCompositionDocument.section:ImagingStudy.code
* group[=].element[=].target.equivalence = #equivalent
// Titre de la section
* group[=].element[+].code = #FRCDADICOMActeImagerie.title
* group[=].element[=].target.code = #FRCompositionDocument.section:ImagingStudy.title
* group[=].element[=].target.equivalence = #equivalent
// Description narrative de l'acte
* group[=].element[+].code = #FRCDADICOMActeImagerie.text
* group[=].element[=].target.code = #FRCompositionDocument.section:ImagingStudy.text
* group[=].element[=].target.equivalence = #equivalent
// Sous section : Complications de l'acte
* group[=].element[+].code = #FRCDADICOMActeImagerie.component:frDICOMComplications
* group[=].element[=].target.code = #FRCompositionDocument.section:ImagingStudy.section:Complications
* group[=].element[=].target.equivalence = #equivalent
// Sous section : Expositions aux radiations
* group[+].element[+].code = #FRCDADICOMActeImagerie.component:frDICOMExpositionsAuxRadiations
* group[=].element[=].target.code = #FRCompositionDocument.section:ImagingStudy.section:radiationExposure
* group[=].element[=].target.equivalence = #equivalent
// Sous section : Catalogue des objets
* group[=].element[+].code = #FRCDADICOMActeImagerie.component:frDICOMObjectCatalog
* group[=].element[=].target.code = #FRCompositionDocument.section:ImagingStudy.section:ObjectCatalog
* group[=].element[=].target.equivalence = #equivalent
// Entrée : Technique d'imagerie
* group[=].element[+].code = #FRCDADICOMActeImagerie.entry.frDICOMTechniqueImagerie
* group[=].element[=].target.code = #FRCompositionDocument.section:ImagingStudy.entry:ImagingStudy.procedureReference:FRProcedureImagingDocument
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Correspondance avec une référence à une ressource FRProcedureImagingDocument de type Procedure dans l'entrée de la section ImagingStudy.
section:ImagingStudy = Reference(FRImagingStudyDocument) et section:ImagingStudy.entry:ImagingStudy.procedureReference = Reference(FRProcedureImagingDocument)."
// Entrée : Produits de santé administrés
* group[=].element[+].code = #FRCDADICOMActeImagerie.entry.frDICOMAdministrationProduitDeSante
* group[=].element[=].target.code = #FRCompositionDocument.section:ImagingStudy.entry:ImagingStudy.procedureReference:FRProcedureImagingDocument.partOf:FRMedicationAdministrationDocument
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Correspondance avec une référence à une ressource FRMedicationAdministrationDocument de type MedicationAdministration dans l'entrée de la section ImagingStudy.
section:ImagingStudy = Reference(FRImagingStudyDocument) et section:ImagingStudy.entry:ImagingStudy.procedureReference = Reference(FRProcedureImagingDocument) et section:ImagingStudy.entry:ImagingStudy.procedureReference.partOf = Reference(FRMedicationAdministrationDocument)."
