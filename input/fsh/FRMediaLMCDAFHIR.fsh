// Instance ConceptMap: correspondances entre codes CDA (type média) et FHIR Media.type
Instance: FRMediaLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMImageIllustrative → FRCDAImageIllustrative → FRMediaDocument"
Description: "Mapping des éléments du modèle métier FRLMImageIllustrative vers le profil CDA FRCDAImageIllustrative, puis vers le profil FHIR FRMediaDocument."
* title = "Mapping Métier/CDA/FHIR : \"Image illustrative\""
* status = #draft

// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-image-illustrative"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-image-illustrative"
// Élément racine  
* group[=].element[+].code = #FRLMImageIllustrative
* group[=].element[=].target.code = #FRCDAImageIllustrative
* group[=].element[=].target.equivalence = #equivalent
// Identifiant de l’entrée
* group[=].element[+].code = #FRLMImageIllustrative.identifiant
* group[=].element[=].target.code = #FRCDAImageIllustrative.id
* group[=].element[=].target.equivalence = #equivalent
// Langue
* group[=].element[+].code = #FRLMImageIllustrative.langue
* group[=].element[=].target.code = #FRCDAImageIllustrative.languageCode
* group[=].element[=].target.equivalence = #equivalent  
// Image encodée en Base64
* group[=].element[+].code = #FRLMImageIllustrative.imageEncodee
* group[=].element[=].target.code = #FRCDAImageIllustrative.value
* group[=].element[=].target.equivalence = #equivalent
// mediaType
* group[=].element[+].code = #FRLMImageIllustrative.mediaType
* group[=].element[=].target.code = #FRCDAImageIllustrative.value.mediaType
* group[=].element[=].target.equivalence = #equivalent 
// representation
* group[=].element[+].code = #FRLMImageIllustrative.representation
* group[=].element[=].target.code = #FRCDAImageIllustrative.value.representation
* group[=].element[=].target.equivalence = #equivalent
// subject
* group[=].element[+].code = #FRLMImageIllustrative.subject
* group[=].element[=].target.code = #FRCDAImageIllustrative.subject
* group[=].element[=].target.equivalence = #equivalent 
// specimen
* group[=].element[+].code = #FRLMImageIllustrative.specimen
* group[=].element[=].target.code = #FRCDAImageIllustrative.specimen
* group[=].element[=].target.equivalence = #equivalent
// performer
* group[=].element[+].code = #FRLMImageIllustrative.performer
* group[=].element[=].target.code = #FRCDAImageIllustrative.performer
* group[=].element[=].target.equivalence = #equivalent 
// auteur
* group[=].element[+].code = #FRLMImageIllustrative.auteur
* group[=].element[=].target.code = #FRCDAImageIllustrative.author
* group[=].element[=].target.equivalence = #equivalent
// informant
* group[=].element[+].code = #FRLMImageIllustrative.informant
* group[=].element[=].target.code = #FRCDAImageIllustrative.informant
* group[=].element[=].target.equivalence = #equivalent 
// participant
* group[=].element[+].code = #FRLMImageIllustrative.participant
* group[=].element[=].target.code = #FRCDAImageIllustrative.participant
* group[=].element[=].target.equivalence = #equivalent
// entryRelationship
* group[=].element[+].code = #FRLMImageIllustrative.entryRelationship
* group[=].element[=].target.code = #FRCDAImageIllustrative.entryRelationship
* group[=].element[=].target.equivalence = #equivalent 
// reference
* group[=].element[+].code = #FRLMImageIllustrative.reference
* group[=].element[=].target.code = #FRCDAImageIllustrative.reference
* group[=].element[=].target.equivalence = #equivalent
// precondition
* group[=].element[+].code = #FRLMImageIllustrative.precondition
* group[=].element[=].target.code = #FRCDAImageIllustrative.precondition
* group[=].element[=].target.equivalence = #equivalent 


// Groupe Mapping 2 : CDA → FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-image-illustrative"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-media-document"
// Élément racine
* group[=].element[+].code = #FRCDAImageIllustrative
* group[=].element[=].target.code = #FRMediaDocument
* group[=].element[=].target.equivalence = #equivalent
// Identifiant
* group[=].element[+].code = #FRCDAImageIllustrative.id
* group[=].element[=].target.code = #FRMediaDocument.identifier
* group[=].element[=].target.equivalence = #equivalent
// language
* group[=].element[+].code = #FRCDAImageIllustrative.languageCode
* group[=].element[=].target.code = #FRMediaDocument.content.language
* group[=].element[=].target.equivalence = #equivalent 
// data
* group[=].element[+].code = #FRCDAImageIllustrative.value
* group[=].element[=].target.code = #FRMediaDocument.content.data
* group[=].element[=].target.equivalence = #equivalent
// Type de média
* group[=].element[+].code = #FRCDAImageIllustrative.value.mediaType
* group[=].element[=].target.code = #FRMediaDocument.content.contentType
* group[=].element[=].target.equivalence = #equivalent 
// Pas besoin de fixer representation : en FHIR c’est implicite via le type de l’Attachment ou la présence d’un data Base64.
* group[=].element[+].code = #FRCDAImageIllustrative.value.representation
* group[=].element[=].target.equivalence = #unmatched
// Sujet
* group[=].element[+].code = #FRCDAImageIllustrative.subject
* group[=].element[=].target.code = #FRMediaDocument.subject:Patient
* group[=].element[=].target.equivalence = #equivalent 
// Specimen
* group[=].element[+].code = #FRCDAImageIllustrative.specimen
* group[=].element[=].target.code = #FRMediaDocument.subject:Specimen
* group[=].element[=].target.equivalence = #equivalent
// Performer
* group[=].element[+].code = #FRCDAImageIllustrative.performer
* group[=].element[=].target.code = #FRMediaDocument.operator.extension:performer
* group[=].element[=].target.equivalence = #equivalent 
// author
* group[=].element[+].code = #FRCDAImageIllustrative.author
* group[=].element[=].target.code = #FRMediaDocument.operator.extension:author
* group[=].element[=].target.equivalence = #equivalent
// informant
* group[=].element[+].code = #FRCDAImageIllustrative.informant
* group[=].element[=].target.code = #FRMediaDocument.operator.extension:informant
* group[=].element[=].target.equivalence = #equivalent 
// participant
* group[=].element[+].code = #FRCDAImageIllustrative.participant
* group[=].element[=].target.code = #FRMediaDocument.operator.extension:participant
* group[=].element[=].target.equivalence = #equivalent 
// entryRelationship (Acte ou plan de soins à l'origine de l'image)
* group[=].element[+].code = #FRCDAImageIllustrative.entryRelationship
* group[=].element[=].target.code = #FRMediaDocument.basedOn
* group[=].element[=].target.equivalence = #equivalent 
// reference
* group[=].element[+].code = #FRCDAImageIllustrative.reference
* group[=].element[=].target.code = #FRMediaDocument.partOf
* group[=].element[=].target.equivalence = #equivalent 
// Contexte ou justification de l'image (précondition)
* group[=].element[+].code = #FRCDAImageIllustrative.precondition
* group[=].element[=].target.code = #FRMediaDocument.reasonCode
* group[=].element[=].target.equivalence = #equivalent 
