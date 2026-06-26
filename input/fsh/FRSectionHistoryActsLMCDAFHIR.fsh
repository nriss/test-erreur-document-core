Instance: FRSectionHistoryActsLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMHistoriqueDesActes → FRCDAHistoriqueDesActes → FRCompositionDocument.section:historyActs"
Description: "Mapping des éléments du modèle métier FRLMHistoriqueDesActes vers la section CDA FRCDAHistoriqueDesActes, puis vers la section FHIR FRCompositionDocument.section:historyActs."
* title = "Mapping Métier/CDA/FHIR : \"Historique des actes\""
* status = #draft

// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-historique-des-actes"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-historique-des-actes"
// élément racine
* group[=].element[+].code = #FRLMHistoriqueDesActes
* group[=].element[=].target[+].code = #FRCDAHistoriqueDesActes
* group[=].element[=].target[=].equivalence = #equivalent
// code de la section
* group[=].element[+].code = #FRLMHistoriqueDesActes.codeSection
* group[=].element[=].target[+].code = #FRCDAHistoriqueDesActes.code
* group[=].element[=].target[=].equivalence = #equivalent
// titre de la section
* group[=].element[+].code = #FRLMHistoriqueDesActes.titreSection
* group[=].element[=].target[+].code = #FRCDAHistoriqueDesActes.title
* group[=].element[=].target[=].equivalence = #equivalent
// bloc narratif de la section
* group[=].element[+].code = #FRLMHistoriqueDesActes.blocNarratif
* group[=].element[=].target[+].code = #FRCDAHistoriqueDesActes.text
* group[=].element[=].target[=].equivalence = #equivalent
// Entrée Acte
* group[=].element[+].code = #FRLMHistoriqueDesActes.entree.actes
* group[=].element[=].target[+].code = #FRCDAHistoriqueDesActes.entry:FRCDAActe
* group[=].element[=].target[=].equivalence = #equivalent
// Entrée Références externes
* group[=].element[+].code = #FRLMHistoriqueDesActes.entree.references
* group[=].element[=].target[+].code = #FRCDAHistoriqueDesActes.entry:FRCDAReferencesExternes
* group[=].element[=].target[=].equivalence = #equivalent

// Groupe Mapping 2 : CDA → FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-historique-des-actes"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-composition-document"
// élément racine
* group[=].element[+].code = #FRCDAHistoriqueDesActes
* group[=].element[=].target[+].code = #FRCompositionDocument.section:historyActs
* group[=].element[=].target[=].equivalence = #equivalent
// code de la section
* group[=].element[+].code = #FRCDAHistoriqueDesActes.code
* group[=].element[=].target[+].code = #FRCompositionDocument.section:historyActs.code
* group[=].element[=].target[=].equivalence = #equivalent
// titre de la section
* group[=].element[+].code = #FRCDAHistoriqueDesActes.title
* group[=].element[=].target[+].code = #FRCompositionDocument.section:historyActs.title
* group[=].element[=].target[=].equivalence = #equivalent
// bloc narratif de la section
* group[=].element[+].code = #FRCDAHistoriqueDesActes.text
* group[=].element[=].target[+].code = #FRCompositionDocument.section:historyActs.text
* group[=].element[=].target[=].equivalence = #equivalent
// Entrée Acte
* group[=].element[+].code = #FRCDAHistoriqueDesActes.entry:FRCDAActe
* group[=].element[=].target[+].code = #FRCompositionDocument.section:historyActs.entry:FRProcedureDocument
* group[=].element[=].target[=].equivalence = #equivalent
// Entrée Références externes
* group[=].element[+].code = #FRCDAHistoriqueDesActes.entry:FRCDAReferencesExternes
* group[=].element[=].target[+].code = #FRCompositionDocument.section:historyActs.entry:FRDocumentReferenceDocument
* group[=].element[=].target[=].equivalence = #equivalent