Instance: FRSectionAllergyIntoleranceLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping Métier/CDA/FHIR : Allergies et intolérances"
Description: "Mapping des éléments du modèle métier FRLMAllergiesEtHypersensibilites vers la section CDA FRCDAAllergiesEtHypersensibilites, puis vers le profil FHIR FRCompositionDocument.section:AllergyIntolerance."
* title = "Mapping Métier/CDA/FHIR : \"Allergies et intolérances\""
* status = #draft

// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-allergies-et-hypersensibilites"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-allergies-et-hypersensibilites"
// Élément racine
* group[=].element[+].code = #FRLMAllergiesEtHypersensibilites
* group[=].element[=].target.code = #FRCDAAllergiesEtHypersensibilites
* group[=].element[=].target.equivalence = #equivalent
// Code de la section
* group[=].element[+].code = #FRLMAllergiesEtHypersensibilites.codeSection
* group[=].element[=].target.code = #FRCDAAllergiesEtHypersensibilites.code
* group[=].element[=].target.equivalence = #equivalent
// Titre de la section
* group[=].element[+].code = #FRLMAllergiesEtHypersensibilites.titreSection
* group[=].element[=].target.code = #FRCDAAllergiesEtHypersensibilites.title
* group[=].element[=].target.equivalence = #equivalent
// Description narrative de la section
* group[=].element[+].code = #FRLMAllergiesEtHypersensibilites.blocNarratif
* group[=].element[=].target.code = #FRCDAAllergiesEtHypersensibilites.text
* group[=].element[=].target.equivalence = #equivalent
// Entrée : Allergie ou intolérance
* group[=].element[+].code = #FRLMAllergiesEtHypersensibilites.entree.allergieOuHypersensibilite
* group[=].element[=].target.code = #FRCDAAllergiesEtHypersensibilites.entry:FRCDAListeDesAllergiesEtHypersensibilites
* group[=].element[=].target.equivalence = #equivalent

// Groupe Mapping 2 : CDA → FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-allergies-et-hypersensibilites"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-composition-document"
// Élément racine
* group[=].element[+].code = #FRCDAAllergiesEtHypersensibilites
* group[=].element[=].target.code = #FRCompositionDocument.section:AllergyIntolerance
* group[=].element[=].target.equivalence = #equivalent
// Code de la section
* group[=].element[+].code = #FRCDAAllergiesEtHypersensibilites.code
* group[=].element[=].target.code = #FRCompositionDocument.section:AllergyIntolerance.code
* group[=].element[=].target.equivalence = #equivalent
// Titre de la section
* group[=].element[+].code = #FRCDAAllergiesEtHypersensibilites.title
* group[=].element[=].target.code = #FRCompositionDocument.section:AllergyIntolerance.title
* group[=].element[=].target.equivalence = #equivalent
// Description narrative de la section
* group[=].element[+].code = #FRCDAAllergiesEtHypersensibilites.text
* group[=].element[=].target.code = #FRCompositionDocument.section:AllergyIntolerance.text
* group[=].element[=].target.equivalence = #equivalent
// Entrée : Allergie ou intolérance
* group[=].element[+].code = #FRCDAAllergiesEtHypersensibilites.entry:FRCDAListeDesAllergiesEtHypersensibilites
* group[=].element[=].target.code = #FRCompositionDocument.section:AllergyIntolerance.entry:FRAllergyIntoleranceDocument
* group[=].element[=].target.equivalence = #equivalent