Instance: FRSectionImagingAddendumLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMAddendum → FRCDAdicomAddendum → FRCompositionDocument.section:Addendum"
Description: "Mapping des éléments du modèle métier FRLMAddendum vers la section CDA FRCDADicomAddendum puis vers le profil FHIR FRCompositionDocument.section:Addendum."
* title = "Mapping Métier/CDA/FHIR : \"Addendum\""  
* status = #draft

// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-addendum"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-dicom-addendum"
// Élément racine
* group[=].element[+].code = #FRLMAddendum
* group[=].element[=].target.code = #FRCDADicomAddendum
* group[=].element[=].target.equivalence = #equivalent
// Code de la section
* group[=].element[+].code = #FRLMAddendum.codeSection
* group[=].element[=].target.code = #FRCDADicomAddendum.code
* group[=].element[=].target.equivalence = #equivalent
// Titre de la section
* group[=].element[+].code = #FRLMAddendum.titreSection
* group[=].element[=].target.code = #FRCDADicomAddendum.title
* group[=].element[=].target.equivalence = #equivalent
// Description narrative de l'addendum
* group[=].element[+].code = #FRLMAddendum.blocNarratif
* group[=].element[=].target.code = #FRCDADicomAddendum.text
* group[=].element[=].target.equivalence = #equivalent
// Auteur de l'addendum
* group[=].element[+].code = #FRLMAddendum.auteur
* group[=].element[=].target.code = #FRCDADicomAddendum.author
* group[=].element[=].target.equivalence = #equivalent

// Groupe Mapping 2 : CDA → FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-dicom-addendum"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-composition-document"
// Élément racine
* group[=].element[+].code = #FRCDADicomAddendum
* group[=].element[=].target.code = #FRCompositionDocument.section:Addendum
* group[=].element[=].target.equivalence = #equivalent
// Code de la section
* group[=].element[+].code = #FRCDADicomAddendum.code
* group[=].element[=].target.code = #FRCompositionDocument.section:Addendum.code
* group[=].element[=].target.equivalence = #equivalent
// Titre de la section
* group[=].element[+].code = #FRCDADicomAddendum.title
* group[=].element[=].target.code = #FRCompositionDocument.section:Addendum.title
* group[=].element[=].target.equivalence = #equivalent
// Description narrative de l'addendum
* group[=].element[+].code = #FRCDADicomAddendum.text
* group[=].element[=].target.code = #FRCompositionDocument.section:Addendum.text
* group[=].element[=].target.equivalence = #equivalent
// Auteur de l'addendum
* group[=].element[+].code = #FRCDADicomAddendum.author
* group[=].element[=].target.code = #FRCompositionDocument.section:Addendum.author
* group[=].element[=].target.equivalence = #equivalent
