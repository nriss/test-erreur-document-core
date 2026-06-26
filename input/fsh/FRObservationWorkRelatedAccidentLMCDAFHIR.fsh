Instance: FRObservationWorkRelatedAccidentLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMEnRapportAvecAccidentTravail → FRCDAEnRapportAvecAccidentTravail → FRObservationWorkRelatedAccidentDocument"
Description: "Mapping des éléments du modèle métier FRLMEnRapportAvecAccidentTravail vers le profil CDA FRCDAEnRapportAvecAccidentTravail, puis vers le profil FHIR FRObservationWorkRelatedAccidentDocument."
* title = "Mapping Métier/CDA/FHIR : \"En rapport avec un accident travail\""
* status = #draft
// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-en-rapport-avec-accident-travail"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-en-rapport-avec-accident-travail"
// Élément racine
* group[=].element[+].code = #FRLMEnRapportAvecAccidentTravail
* group[=].element[=].target.code = #FRCDAEnRapportAvecAccidentTravail
* group[=].element[=].target.equivalence = #equivalent
// Identifiant de l'entrée
* group[=].element[+].code = #FRLMEnRapportAvecAccidentTravail.identifiant
* group[=].element[=].target.code = #FRCDAEnRapportAvecAccidentTravail.id
* group[=].element[=].target.equivalence = #equivalent
// Code de l'entrée
* group[=].element[+].code = #FRLMEnRapportAvecAccidentTravail.code
* group[=].element[=].target.code = #FRCDAEnRapportAvecAccidentTravail.code
* group[=].element[=].target.equivalence = #equivalent
// Description narrative
* group[=].element[+].code = #FRLMEnRapportAvecAccidentTravail.description
* group[=].element[=].target.code = #FRCDAEnRapportAvecAccidentTravail.text
* group[=].element[=].target.equivalence = #equivalent
// Statut de l'entrée
* group[=].element[+].code = #FRLMEnRapportAvecAccidentTravail.statut
* group[=].element[=].target.code = #FRCDAEnRapportAvecAccidentTravail.statusCode
* group[=].element[=].target.equivalence = #equivalent
// Horodatage de l'entrée
* group[=].element[+].code = #FRLMEnRapportAvecAccidentTravail.horodatage
* group[=].element[=].target.code = #FRCDAEnRapportAvecAccidentTravail.effectiveTime
* group[=].element[=].target.equivalence = #equivalent
// Résultat de l'observation
* group[=].element[+].code = #FRLMEnRapportAvecAccidentTravail.resultat
* group[=].element[=].target.code = #FRCDAEnRapportAvecAccidentTravail.value
* group[=].element[=].target.equivalence = #equivalent

// Groupe Mapping 2 : CDA → FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-en-rapport-avec-accident-travail"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-observation-work-related-accident-document"
// Élément racine
* group[=].element[+].code = #FRCDAEnRapportAvecAccidentTravail
* group[=].element[=].target.code = #FRObservationWorkRelatedAccidentDocument
* group[=].element[=].target.equivalence = #equivalent
// Identifiant de l'entrée
* group[=].element[+].code = #FRCDAEnRapportAvecAccidentTravail.id
* group[=].element[=].target.code = #FRObservationWorkRelatedAccidentDocument.identifier
* group[=].element[=].target.equivalence = #equivalent
// Code de l'entrée
* group[=].element[+].code = #FRCDAEnRapportAvecAccidentTravail.code
* group[=].element[=].target.code = #FRObservationWorkRelatedAccidentDocument.code
* group[=].element[=].target.equivalence = #equivalent
// Description narrative
* group[=].element[+].code = #FRCDAEnRapportAvecAccidentTravail.text
* group[=].element[=].target.code = #FRObservationWorkRelatedAccidentDocument.note
* group[=].element[=].target.equivalence = #equivalent
// Statut de l'entrée
* group[=].element[+].code = #FRCDAEnRapportAvecAccidentTravail.statusCode
* group[=].element[=].target.code = #FRObservationWorkRelatedAccidentDocument.status
* group[=].element[=].target.equivalence = #equivalent
// Horodatage de l'entrée
* group[=].element[+].code = #FRCDAEnRapportAvecAccidentTravail.effectiveTime
* group[=].element[=].target.code = #FRObservationWorkRelatedAccidentDocument.effectiveDateTime
* group[=].element[=].target.equivalence = #equivalent
// Résultat de l'observation
* group[=].element[+].code = #FRCDAEnRapportAvecAccidentTravail.value
* group[=].element[=].target.code = #FRObservationWorkRelatedAccidentDocument.valueBoolean
* group[=].element[=].target.equivalence = #equivalent