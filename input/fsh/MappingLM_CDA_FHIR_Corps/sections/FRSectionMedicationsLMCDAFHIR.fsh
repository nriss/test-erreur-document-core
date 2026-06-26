Instance: FRSectionMedicationsLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMTraitements → FRCDATraitements → FRCompositionDocument.section:medications"
Description: "Mapping des éléments du modèle métier FRLMTraitements vers la section CDA FRCDATraitements, puis vers la section FHIR FRCompositionDocument.section:medications."
* title = "Mapping Métier/CDA/FHIR : \"Traitements\""
* status = #draft

// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-traitements"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-traitements"
// élément racine
* group[=].element[+].code = #FRLMTraitements
* group[=].element[=].target[+].code = #FRCDATraitements
* group[=].element[=].target[=].equivalence = #equivalent
// code de la section
* group[=].element[+].code = #FRLMTraitements.codeSection
* group[=].element[=].target[+].code = #FRCDATraitements.code
* group[=].element[=].target[=].equivalence = #equivalent
// titre de la section
* group[=].element[+].code = #FRLMTraitements.titreSection
* group[=].element[=].target[+].code = #FRCDATraitements.title
* group[=].element[=].target[=].equivalence = #equivalent
// bloc narratif de la section
* group[=].element[+].code = #FRLMTraitements.blocNarratif
* group[=].element[=].target[+].code = #FRCDATraitements.text
* group[=].element[=].target[=].equivalence = #equivalent
// Entrée Traitement
* group[=].element[+].code = #FRLMTraitements.entree.traitements
* group[=].element[=].target[+].code = #FRCDATraitements.entry:FRCDATraitement
* group[=].element[=].target[=].equivalence = #equivalent

// Groupe Mapping 2 : CDA → FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-traitements"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-composition-document"
// élément racine
* group[=].element[+].code = #FRCDATraitements
* group[=].element[=].target[+].code = #FRCompositionDocument.section:medications
* group[=].element[=].target[=].equivalence = #equivalent
// code de la section
* group[=].element[+].code = #FRCDATraitements.code
* group[=].element[=].target[+].code = #FRCompositionDocument.section:medications.code
* group[=].element[=].target[=].equivalence = #equivalent
// titre de la section
* group[=].element[+].code = #FRCDATraitements.title
* group[=].element[=].target[+].code = #FRCompositionDocument.section:medications.title
* group[=].element[=].target[=].equivalence = #equivalent
// bloc narratif de la section
* group[=].element[+].code = #FRCDATraitements.text
* group[=].element[=].target[+].code = #FRCompositionDocument.section:medications.text
* group[=].element[=].target[=].equivalence = #equivalent
// Entrée Traitement
* group[=].element[+].code = #FRCDATraitements.entry:FRCDATraitement
* group[=].element[=].target[+].code = #FRCompositionDocument.section:medications.entry:FRMedicationAdministrationDocument
* group[=].element[=].target[=].equivalence = #equivalent