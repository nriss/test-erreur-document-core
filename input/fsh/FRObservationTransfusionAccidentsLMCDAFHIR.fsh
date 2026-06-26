Instance: FRObservationTransfusionAccidentsLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMAccidentsTransfusionnels → FRCDAAccidentsTransfusionnels → FRObservationTransfusionAccidentsDocument"
Description: "Mapping des éléments du modèle métier FRLMAccidentsTransfusionnels vers le profil CDA FRCDAAccidentsTransfusionnels, puis vers le profil FHIR FRObservationTransfusionAccidentsDocument."
* title = "Mapping Métier/CDA/FHIR : \"Accident transfusionnel\""
* status = #draft

// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-accidents-transfusionnels"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-accidents-transfusionnels"
// Élément racine
* group[=].element[+].code = #FRLMAccidentsTransfusionnels
* group[=].element[=].target.code = #FRCDAAccidentsTransfusionnels
* group[=].element[=].target.equivalence = #equivalent
// Identifiant de l’observation
* group[=].element[+].code = #FRLMAccidentsTransfusionnels.identifiant
* group[=].element[=].target.code = #FRCDAAccidentsTransfusionnels.id
* group[=].element[=].target.equivalence = #equivalent
// Code de l’observation
* group[=].element[+].code = #FRLMAccidentsTransfusionnels.code
* group[=].element[=].target.code = #FRCDAAccidentsTransfusionnels.code
* group[=].element[=].target.equivalence = #equivalent
// Description narrative de l’observation
* group[=].element[+].code = #FRLMAccidentsTransfusionnels.description
* group[=].element[=].target.code = #FRCDAAccidentsTransfusionnels.text
* group[=].element[=].target.equivalence = #equivalent
// Statut de l’observation
* group[=].element[+].code = #FRLMAccidentsTransfusionnels.statut
* group[=].element[=].target.code = #FRCDAAccidentsTransfusionnels.statusCode
* group[=].element[=].target.equivalence = #equivalent
// Date de l’observation
* group[=].element[+].code = #FRLMAccidentsTransfusionnels.date
* group[=].element[=].target.code = #FRCDAAccidentsTransfusionnels.effectiveTime
* group[=].element[=].target.equivalence = #equivalent
// Description sous forme textuelle de l'accident transfusionnel
* group[=].element[+].code = #FRLMAccidentsTransfusionnels.valeur
* group[=].element[=].target.code = #FRCDAAccidentsTransfusionnels.value
* group[=].element[=].target.equivalence = #equivalent
// Auteur
* group[=].element[+].code = #FRLMAccidentsTransfusionnels.auteur
* group[=].element[=].target.code = #FRCDAAccidentsTransfusionnels.author
* group[=].element[=].target.equivalence = #equivalent

// Groupe Mapping 2 : CDA → FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-accidents-transfusionnels"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-observation-transfusion-accidents-document"
// Élément racine
* group[=].element[+].code = #FRCDAAccidentsTransfusionnels
* group[=].element[=].target.code = #FRObservationTransfusionAccidentsDocument
* group[=].element[=].target.equivalence = #equivalent
// Identifiant de l’observation
* group[=].element[+].code = #FRCDAAccidentsTransfusionnels.id
* group[=].element[=].target.code = #FRObservationTransfusionAccidentsDocument.identifier
* group[=].element[=].target.equivalence = #equivalent
// Code de l’observation
* group[=].element[+].code = #FRCDAAccidentsTransfusionnels.code
* group[=].element[=].target.code = #FRObservationTransfusionAccidentsDocument.code
* group[=].element[=].target.equivalence = #equivalent
// Description narrative de l’observation
* group[=].element[+].code = #FRCDAAccidentsTransfusionnels.text
* group[=].element[=].target.code = #FRObservationTransfusionAccidentsDocument.note
* group[=].element[=].target.equivalence = #equivalent
// Statut de l’observation
* group[=].element[+].code = #FRCDAAccidentsTransfusionnels.statusCode
* group[=].element[=].target.code = #FRObservationTransfusionAccidentsDocument.status
* group[=].element[=].target.equivalence = #equivalent
// Date de l’observation
* group[=].element[+].code = #FRCDAAccidentsTransfusionnels.effectiveTime
* group[=].element[=].target.code = #FRObservationTransfusionAccidentsDocument.effectiveDateTime
* group[=].element[=].target.equivalence = #equivalent
// Description sous forme textuelle de l'accident transfusionnel
* group[=].element[+].code = #FRCDAAccidentsTransfusionnels.value
* group[=].element[=].target.code = #FRObservationTransfusionAccidentsDocument.valueString
* group[=].element[=].target.equivalence = #equivalent
// Auteur
* group[=].element[+].code = #FRCDAAccidentsTransfusionnels.author
* group[=].element[=].target.code = #FRObservationTransfusionAccidentsDocument.performer.extension:author
* group[=].element[=].target.equivalence = #equivalent