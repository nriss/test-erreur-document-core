Instance: FRSectionLaboratorySubChapterLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMCRBIOSousChapitre → FRCDACRBIOSousChapitre → FRCompositionDocument.section:avec-sous-sections.section"
Description: "Mapping des éléments du modèle métier FRLMCRBIOSousChapitre vers la section CDA FRCDACRBIOSousChapitre, puis vers le profil FHIR FRCompositionDocument.section:avec-sous-sections.section."
* title = "Mapping Métier/CDA/FHIR : \"Sous-chapitre de BIO\""
* status = #draft

// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-crbio-sous-chapitre"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-crbio-sous-chapitre"
// Élément racine
* group[=].element[+].code = #FRLMCRBIOSousChapitre
* group[=].element[=].target.code = #FRCDACRBIOSousChapitre
* group[=].element[=].target.equivalence = #equivalent  
// code de la section
* group[=].element[+].code = #FRLMCRBIOSousChapitre.codeSection
* group[=].element[=].target.code = #FRCDACRBIOSousChapitre.code
* group[=].element[=].target.equivalence = #equivalent
// Description narrative de la section
* group[=].element[+].code = #FRLMCRBIOSousChapitre.blocNarratif
* group[=].element[=].target.code = #FRCDACRBIOSousChapitre.text
* group[=].element[=].target.equivalence = #equivalent
// titre de la section
* group[=].element[+].code = #FRLMCRBIOSousChapitre.titreSection
* group[=].element[=].target.code = #FRCDACRBIOSousChapitre.title
* group[=].element[=].target.equivalence = #equivalent
// résultat d'examen de BIO
* group[=].element[+].code = #FRLMCRBIOSousChapitre.entree.resultatsExamensBiologieMedicale
* group[=].element[=].target.code = #FRCDACRBIOSousChapitre.entry:FRCDAResultatsExamensDeBiologieMedicale
* group[=].element[=].target.equivalence = #equivalent

// Groupe Mapping 2 : CDA → FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-crbio-sous-chapitre"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-composition-document"
// Élément racine
* group[=].element[+].code = #FRCDACRBIOSousChapitre
* group[=].element[=].target.code = #FRCompositionDocument.section:avec-sous-sections.section
* group[=].element[=].target.equivalence = #equivalent
// code de la section
* group[=].element[+].code = #FRCDACRBIOSousChapitre.code
* group[=].element[=].target.code = #FRCompositionDocument.section:avec-sous-sections.section.code
* group[=].element[=].target.equivalence = #equivalent
// Description narrative de la section
* group[=].element[+].code = #FRCDACRBIOSousChapitre.text
* group[=].element[=].target.code = #FRCompositionDocument.section:avec-sous-sections.section.text
* group[=].element[=].target.equivalence = #equivalent
// titre de la section
* group[=].element[+].code = #FRCDACRBIOSousChapitre.title
* group[=].element[=].target.code = #FRCompositionDocument.section:avec-sous-sections.section.title
* group[=].element[=].target.equivalence = #equivalent
// résultat d'examen de BIO
* group[=].element[+].code = #FRCDACRBIOSousChapitre.entry:FRCDAResultatsExamensDeBiologieMedicale
* group[=].element[=].target.code = #FRCompositionDocument.section:avec-sous-sections.section:sans-sous-sections.entry:FRObservationLaboratoryReportResultsDocument
* group[=].element[=].target.equivalence = #equivalent
