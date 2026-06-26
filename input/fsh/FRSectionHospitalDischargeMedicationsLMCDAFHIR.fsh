Instance: FRSectionHospitalDischargeMedicationsLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMTraitementSortie → FRCDATraitementsALaSortie → FRCompositionDocument.section:hospitalDischargeMedications"
Description: "Mapping des éléments du modèle métier FRLMTraitementSortie vers la section CDA FRCDATraitementsALaSortie, puis vers la section FHIR FRCompositionDocument.section:hospitalDischargeMedications."
* title = "Mapping Métier/CDA/FHIR : \"Traitements à la sortie\""
* status = #draft

// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-traitement-sortie"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-traitements-a-la-sortie"
// Élément racine
* group[=].element[+].code = #FRLMTraitementSortie
* group[=].element[=].target.code = #FRCDATraitementsALaSortie
* group[=].element[=].target.equivalence = #equivalent
// code de la section
* group[=].element[+].code = #FRLMTraitementSortie.codeSection
* group[=].element[=].target.code = #FRCDATraitementsALaSortie.code
* group[=].element[=].target.equivalence = #equivalent
// Titre de la section
* group[=].element[+].code = #FRLMTraitementSortie.titreSection
* group[=].element[=].target.code = #FRCDATraitementsALaSortie.title
* group[=].element[=].target.equivalence = #equivalent
// Description narrative de la section
* group[=].element[+].code = #FRLMTraitementSortie.blocNarratif
* group[=].element[=].target.code = #FRCDATraitementsALaSortie.text
* group[=].element[=].target.equivalence = #equivalent
// entrée de la section
* group[=].element[+].code = #FRLMTraitementSortie.entree.traitementSortie
* group[=].element[=].target.code = #FRCDATraitementsALaSortie.entry.FRCDATraitement
* group[=].element[=].target.equivalence = #equivalent

// Groupe Mapping 2 : CDA → FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-traitements-a-la-sortie"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-composition-document"
// Élément racine
* group[=].element[+].code = #FRCDATraitementsALaSortie  
* group[=].element[=].target.code = #FRCompositionDocument.section:hospitalDischargeMedications
* group[=].element[=].target.equivalence = #equivalent
// code de la section
* group[=].element[+].code = #FRCDATraitementsALaSortie.code
* group[=].element[=].target.code = #FRCompositionDocument.section:hospitalDischargeMedications.code
* group[=].element[=].target.equivalence = #equivalent  
// Titre de la section
* group[=].element[+].code = #FRCDATraitementsALaSortie.title
* group[=].element[=].target.code = #FRCompositionDocument.section:hospitalDischargeMedications.title
* group[=].element[=].target.equivalence = #equivalent
// Description narrative de la section
* group[=].element[+].code = #FRCDATraitementsALaSortie.text
* group[=].element[=].target.code = #FRCompositionDocument.section:hospitalDischargeMedications.text
* group[=].element[=].target.equivalence = #equivalent
// entrée de la section
* group[=].element[+].code = #FRCDATraitementsALaSortie.entry.FRCDATraitement
* group[=].element[=].target.code = #FRCompositionDocument.section:hospitalDischargeMedications.entry:FRMedicationAdministrationDocument
* group[=].element[=].target.equivalence = #equivalent