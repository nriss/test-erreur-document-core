Instance: FRPregnancyHistoryLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMHistoriqueGrossesse → FRCDAHistoriqueDeLaGrossesse → FRPregnancyHistoryDocument"
Description: "Mapping des éléments du modèle métier FRLMHistoriqueGrossesse vers le profil CDA FRCDAHistoriqueDeLaGrossesse, puis vers le profil FHIR FRPregnancyHistoryDocument."
* title = "Mapping Métier/CDA/FHIR : \"Historique de la grossesse\""
* status = #draft
// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-historique-grossesse"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-historique-de-la-grossesse"
// Élément racine
* group[=].element[+].code = #FRLMHistoriqueGrossesse
* group[=].element[=].target.code = #FRCDAHistoriqueDeLaGrossesse
* group[=].element[=].target.equivalence = #equivalent
// Identifiant de l'entrée
* group[=].element[+].code = #FRLMHistoriqueGrossesse.identifiant
* group[=].element[=].target.code = #FRCDAHistoriqueDeLaGrossesse.id
* group[=].element[=].target.equivalence = #equivalent
// Code de l'entrée
* group[=].element[+].code = #FRLMHistoriqueGrossesse.code
* group[=].element[=].target.code = #FRCDAHistoriqueDeLaGrossesse.code
* group[=].element[=].target.equivalence = #equivalent
// Statut de l’entrée
* group[=].element[+].code = #FRLMHistoriqueGrossesse.statut
* group[=].element[=].target.code = #FRCDAHistoriqueDeLaGrossesse.statusCode
* group[=].element[=].target.equivalence = #equivalent
// Période de la grossesse
* group[=].element[+].code = #FRLMHistoriqueGrossesse.periodeGrossesse
* group[=].element[=].target.code = #FRCDAHistoriqueDeLaGrossesse.effectiveTime
* group[=].element[=].target.equivalence = #equivalent  
// informations relatives à la grossesse 
* group[=].element[+].code = #FRLMHistoriqueGrossesse.choice[x]
* group[=].element[=].target.code = #FRCDAHistoriqueDeLaGrossesse.entryRelationship:frObservationSurLaGrossesse
* group[=].element[=].target.equivalence = #equivalent
// informations relatives à une naissance
* group[=].element[+].code = #FRLMHistoriqueGrossesse.choice[x]
* group[=].element[=].target.code = #FRCDAHistoriqueDeLaGrossesse.entryRelationship:frNaissance
* group[=].element[=].target.equivalence = #equivalent

// Groupe Mapping 2 : CDA → FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-historique-de-la-grossesse"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-pregnancy-history-document"
// Élément racine
* group[=].element[+].code = #FRCDAHistoriqueDeLaGrossesse
* group[=].element[=].target.code = #FRPregnancyHistoryDocument
* group[=].element[=].target.equivalence = #equivalent
// Identifiant de l'entrée  
* group[=].element[+].code = #FRCDAHistoriqueDeLaGrossesse.id
* group[=].element[=].target.code = #FRPregnancyHistoryDocument.identifier
* group[=].element[=].target.equivalence = #equivalent
// Code de l'entrée
* group[=].element[+].code = #FRCDAHistoriqueDeLaGrossesse.code
* group[=].element[=].target.code = #FRPregnancyHistoryDocument.code
* group[=].element[=].target.equivalence = #equivalent
// Période de la grossesse
* group[=].element[+].code = #FRCDAHistoriqueDeLaGrossesse.effectiveTime
* group[=].element[=].target.code = #FRPregnancyHistoryDocument.date
* group[=].element[=].target.equivalence = #equivalent
// informations relatives à la grossesse 
* group[=].element[+].code = #FRCDAHistoriqueDeLaGrossesse.entryRelationship:frObservationSurLaGrossesse
* group[=].element[=].target.code = #FRPregnancyHistoryDocument.entry.item:FRObservationPregnancyDocument
* group[=].element[=].target.equivalence = #equivalent
// informations relatives à une naissance
* group[=].element[+].code = #FRCDAHistoriqueDeLaGrossesse.entryRelationship:frNaissance
* group[=].element[=].target.code = #FRPregnancyHistoryDocument.entry.item:FRObservationBirthEventDocument
* group[=].element[=].target.equivalence = #equivalent