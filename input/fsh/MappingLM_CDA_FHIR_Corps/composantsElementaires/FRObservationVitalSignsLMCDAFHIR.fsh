Instance: FRObservationVitalSignsLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMSigneVitalObserve → FRCDASigneVitalObserve → FRObservationVitalSignsDocument"
Description: "Mapping des éléments du modèle métier FRLMSigneVitalObserve vers le profil CDA FRCDASigneVitalObserve, puis vers le profil FHIR FRObservationVitalSignsDocument."
* title = "Mapping Métier/CDA/FHIR : \"Signe vital observé\""
* status = #draft

// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-signe-vital-observe"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-signe-vital-observe"
// Élément racine
* group[=].element[+].code = #FRLMSigneVitalObserve 
* group[=].element[=].target.code = #FRCDASigneVitalObserve
* group[=].element[=].target.equivalence = #equivalent
// Identifiant de l'entrée
* group[=].element[+].code = #FRLMSigneVitalObserve.identifiant
* group[=].element[=].target.code = #FRCDASigneVitalObserve.id
* group[=].element[=].target.equivalence = #equivalent
// Code de l'entrée
* group[=].element[+].code = #FRLMSigneVitalObserve.code    
* group[=].element[=].target.code = #FRCDASigneVitalObserve.code
* group[=].element[=].target.equivalence = #equivalent  
// Description narrative
* group[=].element[+].code = #FRLMSigneVitalObserve.description
* group[=].element[=].target.code = #FRCDASigneVitalObserve.text
* group[=].element[=].target.equivalence = #equivalent
// Statut de l'entrée
* group[=].element[+].code = #FRLMSigneVitalObserve.statut
* group[=].element[=].target.code = #FRCDASigneVitalObserve.statusCode
* group[=].element[=].target.equivalence = #equivalent
// Date de l'observation
* group[=].element[+].code = #FRLMSigneVitalObserve.date    
* group[=].element[=].target.code = #FRCDASigneVitalObserve.effectiveTime
* group[=].element[=].target.equivalence = #equivalent
// Observation effectuée
* group[=].element[+].code = #FRLMSigneVitalObserve.observationEffectuee
* group[=].element[=].target.code = #FRCDASigneVitalObserve.value
* group[=].element[=].target.equivalence = #equivalent
// Interprétation
* group[=].element[+].code = #FRLMSigneVitalObserve.interpretation
* group[=].element[=].target.code = #FRCDASigneVitalObserve.interpretationCode
* group[=].element[=].target.equivalence = #equivalent
// Méthode utilisée pour l'observation
* group[=].element[+].code = #FRLMSigneVitalObserve.methodeUtilisee
* group[=].element[=].target.code = #FRCDASigneVitalObserve.methodCode
* group[=].element[=].target.equivalence = #equivalent
// Site de l'observation
* group[=].element[+].code = #FRLMSigneVitalObserve.siteObservation
* group[=].element[=].target.code = #FRCDASigneVitalObserve.targetSiteCode
* group[=].element[=].target.equivalence = #equivalent
// Auteur
* group[=].element[+].code = #FRLMSigneVitalObserve.auteur
* group[=].element[=].target.code = #FRCDASigneVitalObserve.author
* group[=].element[=].target.equivalence = #equivalent

// Groupe Mapping 2 : CDA → FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-signe-vital-observe"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-observation-vital-signs-document"
// Élément racine
* group[=].element[+].code = #FRCDASigneVitalObserve
* group[=].element[=].target.code = #FRObservationVitalSignsDocument
* group[=].element[=].target.equivalence = #equivalent
// Identifiant de l'entrée
* group[=].element[+].code = #FRCDASigneVitalObserve.id
* group[=].element[=].target.code = #FRObservationVitalSignsDocument.identifier
* group[=].element[=].target.equivalence = #equivalent
// Code de l'entrée
* group[=].element[+].code = #FRCDASigneVitalObserve.code
* group[=].element[=].target.code = #FRObservationVitalSignsDocument.code
* group[=].element[=].target.equivalence = #equivalent
// Description narrative
* group[=].element[+].code = #FRCDASigneVitalObserve.text   
* group[=].element[=].target.code = #FRObservationVitalSignsDocument.code.text
* group[=].element[=].target.equivalence = #equivalent
// Statut de l'entrée
* group[=].element[+].code = #FRCDASigneVitalObserve.statusCode
* group[=].element[=].target.code = #FRObservationVitalSignsDocument.status
* group[=].element[=].target.equivalence = #equivalent
// Date de l'observation
* group[=].element[+].code = #FRCDASigneVitalObserve.effectiveTime
* group[=].element[=].target.code = #FRObservationVitalSignsDocument.effectiveDateTime
* group[=].element[=].target.equivalence = #equivalent
// Observation effectuée
* group[=].element[+].code = #FRCDASigneVitalObserve.value
* group[=].element[=].target.code = #FRObservationVitalSignsDocument.component.valueQuantity
* group[=].element[=].target.equivalence = #equivalent
// Interprétation
* group[=].element[+].code = #FRCDASigneVitalObserve.interpretationCode
* group[=].element[=].target.code = #FRObservationVitalSignsDocument.interpretation
* group[=].element[=].target.equivalence = #equivalent
// Méthode utilisée pour l'observation
* group[=].element[+].code = #FRCDASigneVitalObserve.methodCode
* group[=].element[=].target.code = #FRObservationVitalSignsDocument.method
* group[=].element[=].target.equivalence = #equivalent
// Site de l'observation
* group[=].element[+].code = #FRCDASigneVitalObserve.targetSiteCode
* group[=].element[=].target.code = #FRObservationVitalSignsDocument.bodySite
* group[=].element[=].target.equivalence = #equivalent
// Auteur
* group[=].element[+].code = #FRCDASigneVitalObserve.author
* group[=].element[=].target.code = #FRObservationVitalSignsDocument.performer.extension:author
* group[=].element[=].target.equivalence = #equivalent