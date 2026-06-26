Instance: FREncounterLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMRencontre → FRCDARencontre → FREncounterDocument"
Description: "Mapping des éléments du modèle métier FRLMRencontre vers le profil CDA FRCDARencontre, puis vers le profil FHIR FREncounterDocument."
* title = "Mapping Métier/CDA/FHIR : \"Encounter\""
* status = #draft
// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-rencontre"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-rencontre"
// Élément racine   
* group[=].element[+].code = #FRLMRencontre 
* group[=].element[=].target.code = #FRCDARencontre 
* group[=].element[=].target.equivalence = #equivalent
// Identifiant  
* group[=].element[+].code = #FRLMRencontre.identifiant 
* group[=].element[=].target.code = #FRCDARencontre.id
* group[=].element[=].target.equivalence = #equivalent
// typeRencontre
* group[=].element[+].code = #FRLMRencontre.typeRencontre
* group[=].element[=].target.code = #FRCDARencontre.code
* group[=].element[=].target.equivalence = #equivalent
// description
* group[=].element[+].code = #FRLMRencontre.description
* group[=].element[=].target.code = #FRCDARencontre.text
* group[=].element[=].target.equivalence = #equivalent
// date de la rencontre
* group[=].element[+].code = #FRLMRencontre.dateRencontre
* group[=].element[=].target.code = #FRCDARencontre.effectiveTime
* group[=].element[=].target.equivalence = #equivalent
// confirmation de la rencontre
* group[=].element[+].code = #FRLMRencontre.confirmationRencontre
* group[=].element[=].target.code = #FRCDARencontre.priorityCode
* group[=].element[=].target.equivalence = #equivalent
// exécutant
* group[=].element[+].code = #FRLMRencontre.executant
* group[=].element[=].target.code = #FRCDARencontre.performer
* group[=].element[=].target.equivalence = #equivalent
// auteur
* group[=].element[+].code = #FRLMRencontre.auteur
* group[=].element[=].target.code = #FRCDARencontre.author
* group[=].element[=].target.equivalence = #equivalent
// informateur
* group[=].element[+].code = #FRLMRencontre.informateur
* group[=].element[=].target.code = #FRCDARencontre.informant
* group[=].element[=].target.equivalence = #equivalent
// lieu d'exécution
* group[=].element[+].code = #FRLMRencontre.participant
* group[=].element[=].target.code = #FRCDARencontre.participant
* group[=].element[=].target.equivalence = #equivalent
// autre participant
* group[=].element[+].code = #FRLMRencontre.autreParticipant
* group[=].element[=].target.code = #FRCDARencontre.participant
* group[=].element[=].target.equivalence = #equivalent

// Groupe Mapping 2 : CDA → FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-rencontre"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-encounter-document"
// Élément racine   
* group[=].element[+].code = #FRCDARencontre
* group[=].element[=].target.code = #FREncounterDocument
* group[=].element[=].target.equivalence = #equivalent
// Statut de la rencontre
* group[=].element[+].code = #FRCDARencontre.moodCode
* group[=].element[=].target.code = #FREncounterDocument.status
* group[=].element[=].target.equivalence = #equivalent
// Identifiant  
* group[=].element[+].code = #FRCDARencontre.id 
* group[=].element[=].target.code = #FREncounterDocument.identifier
* group[=].element[=].target.equivalence = #equivalent
// typeRencontre
* group[=].element[+].code = #FRCDARencontre.code
* group[=].element[=].target.code = #FREncounterDocument.class
* group[=].element[=].target.equivalence = #equivalent
// description
* group[=].element[+].code = #FRCDARencontre.text
* group[=].element[=].target.code = #FREncounterDocument.class.text
* group[=].element[=].target.equivalence = #equivalent
// date de la rencontre
* group[=].element[+].code = #FRCDARencontre.effectiveTime
* group[=].element[=].target.code = #FREncounterDocument.period
* group[=].element[=].target.equivalence = #equivalent
// confirmation de la rencontre
* group[=].element[+].code = #FRCDARencontre.priorityCode
* group[=].element[=].target.code = #FREncounterDocument.priority
* group[=].element[=].target.equivalence = #equivalent
// Subject (patient) - pas de mapping car géré au niveau du document
// exécutant
* group[=].element[+].code = #FRCDARencontre.performer
* group[=].element[=].target.code = #FREncounterDocument.participant.individual.extension:executant
* group[=].element[=].target.equivalence = #equivalent
// auteur
* group[=].element[+].code = #FRCDARencontre.author
* group[=].element[=].target.code = #FREncounterDocument.participant.individual.extension:author
* group[=].element[=].target.equivalence = #equivalent
// informateur
* group[=].element[+].code = #FRCDARencontre.informant
* group[=].element[=].target.code = #FREncounterDocument.participant.individual.extension:informant
* group[=].element[=].target.equivalence = #equivalent
// lieu d'exécution
* group[=].element[+].code = #FRCDARencontre.participant
* group[=].element[=].target.code = #FREncounterDocument.location.location
* group[=].element[=].target.equivalence = #equivalent  
// autre participant
* group[=].element[+].code = #FRCDARencontre.participant    
* group[=].element[=].target.code = #FREncounterDocument.participant
* group[=].element[=].target.equivalence = #equivalent