Instance: FRObservationMultiresistantMicroorganismsIdentificationLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMIdentificationDeMicroOrganismesMultiresistants → FRCDAIdentificationMicroOrganismesMultiresistants → FRObservationMultiresistantMicroorganismsIdentificationDocument"
Description: "Mapping des éléments du modèle métier FRLMIdentificationDeMicroOrganismesMultiresistants vers le profil CDA FRCDAIdentificationMicroOrganismesMultiresistants, puis vers le profil FHIR FRObservationMultiresistantMicroorganismsIdentificationDocument."
* title = "Mapping Métier/CDA/FHIR : Identification de micro-organismes multirésistants"
* status = #draft

// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-identification-de-micro-organismes-multiresistants"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-identification-micro-organismes-multiresistants"
// Élément racine
* group[=].element[+].code = #FRLMIdentificationDeMicroOrganismesMultiresistants
* group[=].element[=].target.code = #FRCDAIdentificationMicroOrganismesMultiresistants
* group[=].element[=].target.equivalence = #equivalent
// identifiant
* group[=].element[+].code = #FRLMIdentificationDeMicroOrganismesMultiresistants.identifiant
* group[=].element[=].target.code = #FRCDAIdentificationMicroOrganismesMultiresistants.id
* group[=].element[=].target.equivalence = #equivalent
// code
* group[=].element[+].code = #FRLMIdentificationDeMicroOrganismesMultiresistants.code
* group[=].element[=].target.code = #FRCDAIdentificationMicroOrganismesMultiresistants.code
* group[=].element[=].target.equivalence = #equivalent
// description
* group[=].element[+].code = #FRLMIdentificationDeMicroOrganismesMultiresistants.description
* group[=].element[=].target.code = #FRCDAIdentificationMicroOrganismesMultiresistants.text
* group[=].element[=].target.equivalence = #equivalent
// statut
* group[=].element[+].code = #FRLMIdentificationDeMicroOrganismesMultiresistants.statut
* group[=].element[=].target.code = #FRCDAIdentificationMicroOrganismesMultiresistants.statusCode
* group[=].element[=].target.equivalence = #equivalent
// date
* group[=].element[+].code = #FRLMIdentificationDeMicroOrganismesMultiresistants.date
* group[=].element[=].target.code = #FRCDAIdentificationMicroOrganismesMultiresistants.effectiveTime
* group[=].element[=].target.equivalence = #equivalent
// valeur
* group[=].element[+].code = #FRLMIdentificationDeMicroOrganismesMultiresistants.valeur
* group[=].element[=].target.code = #FRCDAIdentificationMicroOrganismesMultiresistants.value
* group[=].element[=].target.equivalence = #equivalent
// auteur
* group[=].element[+].code = #FRLMIdentificationDeMicroOrganismesMultiresistants.auteur
* group[=].element[=].target.code = #FRCDAIdentificationMicroOrganismesMultiresistants.author
* group[=].element[=].target.equivalence = #equivalent

// Groupe Mapping 2 : CDA → FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-identification-micro-organismes-multiresistants"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-observation-multiresistant-microorganism-document"
// Identifiant
* group[=].element[+].code = #FRCDAIdentificationMicroOrganismesMultiresistants.id
* group[=].element[=].target.code = #FRObservationMultiresistantMicroorganismsIdentificationDocument.identifier
* group[=].element[=].target.equivalence = #equivalent
// Code
* group[=].element[+].code = #FRCDAIdentificationMicroOrganismesMultiresistants.code
* group[=].element[=].target.code = #FRObservationMultiresistantMicroorganismsIdentificationDocument.code
* group[=].element[=].target.equivalence = #equivalent
// Texte narratif
* group[=].element[+].code = #FRCDAIdentificationMicroOrganismesMultiresistants.text
* group[=].element[=].target.code = #FRObservationMultiresistantMicroorganismsIdentificationDocument.code.text
* group[=].element[=].target.equivalence = #equivalent
// Statut
* group[=].element[+].code = #FRCDAIdentificationMicroOrganismesMultiresistants.statusCode
* group[=].element[=].target.code = #FRObservationMultiresistantMicroorganismsIdentificationDocument.status
* group[=].element[=].target.equivalence = #equivalent
// Date
* group[=].element[+].code = #FRCDAIdentificationMicroOrganismesMultiresistants.effectiveTime
* group[=].element[=].target.code = #FRObservationMultiresistantMicroorganismsIdentificationDocument.effective[x]
* group[=].element[=].target.equivalence = #equivalent
// Valeur
* group[=].element[+].code = #FRCDAIdentificationMicroOrganismesMultiresistants.value
* group[=].element[=].target.code = #FRObservationMultiresistantMicroorganismsIdentificationDocument.valueString
* group[=].element[=].target.equivalence = #equivalent
// Auteur
* group[=].element[+].code = #FRCDAIdentificationMicroOrganismesMultiresistants.author
* group[=].element[=].target.code = #FRObservationMultiresistantMicroorganismsIdentificationDocument.performer.extension:author
* group[=].element[=].target.equivalence = #equivalent