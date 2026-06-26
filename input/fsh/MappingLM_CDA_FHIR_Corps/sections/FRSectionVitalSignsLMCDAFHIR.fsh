Instance: FRSectionVitalSignsLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMSignesVitaux → FRCDASignesVitaux → FRCompositionDocument.section"
Description: "Mapping des éléments du modèle métier FRLMSignesVitaux vers la section CDA FRCDASignesVitaux, puis vers le profil FHIR FRCompositionDocument.section:SignesVitaux."
* title = "Mapping Métier/CDA/FHIR : Signes vitaux"
* status = #draft

// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-signes-vitaux"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-signes-vitaux"
// Élément racine
* group[=].element[+].code = #FRLMSignesVitaux
* group[=].element[=].target.code = #FRCDASignesVitaux
* group[=].element[=].target.equivalence = #equivalent
// titreSection 
* group[=].element[+].code = #FRLMSignesVitaux.titreSection
* group[=].element[=].target.code = #FRCDASignesVitaux.title
* group[=].element[=].target.equivalence = #equivalent
// Description de la section
* group[=].element[+].code = #FRLMSignesVitaux.blocNarratif
* group[=].element[=].target.code = #FRCDASignesVitaux.text
* group[=].element[=].target.equivalence = #equivalent
// Entrée Signes vitaux
* group[=].element[+].code = #FRLMSignesVitaux.entree.signesVitauxEntry:FRLMSigneVital
* group[=].element[=].target.code = #FRCDASignesVitaux.entry:FRCDASignesVitauxEntry
* group[=].element[=].target.equivalence = #equivalent

// Groupe Mapping 2 : CDA → FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-signes-vitaux"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-composition-document"
// Élément racine
* group[=].element[+].code = #FRCDASignesVitaux
* group[=].element[=].target.code = #FRCompositionDocument.section:VitalSigns
* group[=].element[=].target.equivalence = #equivalent
// titreSection
* group[=].element[+].code = #FRCDASignesVitaux.title
* group[=].element[=].target.code = #FRCompositionDocument.section:VitalSigns.title
* group[=].element[=].target.equivalence = #equivalent
// Description de la section
* group[=].element[+].code = #FRCDASignesVitaux.text
* group[=].element[=].target.code = #FRCompositionDocument.section:VitalSigns.text
* group[=].element[=].target.equivalence = #equivalent
// Entrée Signes vitaux
* group[=].element[+].code = #FRCDASignesVitaux.entry:FRCDASignesVitauxEntry
* group[=].element[=].target.code = #FRCompositionDocument.section:VitalSigns.entry:FRObservationVitalSignsDocument
* group[=].element[=].target.equivalence = #equivalent
