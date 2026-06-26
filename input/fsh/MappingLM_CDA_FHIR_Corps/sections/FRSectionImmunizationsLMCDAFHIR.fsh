Instance: FRSectionImmunizationsLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMVaccinations → FRCDAVaccinations → FRCompositionDocument.section:immunizations"
Description: "Mapping des éléments du modèle métier FRLMVaccinations vers la section CDA FRCDAVaccinations, puis vers la section FHIR FRCompositionDocument.section:immunizations."
* title = "Mapping Métier/CDA/FHIR : \"Vaccinations\""
* status = #draft

// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-vaccinations"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-vaccinations"
// Élément racine
* group[=].element[+].code = #FRLMVaccinations
* group[=].element[=].target.code = #FRCDAVaccinations  
* group[=].element[=].target.equivalence = #equivalent
// code de la section
* group[=].element[+].code = #FRLMVaccinations.codeSection
* group[=].element[=].target.code = #FRCDAVaccinations.code
* group[=].element[=].target.equivalence = #equivalent
// Titre de la section
* group[=].element[+].code = #FRLMVaccinations.titreSection
* group[=].element[=].target.code = #FRCDAVaccinations.title
* group[=].element[=].target.equivalence = #equivalent
// Description narrative de la section
* group[=].element[+].code = #FRLMVaccinations.blocNarratif
* group[=].element[=].target.code = #FRCDAVaccinations.text
* group[=].element[=].target.equivalence = #equivalent
// entrée de la section
* group[=].element[+].code = #FRLMVaccinations.entree.vaccinations
* group[=].element[=].target.code = #FRCDAVaccinations.entry.FRCDAVaccination
* group[=].element[=].target.equivalence = #equivalent

// Groupe Mapping 2 : CDA → FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-vaccinations"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-composition-document"
// Élément racine
* group[=].element[+].code = #FRCDAVaccinations  
* group[=].element[=].target.code = #FRCompositionDocument.section:immunizations
* group[=].element[=].target.equivalence = #equivalent
// code de la section
* group[=].element[+].code = #FRCDAVaccinations.code
* group[=].element[=].target.code = #FRCompositionDocument.section:immunizations.code
* group[=].element[=].target.equivalence = #equivalent
// Titre de la section
* group[=].element[+].code = #FRCDAVaccinations.title
* group[=].element[=].target.code = #FRCompositionDocument.section:immunizations.title
* group[=].element[=].target.equivalence = #equivalent
// Description narrative de la section
* group[=].element[+].code = #FRCDAVaccinations.text    
* group[=].element[=].target.code = #FRCompositionDocument.section:immunizations.text
* group[=].element[=].target.equivalence = #equivalent
// entrée de la section
* group[=].element[+].code = #FRCDAVaccinations.entry.FRCDAVaccination
* group[=].element[=].target.code = #FRCompositionDocument.section:immunizations.entry:FRImmunizationDocument
* group[=].element[=].target.equivalence = #equivalent