Instance: FRSectionImagingObjectCatalogLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMObjectCatalog → FRCDADICOMObjectCatalog → FRCompositionDocument.section:imagingStudy"
Description: "Mapping des éléments du modèle métier FRLMObjectCatalog vers la section CDA FRCDADICOMObjectCatalog, puis vers la section FHIR FRCompositionDocument.section:imagingStudy."
* title = "Mapping Métier/CDA/FHIR : \"Catalogue des objets d'imagerie\""   
* status = #draft
// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-object-catalog"    
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-dicom-object-catalog"
// Élément racine
* group[=].element[+].code = #FRLMObjectCatalog
* group[=].element[=].target.code = #FRCDADICOMObjectCatalog
* group[=].element[=].target.equivalence = #equivalent
// Titre de la section
* group[=].element[+].code = #FRLMObjectCatalog.titreSection
* group[=].element[=].target.code = #FRCDADICOMObjectCatalog.title
* group[=].element[=].target.equivalence = #equivalent
// code de la section
* group[=].element[+].code = #FRLMObjectCatalog.codeSection
* group[=].element[=].target.code = #FRCDADICOMObjectCatalog.code
* group[=].element[=].target.equivalence = #equivalent
// texte narratif de la section
* group[=].element[+].code = #FRLMObjectCatalog.blocNarratif
* group[=].element[=].target.code = #FRCDADICOMObjectCatalog.text
* group[=].element[=].target.equivalence = #equivalent
// entrée Examen imagerie
* group[=].element[+].code = #FRLMObjectCatalog.entree.examenImagerie
* group[=].element[=].target.code = #FRCDADICOMObjectCatalog.entry:FRCDADICOMExamenImagerie
* group[=].element[=].target.equivalence = #equivalent

// Groupe Mapping 2 : CDA → FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-dicom-object-catalog"    
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-composition-document"
// Élément racine
* group[=].element[+].code = #FRCDADICOMObjectCatalog
* group[=].element[=].target.code = #FRCompositionDocument.section:imagingStudy
* group[=].element[=].target.equivalence = #equivalent
// code de la section
* group[=].element[+].code = #FRCDADICOMObjectCatalog.code
* group[=].element[=].target.code = #FRCompositionDocument.section:imagingStudy.code
* group[=].element[=].target.equivalence = #equivalent
// Titre de la section
* group[=].element[+].code = #FRCDADICOMObjectCatalog.title
* group[=].element[=].target.code = #FRCompositionDocument.section:imagingStudy.title
* group[=].element[=].target.equivalence = #equivalent
// texte narratif de la section
* group[=].element[+].code = #FRCDADICOMObjectCatalog.text
* group[=].element[=].target.code = #FRCompositionDocument.section:imagingStudy.text
* group[=].element[=].target.equivalence = #equivalent
// entrée Examen imagerie
* group[=].element[+].code = #FRCDADICOMObjectCatalog.entry:FRCDADICOMExamenImagerie
* group[=].element[=].target.code = #FRCompositionDocument.section:imagingStudy.entry:FRImagingStudyDocument
* group[=].element[=].target.equivalence = #equivalent