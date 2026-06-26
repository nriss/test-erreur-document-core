Instance: FRSectionSocialHistoryLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMHabitusModeDeVie → FRCDAHabitusModeDeVieSection → FRCompositionDocument.section:socialHistory"
Description: "Mapping des éléments du modèle métier FRLMHabitusModeDeVie vers la section CDA FRCDAHabitusModeDeVieSection, puis vers le profil FHIR FRCompositionDocument.section:socialHistory."
* title = "Mapping Métier/CDA/FHIR : Habitus et modes de vie"
* status = #draft
// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-habitus-mode-de-vie"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-habitus-mode-de-vie-section"
// Élément racine
* group[=].element[+].code = #FRLMHabitusModeDeVie
* group[=].element[=].target.code = #FRCDAHabitusModeDeVieSection
* group[=].element[=].target.equivalence = #equivalent
// code de la section
* group[=].element[+].code = #FRLMHabitusModeDeVie.codeSection
* group[=].element[=].target.code = #FRCDAHabitusModeDeVieSection.code
* group[=].element[=].target.equivalence = #equivalent
// titre de la section
* group[=].element[+].code = #FRLMHabitusModeDeVie.titreSection
* group[=].element[=].target.code = #FRCDAHabitusModeDeVieSection.title
* group[=].element[=].target.equivalence = #equivalent
// bloc narratif
* group[=].element[+].code = #FRLMHabitusModeDeVie.blocNarratif
* group[=].element[=].target.code = #FRCDAHabitusModeDeVieSection.text
* group[=].element[=].target.equivalence = #equivalent
// entrées Habitus, Mode de vie
* group[=].element[+].code = #FRLMHabitusModeDeVie.entree.habitusModeDeVieEntry
* group[=].element[=].target.code = #FRCDAHabitusModeDeVieSection.entry:FRCDAHabitusModeDeVie
* group[=].element[=].target.equivalence = #equivalent

// Groupe Mapping 2 : CDA → FHIR CompositionDocument.section:socialHistory
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-habitus-mode-de-vie-section"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-composition-document"
// Élément racine
* group[=].element[+].code = #FRCDAHabitusModeDeVieSection
* group[=].element[=].target.code = #FRCompositionDocument.section:socialHistory
* group[=].element[=].target.equivalence = #equivalent
// Code de la section
* group[=].element[+].code = #FRCDAHabitusModeDeVieSection.code
* group[=].element[=].target.code = #FRCompositionDocument.section:socialHistory.code
* group[=].element[=].target.equivalence = #equivalent
// Titre de la section
* group[=].element[+].code = #FRCDAHabitusModeDeVieSection.title
* group[=].element[=].target.code = #FRCompositionDocument.section:socialHistory.title
* group[=].element[=].target.equivalence = #equivalent
// Bloc narratif
* group[=].element[+].code = #FRCDAHabitusModeDeVieSection.text
* group[=].element[=].target.code = #FRCompositionDocument.section:socialHistory.text
* group[=].element[=].target.equivalence = #equivalent
// Entrées Habitus, Mode de vie
* group[=].element[+].code = #FRCDAHabitusModeDeVieSection.entry:FRCDAHabitusModeDeVie
* group[=].element[=].target.code = #FRCompositionDocument.section:socialHistory.entry:FRObservationSocialHistoryDocument
* group[=].element[=].target.equivalence = #equivalent