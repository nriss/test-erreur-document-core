Instance: FRObservationPregnancyHistoryLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMHistoriqueGrossesse → FRCDAHistoriqueDeLaGrossesse → FRObservationPregnancyHistoryDocument"
Description: "Mapping des éléments du modèle métier FRLMHistoriqueGrossesse vers le profil CDA FRCDAHistoriqueDeLaGrossesse, puis vers le profil FHIR FRObservationPregnancyHistoryDocument."
* title = "Mapping Métier/CDA/FHIR : \"Historique de la grossesse\""
* status = #draft
// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-historique-grossesse"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-historique-de-la-grossesse"
// Élément racine
* group[=].element[+].code = #FRLMHistoriqueGrossesse
* group[=].element[=].target.code = #FRCDAHistoriqueDeLaGrossesse
* group[=].element[=].target.equivalence = #equivalent
// identifiant
* group[=].element[+].code = #FRLMHistoriqueGrossesse.identifiant
* group[=].element[=].target.code = #FRCDAHistoriqueDeLaGrossesse.id
* group[=].element[=].target.equivalence = #equivalent
// code
* group[=].element[+].code = #FRLMHistoriqueGrossesse.code  
* group[=].element[=].target.code = #FRCDAHistoriqueDeLaGrossesse.code
* group[=].element[=].target.equivalence = #equivalent
// statut
* group[=].element[+].code = #FRLMHistoriqueGrossesse.statut
* group[=].element[=].target.code = #FRCDAHistoriqueDeLaGrossesse.statusCode
* group[=].element[=].target.equivalence = #equivalent
// periodeGrossesse
* group[=].element[+].code = #FRLMHistoriqueGrossesse.periodeGrossesse
* group[=].element[=].target.code = #FRCDAHistoriqueDeLaGrossesse.effectiveTime
* group[=].element[=].target.equivalence = #equivalent  
// informations relatives à une naissance
* group[=].element[+].code = #FRLMHistoriqueGrossesse.choice:FRLMNaissance
* group[=].element[=].target.code = #FRCDAHistoriqueDeLaGrossesse.entryRelationship:frNaissance
* group[=].element[=].target.equivalence = #equivalent
// informations relatives à la grossesse
* group[=].element[+].code = #FRLMHistoriqueGrossesse.choice:FRLMObservationGrossesse
* group[=].element[=].target.code = #FRCDAHistoriqueDeLaGrossesse.entryRelationship:frObservationSurLaGrossesse
* group[=].element[=].target.equivalence = #equivalent

// Groupe Mapping 2 : CDA → FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-historique-de-la-grossesse"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-observation-pregnancy-history-document"
// Identifiant
* group[=].element[+].code = #FRCDAHistoriqueDeLaGrossesse.id
* group[=].element[=].target.code = #FRObservationPregnancyHistoryDocument.identifier
* group[=].element[=].target.equivalence = #equivalent
// Code
* group[=].element[+].code = #FRCDAHistoriqueDeLaGrossesse.code
* group[=].element[=].target.code = #FRObservationPregnancyHistoryDocument.code
* group[=].element[=].target.equivalence = #equivalent
// Statut
* group[=].element[+].code = #FRCDAHistoriqueDeLaGrossesse.statusCode
* group[=].element[=].target.code = #FRObservationPregnancyHistoryDocument.status
* group[=].element[=].target.equivalence = #equivalent
// Periode de la grossesse
* group[=].element[+].code = #FRCDAHistoriqueDeLaGrossesse.effectiveTime
* group[=].element[=].target.code = #FRObservationPregnancyHistoryDocument.effectivePeriod
* group[=].element[=].target.equivalence = #equivalent
// Informations relatives à une naissance
* group[=].element[+].code = #FRCDAHistoriqueDeLaGrossesse.entryRelationship:frNaissance
* group[=].element[=].target.code = #FRObservationPregnancyHistoryDocument.hasMember:FRObservationBirthEventDocument
* group[=].element[=].target.equivalence = #equivalent
// Informations relatives à la grossesse
* group[=].element[+].code = #FRCDAHistoriqueDeLaGrossesse.entryRelationship:frObservationSurLaGrossesse
* group[=].element[=].target.code = #FRObservationPregnancyHistoryDocument.hasMember:FRObservationPregnancyDocument
* group[=].element[=].target.equivalence = #equivalent
