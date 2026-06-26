Instance: FRObservationAdministrationBloodDerivativesLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMAdministrationDeDerivesDuSang → FRCDAAdministrationDeDerivesDuSang → FRObservationAdministrationBloodDerivativesDocument"
Description: "Mapping des éléments du modèle métier FRLMAdministrationDeDerivesDuSang vers le profil CDA FRCDAAdministrationDeDerivesDuSang, puis vers le profil FHIR FRObservationAdministrationBloodDerivativesDocument."
* title = "Mapping Métier/CDA/FHIR : \"Administration de dérivés du sang\""
* status = #draft

// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-administration-de-derives-du-sang"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-administration-de-derives-du-sang"
// Élément racine
* group[=].element[+].code = #FRLMAdministrationDeDerivesDuSang
* group[=].element[=].target.code = #FRCDAAdministrationDeDerivesDuSang
* group[=].element[=].target.equivalence = #equivalent  
// identifiant
* group[=].element[+].code = #FRLMAdministrationDeDerivesDuSang.identifiant
* group[=].element[=].target.code = #FRCDAAdministrationDeDerivesDuSang.id
* group[=].element[=].target.equivalence = #equivalent
// code
* group[=].element[+].code = #FRLMAdministrationDeDerivesDuSang.code
* group[=].element[=].target.code = #FRCDAAdministrationDeDerivesDuSang.code
* group[=].element[=].target.equivalence = #equivalent
// description
* group[=].element[+].code = #FRLMAdministrationDeDerivesDuSang.description
* group[=].element[=].target.code = #FRCDAAdministrationDeDerivesDuSang.text
* group[=].element[=].target.equivalence = #equivalent
// statut
* group[=].element[+].code = #FRLMAdministrationDeDerivesDuSang.statut
* group[=].element[=].target.code = #FRCDAAdministrationDeDerivesDuSang.statusCode
* group[=].element[=].target.equivalence = #equivalent
// date
* group[=].element[+].code = #FRLMAdministrationDeDerivesDuSang.date
* group[=].element[=].target.code = #FRCDAAdministrationDeDerivesDuSang.effectiveTime
* group[=].element[=].target.equivalence = #equivalent
// valeur
* group[=].element[+].code = #FRLMAdministrationDeDerivesDuSang.valeur
* group[=].element[=].target.code = #FRCDAAdministrationDeDerivesDuSang.value
* group[=].element[=].target.equivalence = #equivalent
// auteur
* group[=].element[+].code = #FRLMAdministrationDeDerivesDuSang.auteur
* group[=].element[=].target.code = #FRCDAAdministrationDeDerivesDuSang.author
* group[=].element[=].target.equivalence = #equivalent

// Groupe Mapping 2 : CDA → FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-administration-de-derives-du-sang"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-observation-administration-blood-derivatives-document"
// Élément racine
* group[=].element[+].code = #FRCDAAdministrationDeDerivesDuSang
* group[=].element[=].target.code = #FRObservationAdministrationBloodDerivativesDocument
* group[=].element[=].target.equivalence = #equivalent
// identifiant
* group[=].element[+].code = #FRCDAAdministrationDeDerivesDuSang.id
* group[=].element[=].target.code = #FRObservationAdministrationBloodDerivativesDocument.identifier
* group[=].element[=].target.equivalence = #equivalent  
// code
* group[=].element[+].code = #FRCDAAdministrationDeDerivesDuSang.code
* group[=].element[=].target.code = #FRObservationAdministrationBloodDerivativesDocument.code
* group[=].element[=].target.equivalence = #equivalent
// description
* group[=].element[+].code = #FRCDAAdministrationDeDerivesDuSang.text
* group[=].element[=].target.code = #FRObservationAdministrationBloodDerivativesDocument.code.text
* group[=].element[=].target.equivalence = #equivalent
// statut
* group[=].element[+].code = #FRCDAAdministrationDeDerivesDuSang.statusCode
* group[=].element[=].target.code = #FRObservationAdministrationBloodDerivativesDocument.status
* group[=].element[=].target.equivalence = #equivalent
// date
* group[=].element[+].code = #FRCDAAdministrationDeDerivesDuSang.effectiveTime
* group[=].element[=].target.code = #FRObservationAdministrationBloodDerivativesDocument.effective[x]
* group[=].element[=].target.equivalence = #equivalent
// valeur
* group[=].element[+].code = #FRCDAAdministrationDeDerivesDuSang.value
* group[=].element[=].target.code = #FRObservationAdministrationBloodDerivativesDocument.valueBoolean
* group[=].element[=].target.equivalence = #equivalent
// auteur
* group[=].element[+].code = #FRCDAAdministrationDeDerivesDuSang.author
* group[=].element[=].target.code = #FRObservationAdministrationBloodDerivativesDocument.performer.extension:author
* group[=].element[=].target.equivalence = #equivalent
