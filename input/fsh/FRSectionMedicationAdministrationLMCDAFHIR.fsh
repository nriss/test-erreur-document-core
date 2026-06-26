Instance: FRSectionMedicationAdministrationLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMTraitementsAdministres → FRCDATraitementsAdministres → FRCompositionDocument.section:medicationAdministration"
Description: "Mapping des éléments du modèle métier FRLMTraitementsAdministres vers la section CDA FRCDATraitementsAdministres, puis vers la section FHIR FRCompositionDocument.section:medicationAdministration."
* title = "Mapping Métier/CDA/FHIR : \"Traitements administrés\""
* status = #draft

// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-traitements-administres"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-traitements-administres"
// Élément racine
* group[=].element[+].code = #FRLMTraitementsAdministres
* group[=].element[=].target.code = #FRCDATraitementsAdministres
* group[=].element[=].target.equivalence = #equivalent
// code de la section
* group[=].element[+].code = #FRLMTraitementsAdministres.codeSection
* group[=].element[=].target.code = #FRCDATraitementsAdministres.code
* group[=].element[=].target.equivalence = #equivalent
// Titre de la section
* group[=].element[+].code = #FRLMTraitementsAdministres.titreSection
* group[=].element[=].target.code = #FRCDATraitementsAdministres.title
* group[=].element[=].target.equivalence = #equivalent
// Description narrative de la section
* group[=].element[+].code = #FRLMTraitementsAdministres.blocNarratif
* group[=].element[=].target.code = #FRCDATraitementsAdministres.text
* group[=].element[=].target.equivalence = #equivalent
// entrée de la section
* group[=].element[+].code = #FRLMTraitementsAdministres.entree.traitementAdministre
* group[=].element[=].target.code = #FRCDATraitementsAdministres.entry.FRCDATraitement
* group[=].element[=].target.equivalence = #equivalent

// Groupe Mapping 2 : CDA → FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-traitements-administres"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-composition-document"
// Élément racine
* group[=].element[+].code = #FRCDATraitementsAdministres  
* group[=].element[=].target.code = #FRCompositionDocument.section:medicationAdministration
* group[=].element[=].target.equivalence = #equivalent
// code de la section
* group[=].element[+].code = #FRCDATraitementsAdministres.code
* group[=].element[=].target.code = #FRCompositionDocument.section:medicationAdministration.code
* group[=].element[=].target.equivalence = #equivalent
// Titre de la section
* group[=].element[+].code = #FRCDATraitementsAdministres.title
* group[=].element[=].target.code = #FRCompositionDocument.section:medicationAdministration.title
* group[=].element[=].target.equivalence = #equivalent
// Description narrative de la section
* group[=].element[+].code = #FRCDATraitementsAdministres.text
* group[=].element[=].target.code = #FRCompositionDocument.section:medicationAdministration.text
* group[=].element[=].target.equivalence = #equivalent
// entrée de la section
* group[=].element[+].code = #FRCDATraitementsAdministres.entry.FRCDATraitement
* group[=].element[=].target.code = #FRCompositionDocument.section:medicationAdministration.entry:FRMedicationAdministrationDocument
* group[=].element[=].target.equivalence = #equivalent
