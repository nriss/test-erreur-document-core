Instance: FRObservationMicroorganismDetectionLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMRechercheDeMicroOrganismes → FRCDARechercheDeMicroOrganismes → FRObservationMicroorganismDetectionDocument"
Description: "Mapping des éléments du modèle métier FRLMRechercheDeMicroOrganismes vers le profil CDA FRCDARechercheDeMicroOrganismes, puis vers le profil FHIR FRObservationMicroorganismDetectionDocument."
* title = "Mapping Métier/CDA/FHIR : \"Recherche de micro organismes\""
* status = #draft

// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-recherche-de-micro-organismes"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-recherche-de-micro-organismes"
// Élément racine
* group[=].element[+].code = #FRLMRechercheDeMicroOrganismes
* group[=].element[=].target.code = #FRCDARechercheDeMicroOrganismes
* group[=].element[=].target.equivalence = #equivalent
// identifiant
* group[=].element[+].code = #FRLMRechercheDeMicroOrganismes.identifiant
* group[=].element[=].target.code = #FRCDARechercheDeMicroOrganismes.id
* group[=].element[=].target.equivalence = #equivalent
// code
* group[=].element[+].code = #FRLMRechercheDeMicroOrganismes.code
* group[=].element[=].target.code = #FRCDARechercheDeMicroOrganismes.code
* group[=].element[=].target.equivalence = #equivalent
// description
* group[=].element[+].code = #FRLMRechercheDeMicroOrganismes.description
* group[=].element[=].target.code = #FRCDARechercheDeMicroOrganismes.text
* group[=].element[=].target.equivalence = #equivalent
// statut
* group[=].element[+].code = #FRLMRechercheDeMicroOrganismes.statut
* group[=].element[=].target.code = #FRCDARechercheDeMicroOrganismes.statusCode
* group[=].element[=].target.equivalence = #equivalent
// date
* group[=].element[+].code = #FRLMRechercheDeMicroOrganismes.date
* group[=].element[=].target.code = #FRCDARechercheDeMicroOrganismes.effectiveTime
* group[=].element[=].target.equivalence = #equivalent
// valeur
* group[=].element[+].code = #FRLMRechercheDeMicroOrganismes.valeur
* group[=].element[=].target.code = #FRCDARechercheDeMicroOrganismes.value
* group[=].element[=].target.equivalence = #equivalent
// auteur
* group[=].element[+].code = #FRLMRechercheDeMicroOrganismes.auteur
* group[=].element[=].target.code = #FRCDARechercheDeMicroOrganismes.author
* group[=].element[=].target.equivalence = #equivalent

// Groupe Mapping 2 : CDA → FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-recherche-de-micro-organismes"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-observation-microorganism-detection-document"
// Identifiant  
* group[=].element[+].code = #FRCDARechercheDeMicroOrganismes.id
* group[=].element[=].target.code = #FRObservationMicroorganismDetectionDocument.identifier
* group[=].element[=].target.equivalence = #equivalent
// Code
* group[=].element[+].code = #FRCDARechercheDeMicroOrganismes.code
* group[=].element[=].target.code = #FRObservationMicroorganismDetectionDocument.code
* group[=].element[=].target.equivalence = #equivalent
// Description
* group[=].element[+].code = #FRCDARechercheDeMicroOrganismes.text
* group[=].element[=].target.code = #FRObservationMicroorganismDetectionDocument.code.text
* group[=].element[=].target.equivalence = #equivalent
// Statut
* group[=].element[+].code = #FRCDARechercheDeMicroOrganismes.statusCode
* group[=].element[=].target.code = #FRObservationMicroorganismDetectionDocument.status
* group[=].element[=].target.equivalence = #equivalent
// Date
* group[=].element[+].code = #FRCDARechercheDeMicroOrganismes.effectiveTime
* group[=].element[=].target.code = #FRObservationMicroorganismDetectionDocument.effective[x]
* group[=].element[=].target.equivalence = #equivalent
// Valeur
* group[=].element[+].code = #FRCDARechercheDeMicroOrganismes.value
* group[=].element[=].target.code = #FRObservationMicroorganismDetectionDocument.valueBoolean
* group[=].element[=].target.equivalence = #equivalent
// Auteur
* group[=].element[+].code = #FRCDARechercheDeMicroOrganismes.author
* group[=].element[=].target.code = #FRObservationMicroorganismDetectionDocument.performer.extension:author
* group[=].element[=].target.equivalence = #equivalent