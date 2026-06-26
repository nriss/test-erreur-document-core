Instance: FRSectionMedicationDispenseLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMDispensationMedicaments → FRCDADispensationMedicaments → FRMedicationDispenseDocument"
Description: "Mapping des éléments du modèle métier FRLMDispensationMedicaments vers la section CDA FRCDADispensationMedicaments, puis vers la section FHIR FRCompositionDocument.section:medication-dispense."
* title = "Mapping Métier/CDA/FHIR : \"Dispensation de médicaments\""
* status = #draft

// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-dispensation-medicaments"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-dispensation-medicaments"
// Élément racine
* group[=].element[+].code = #FRLMDispensationMedicaments
* group[=].element[=].target.code = #FRCDADispensationMedicaments
* group[=].element[=].target.equivalence = #equivalent
// code de la section
* group[=].element[+].code = #FRLMDispensationMedicaments.codeSection
* group[=].element[=].target.code = #FRCDADispensationMedicaments.code
* group[=].element[=].target.equivalence = #equivalent
// Description narrative de la section
* group[=].element[+].code = #FRLMDispensationMedicaments.blocNarratif
* group[=].element[=].target.code = #FRCDADispensationMedicaments.text
* group[=].element[=].target.equivalence = #equivalent
// Titre de la section
* group[=].element[+].code = #FRLMDispensationMedicaments.titreSection
* group[=].element[=].target.code = #FRCDADispensationMedicaments.title
* group[=].element[=].target.equivalence = #equivalent
// entrées de la section
* group[=].element[+].code = #FRLMDispensationMedicaments.entree.traitementDispense
* group[=].element[=].target.code = #FRCDADispensationMedicaments.entry.FRCDATraitementDispense
* group[=].element[=].target.equivalence = #equivalent

// Groupe Mapping 2 : CDA → FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-dispensation-medicaments"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-composition-document"
// Élément racine
* group[=].element[+].code = #FRCDADispensationMedicaments  
* group[=].element[=].target.code = #FRCompositionDocument.section:medication-dispense
* group[=].element[=].target.equivalence = #equivalent
// code de la section
* group[=].element[+].code = #FRCDADispensationMedicaments.code
* group[=].element[=].target.code = #FRCompositionDocument.section:medication-dispense.code
* group[=].element[=].target.equivalence = #equivalent
// Description narrative de la section
* group[=].element[+].code = #FRCDADispensationMedicaments.text
* group[=].element[=].target.code = #FRCompositionDocument.section:medication-dispense.text
* group[=].element[=].target.equivalence = #equivalent
// Titre de la section
* group[=].element[+].code = #FRCDADispensationMedicaments.title
* group[=].element[=].target.code = #FRCompositionDocument.section:medication-dispense.title
* group[=].element[=].target.equivalence = #equivalent
// entrées de la section
* group[=].element[+].code = #FRCDADispensationMedicaments.entry.FRCDATraitementDispense
* group[=].element[=].target.code = #FRCompositionDocument.section:medication-dispense.entry:FRMedicationDispenseDocument
* group[=].element[=].target.equivalence = #equivalent