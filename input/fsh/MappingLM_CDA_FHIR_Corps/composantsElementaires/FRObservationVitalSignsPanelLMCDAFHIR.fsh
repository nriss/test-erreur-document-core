Instance: FRObservationVitalSignsPanelLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMSigneVital → FRCDASignesVitaux → FRObservationVitalSignsPanelDocument"
Description: "Mapping des éléments du modèle métier FRLMSigneVital vers le profil CDA FRCDASignesVitaux, puis vers le profil FHIR FRObservationVitalSignsPanelDocument."
* title = "Mapping Métier/CDA/FHIR : \"Signes vitaux\""
* status = #draft

// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-signe-vital"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-signes-vitaux"
// Élément racine
* group[=].element[+].code = #FRLMSigneVital
* group[=].element[=].target.code = #FRCDASignesVitaux  
* group[=].element[=].target.equivalence = #equivalent
// Identifiant de l'entrée
* group[=].element[+].code = #FRLMSigneVital.identifiant
* group[=].element[=].target.code = #FRCDASignesVitaux.id
* group[=].element[=].target.equivalence = #equivalent
// Code de l'entrée
* group[=].element[+].code = #FRLMSigneVital.code   
* group[=].element[=].target.code = #FRCDASignesVitaux.code
* group[=].element[=].target.equivalence = #equivalent
// Statut de l'entrée
* group[=].element[+].code = #FRLMSigneVital.statut
* group[=].element[=].target.code = #FRCDASignesVitaux.statusCode
* group[=].element[=].target.equivalence = #equivalent
// Date de l'entrée
* group[=].element[+].code = #FRLMSigneVital.date
* group[=].element[=].target.code = #FRCDASignesVitaux.effectiveTime
* group[=].element[=].target.equivalence = #equivalent
// Auteur
* group[=].element[+].code = #FRLMSigneVital.auteur
* group[=].element[=].target.code = #FRCDASignesVitaux.author
* group[=].element[=].target.equivalence = #equivalent
// Signe vital observé
* group[=].element[+].code = #FRLMSigneVital.signeVital
* group[=].element[=].target.code = #FRCDASignesVitaux.component:frSigneVitalObserve
* group[=].element[=].target.equivalence = #equivalent

// Groupe Mapping 2 : CDA → FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-signes-vitaux"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-observation-vital-signs-panel-document"
// Élément racine
* group[=].element[+].code = #FRCDASignesVitaux
* group[=].element[=].target.code = #FRObservationVitalSignsPanelDocument
* group[=].element[=].target.equivalence = #equivalent
// Identifiant de l'entrée
* group[=].element[+].code = #FRCDASignesVitaux.id
* group[=].element[=].target.code = #FRObservationVitalSignsPanelDocument.id
* group[=].element[=].target.equivalence = #equivalent
// Code de l'entrée
* group[=].element[+].code = #FRCDASignesVitaux.code
* group[=].element[=].target.code = #FRObservationVitalSignsPanelDocument.code
* group[=].element[=].target.equivalence = #equivalent
// Statut de l'entrée
* group[=].element[+].code = #FRCDASignesVitaux.statusCode
* group[=].element[=].target.code = #FRObservationVitalSignsPanelDocument.status
* group[=].element[=].target.equivalence = #equivalent
// Date de l'entrée
* group[=].element[+].code = #FRCDASignesVitaux.effectiveTime
* group[=].element[=].target.code = #FRObservationVitalSignsPanelDocument.effectiveDateTime
* group[=].element[=].target.equivalence = #equivalent
// Auteur
* group[=].element[+].code = #FRCDASignesVitaux.author
* group[=].element[=].target.code = #FRObservationVitalSignsPanelDocument.performer.extension:author
* group[=].element[=].target.equivalence = #equivalent
// Signe vital observé
* group[=].element[+].code = #FRCDASignesVitaux.component:frSigneVitalObserve
* group[=].element[=].target.code = #FRObservationVitalSignsPanelDocument.hasMember:FRObservationVitalSignsDocument
* group[=].element[=].target.equivalence = #equivalent