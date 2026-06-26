Instance: FRSectionAdverseEventLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMEffetsIndesirables → FRCDAEffetsIndesirables → FRCompositionDocument.section:adverseEvent"
Description: "Mapping des éléments du modèle métier FRLMEffetsIndesirables vers la section CDA FRCDAEffetsIndesirables, puis vers la section FHIR FRCompositionDocument.section:adverseEvent."
* title = "Mapping Métier/CDA/FHIR : \"Effets indésirables\""
* status = #draft
// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-effets-indesirables"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-effets-indesirables"
// élément racine
* group[=].element[+].code = #FRLMEffetsIndesirables
* group[=].element[=].target[+].code = #FRCDAEffetsIndesirables
* group[=].element[=].target[=].equivalence = #equivalent
// titre de la section
* group[=].element[+].code = #FRLMEffetsIndesirables.titreSection
* group[=].element[=].target[+].code = #FRCDAEffetsIndesirables.title
* group[=].element[=].target[=].equivalence = #equivalent
// bloc narratif de la section
* group[=].element[+].code = #FRLMEffetsIndesirables.blocNarratif
* group[=].element[=].target[+].code = #FRCDAEffetsIndesirables.text
* group[=].element[=].target[=].equivalence = #equivalent
// Entrée Effet indésirable
* group[=].element[+].code = #FRLMEffetsIndesirables.entree.effetIndesirable
* group[=].element[=].target[+].code = #FRCDAEffetsIndesirables.entry:FRCDAEffetIndesirable
* group[=].element[=].target[=].equivalence = #equivalent

// Groupe Mapping 2 : CDA → FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-effets-indesirables"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-composition-document"
// élément racine
* group[=].element[+].code = #FRCDAEffetsIndesirables
* group[=].element[=].target[+].code = #FRCompositionDocument.section:adverseEvent
* group[=].element[=].target[=].equivalence = #equivalent
// code de la section
* group[=].element[+].code = #FRCDAEffetsIndesirables.code
* group[=].element[=].target[+].code = #FRCompositionDocument.section:adverseEvent.code
* group[=].element[=].target[=].equivalence = #equivalent
// titre de la section
* group[=].element[+].code = #FRCDAEffetsIndesirables.title
* group[=].element[=].target[+].code = #FRCompositionDocument.section:adverseEvent.title
* group[=].element[=].target[=].equivalence = #equivalent
// bloc narratif de la section
* group[=].element[+].code = #FRCDAEffetsIndesrables.text
* group[=].element[=].target[+].code = #FRCompositionDocument.section:adverseEvent.text
* group[=].element[=].target[=].equivalence = #equivalent
// Entrée Effet indésirable
* group[=].element[+].code = #FRCDAEffetsIndesirables.entry:FRCDAEffetIndesirable
* group[=].element[=].target[+].code = #FRCompositionDocument.section:adverseEvent.entry:FRAdverseEventDocument
* group[=].element[=].target[=].equivalence = #equivalent
