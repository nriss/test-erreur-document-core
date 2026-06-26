Instance: FRSectionLaboratoryChapterLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMCRBIOChapitre → FRCDACRBIOChapitre → FRCompositionDocument.section"
Description: "Mapping des éléments du modèle métier FRLMCRBIOChapitre vers la section CDA FRCDACRBIOChapitre, puis vers le profil FHIR FRCompositionDocument.section."
* title = "Mapping Métier/CDA/FHIR : \"Chapitre de BIO\""
* status = #draft

// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-crbio-chapitre"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-crbio-chapitre"
// Élément racine
* group[=].element[+].code = #FRLMCRBIOChapitre
* group[=].element[=].target.code = #FRCDACRBIOChapitre
* group[=].element[=].target.equivalence = #equivalent
// code de la section
* group[=].element[+].code = #FRLMCRBIOChapitre.code
* group[=].element[=].target.code = #FRCDACRBIOChapitre.code
* group[=].element[=].target.equivalence = #equivalent
// Description narrative de la section
* group[=].element[+].code = #FRLMCRBIOChapitre.blocNarratif
* group[=].element[=].target.code = #FRCDACRBIOChapitre.text
* group[=].element[=].target.equivalence = #equivalent
// titre de la section
* group[=].element[+].code = #FRLMCRBIOChapitre.titreSection
* group[=].element[=].target.code = #FRCDACRBIOChapitre.title
* group[=].element[=].target.equivalence = #equivalent
// résultat d'examen de BIO
* group[=].element[+].code = #FRLMCRBIOChapitre.choice[x]:FRLMResultatsExamensBiologieMedicale
* group[=].element[=].target.code = #FRCDACRBIOChapitre.entry:FRCDAResultatsExamensDeBiologieMedicale
* group[=].element[=].target.equivalence = #equivalent
// sous chapitre de BIO
* group[=].element[+].code = #FRLMCRBIOChapitre.choice[x]:FRLMCRBIOSousChapitre
* group[=].element[=].target.code = #FRCDACRBIOChapitre.component.section:FRCDACRBIOSousChapitre
* group[=].element[=].target.equivalence = #equivalent

// Groupe Mapping 2 : CDA → FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-crbio-chapitre"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-composition-document-section"
// Élément racine
* group[=].element[+].code = #FRCDACRBIOChapitre
* group[=].element[=].target.code = #FRCompositionDocument.section
* group[=].element[=].target.equivalence = #equivalent
// code de la section
* group[=].element[+].code = #FRCDACRBIOChapitre.code
* group[=].element[=].target.code = #FRCompositionDocument.section.code
* group[=].element[=].target.equivalence = #equivalent
// Description narrative de la section
* group[=].element[+].code = #FRCDACRBIOChapitre.text
* group[=].element[=].target.code = #FRCompositionDocument.section.text
* group[=].element[=].target.equivalence = #equivalent
// titre de la section
* group[=].element[+].code = #FRCDACRBIOChapitre.title
* group[=].element[=].target.code = #FRCompositionDocument.section.title
* group[=].element[=].target.equivalence = #equivalent
// résultat d'examen de BIO
* group[=].element[+].code = #FRCDACRBIOChapitre.entry:FRCDAResultatsExamensDeBiologieMedicale
* group[=].element[=].target.code = #FRCompositionDocument.section:sans-sous-sections.entry:FRObservationLaboratoryReportResultsDocument
* group[=].element[=].target.equivalence = #equivalent
// sous chapitre de BIO
* group[=].element[+].code = #FRCDACRBIOChapitre.component.section:FRCDACRBIOSousChapitre
* group[=].element[=].target.code = #FRCompositionDocument.section:avec-sous-sections.section
* group[=].element[=].target.equivalence = #equivalent