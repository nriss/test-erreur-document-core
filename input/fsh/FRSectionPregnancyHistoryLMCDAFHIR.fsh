Instance: FRSectionPregnancyHistoryLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMHistoriqueDesGrossesses → FRCDAHistoriqueDesGrossesses → FRCompositionDocument.section:pregnancyHistory"
Description: "Mapping des éléments du modèle métier FRLMHistoriqueDesGrossesses vers la section CDA FRCDAHistoriqueDesGrossesses, puis vers la section FHIR FRCompositionDocument.section:pregnancyHistory."
* title = "Mapping Métier/CDA/FHIR : \"Historique des grossesses\""
* status = #draft

// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-historique-des-grossesses"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-historique-des-grossesses"
// élément racine
* group[=].element[+].code = #FRLMHistoriqueDesGrossesses
* group[=].element[=].target[+].code = #FRCDAHistoriqueDesGrossesses
* group[=].element[=].target[=].equivalence = #equivalent
// code de la section
* group[=].element[+].code = #FRLMHistoriqueDesGrossesses.codeSection
* group[=].element[=].target[+].code = #FRCDAHistoriqueDesGrossesses.code
* group[=].element[=].target[=].equivalence = #equivalent
// titre de la section
* group[=].element[+].code = #FRLMHistoriqueDesGrossesses.titreSection
* group[=].element[=].target[+].code = #FRCDAHistoriqueDesGrossesses.title
* group[=].element[=].target[=].equivalence = #equivalent
// bloc narratif de la section
* group[=].element[+].code = #FRLMHistoriqueDesGrossesses.blocNarratif
* group[=].element[=].target[+].code = #FRCDAHistoriqueDesGrossesses.text
* group[=].element[=].target[=].equivalence = #equivalent
// Entrée Observation sur la grossesse ou Entrée Historique des grossesses
* group[=].element[+].code = #FRLMHistoriqueDesGrossesses.entree[x]:FRLMObservationGrossesse
* group[=].element[=].target[+].code = #FRCDAHistoriqueDesGrossesses.entry:FRCDAObservationSurLaGrossesse
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[+].code = #FRLMHistoriqueDesGrossesses.entree[x]:FRLMHistoriqueGrossesse
* group[=].element[=].target[+].code = #FRCDAHistoriqueDesGrossesses.entry:FRCDAHistoriqueDeLaGrossesse
* group[=].element[=].target[=].equivalence = #equivalent

// Groupe Mapping 2 : CDA → FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-historique-des-grossesses"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-composition-document"
// élément racine
* group[=].element[+].code = #FRCDAHistoriqueDesGrossesses
* group[=].element[=].target[+].code = #FRCompositionDocument.section:pregnancyHistory
* group[=].element[=].target[=].equivalence = #equivalent
// code de la section
* group[=].element[+].code = #FRCDAHistoriqueDesGrossesses.code
* group[=].element[=].target[+].code = #FRCompositionDocument.section:pregnancyHistory.code
* group[=].element[=].target[=].equivalence = #equivalent
// titre de la section
* group[=].element[+].code = #FRCDAHistoriqueDesGrossesses.title
* group[=].element[=].target[+].code = #FRCompositionDocument.section:pregnancyHistory.title
* group[=].element[=].target[=].equivalence = #equivalent
// bloc narratif de la section
* group[=].element[+].code = #FRCDAHistoriqueDesGrossesses.text
* group[=].element[=].target[+].code = #FRCompositionDocument.section:pregnancyHistory.text
* group[=].element[=].target[=].equivalence = #equivalent
// Entrée Observation sur la grossesse
* group[=].element[+].code = #FRCDAHistoriqueDesGrossesses.entry:FRCDAObservationSurLaGrossesse
* group[=].element[=].target[+].code = #FRCompositionDocument.section:pregnancyHistory.entry:FRObservationPregnancyDocument
* group[=].element[=].target[=].equivalence = #equivalent
// Entrée Historique des grossesses
* group[=].element[+].code = #FRCDAHistoriqueDesGrossesses.entry:FRCDAHistoriqueDeLaGrossesse
* group[=].element[=].target[+].code = #FRCompositionDocument.section:pregnancyHistory.entry:FRObservationPregnancyHistoryDocument
* group[=].element[=].target[=].equivalence = #equivalent