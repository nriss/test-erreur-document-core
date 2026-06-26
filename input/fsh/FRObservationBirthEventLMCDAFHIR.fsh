Instance: FRObservationBirthEventLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMNaissance → FRCDANaissance → FRObservationBirthEventDocument"
Description: "Mapping des éléments du modèle métier FRLMNaissance vers le profil CDA FRCDANaissance, puis vers le profil FHIR FRObservationBirthEventDocument."
* title = "Mapping Métier/CDA/FHIR : Naissance"
* status = #draft

// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-naissance"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-naissance"
// élément racine
* group[=].element[+].code = #FRLMNaissance
* group[=].element[=].target.code = #FRCDANaissance
* group[=].element[=].target.equivalence = #equivalent
// Identifiant
* group[=].element[+].code = #FRLMNaissance.identifiant
* group[=].element[=].target.code = #FRCDANaissance.id  
* group[=].element[=].target.equivalence = #equivalent
// Code
* group[=].element[+].code = #FRLMNaissance.Code
* group[=].element[=].target.code = #FRCDANaissance.code
* group[=].element[=].target.equivalence = #equivalent
// Statut
* group[=].element[+].code = #FRLMNaissance.statut
* group[=].element[=].target.code = #FRCDANaissance.status
* group[=].element[=].target.equivalence = #equivalent
// Période
* group[=].element[+].code = #FRLMNaissance.periode
* group[=].element[=].target.code = #FRCDANaissance.effectiveTime
* group[=].element[=].target.equivalence = #equivalent
// Identification du nouveau né
* group[=].element[+].code = #FRLMNaissance.identificationNouveauNe
* group[=].element[=].target.code = #FRCDANaissance.subject
* group[=].element[=].target.equivalence = #equivalent
// Observation sur la naissance
* group[=].element[+].code = #FRLMNaissance.observationNaissance
* group[=].element[=].target.code = #FRCDANaissance.component:frObservationSurLaGrossesse
* group[=].element[=].target.equivalence = #equivalent

// Groupe Mapping 2 : CDA → FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-naissance"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-observation-birth-event-document"
// Identifiant
* group[=].element[+].code = #FRCDANaissance.id 
* group[=].element[=].target.code = #FRObservationBirthEventDocument.identifier
* group[=].element[=].target.equivalence = #equivalent
// Code
* group[=].element[+].code = #FRCDANaissance.code
* group[=].element[=].target.code = #FRObservationBirthEventDocument.code
* group[=].element[=].target.equivalence = #equivalent
// Statut
* group[=].element[+].code = #FRCDANaissance.status
* group[=].element[=].target.code = #FRObservationBirthEventDocument.status
* group[=].element[=].target.equivalence = #equivalent
// Période
* group[=].element[+].code = #FRCDANaissance.effectiveTime
* group[=].element[=].target.code = #FRObservationBirthEventDocument.effectiveDateTime
* group[=].element[=].target.equivalence = #equivalent
// Identification du nouveau né
* group[=].element[+].code = #FRCDANaissance.subject
* group[=].element[=].target.code = #FRObservationBirthEventDocument.focus:RelatedPerson
* group[=].element[=].target.equivalence = #equivalent
// Observation sur la naissance
* group[=].element[+].code = #FRCDANaissance.component:frObservationSurLaGrossesse
* group[=].element[=].target.code = #FRObservationBirthEventDocument.hasMember:FRObservationPregnancyDocument
* group[=].element[=].target.equivalence = #equivalent

