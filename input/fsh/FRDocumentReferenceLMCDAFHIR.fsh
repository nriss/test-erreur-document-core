Instance: FRDocumentReferenceLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMDocumentAttache → FRCDADocumentAttache → FRDocumentReferenceDocument"
Description: "Mapping des éléments du modèle métier FRLMDocumentAttache vers le profil CDA FRCDADocumentAttache, puis vers le profil FHIR FRDocumentReferenceDocument."
* title = "Mapping Métier/CDA/FHIR : \"Document Referencé\""
* status = #draft

// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-document-attache"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-document-attache"
// Élément racine
* group[=].element[+].code = #FRLMDocumentAttache
* group[=].element[=].target.code = #FRCDADocumentAttache
* group[=].element[=].target.equivalence = #equivalent
// Identifiant
* group[=].element[+].code = #FRLMDocumentAttache.identifiant
* group[=].element[=].target.code = #FRCDADocumentAttache.id
* group[=].element[=].target.equivalence = #equivalent
// Code
* group[=].element[+].code = #FRLMDocumentAttache.code
* group[=].element[=].target.code = #FRCDADocumentAttache.code
* group[=].element[=].target.equivalence = #equivalent
// Statut
* group[=].element[+].code = #FRLMDocumentAttache.statut
* group[=].element[=].target.code = #FRCDADocumentAttache.statusCode
* group[=].element[=].target.equivalence = #equivalent
// Date
* group[=].element[+].code = #FRLMDocumentAttache.date
* group[=].element[=].target.code = #FRCDADocumentAttache.effectiveTime
* group[=].element[=].target.equivalence = #equivalent
// Type de document
* group[=].element[+].code = #FRLMDocumentAttache.typeDocumentAttache
* group[=].element[=].target.code = #FRCDADocumentAttache.component:frTypeDocumentAttache
* group[=].element[=].target.equivalence = #equivalent
// Contenu du document
* group[=].element[+].code = #FRLMDocumentAttache.documentAttache
* group[=].element[=].target.code = #FRCDADocumentAttache.component.observationMedia
* group[=].element[=].target.equivalence = #equivalent 
// Observation média - Identifiant
* group[=].element[+].code = #FRLMDocumentAttache.documentAttache.observationMedia.identifiant
* group[=].element[=].target.code = #FRCDADocumentAttache.component.observationMedia.id
* group[=].element[=].target.equivalence = #equivalent
// Document attaché encodé en Base64
* group[=].element[+].code = #FRLMDocumentAttache.documentAttache.observationMedia.documentAttacheEncode
* group[=].element[=].target.code = #FRCDADocumentAttache.component.observationMedia.value
* group[=].element[=].target.equivalence = #equivalent 


// Groupe Mapping 2 : CDA → FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-document-attache"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-document-reference-document"
// Élément racine
* group[=].element[+].code = #FRCDADocumentAttache
* group[=].element[=].target.code = #FRDocumentReferenceDocument
* group[=].element[=].target.equivalence = #equivalent
// Identifiant
* group[=].element[+].code = #FRCDADocumentAttache.id
* group[=].element[=].target.code = #FRDocumentReferenceDocument.identifier
* group[=].element[=].target.equivalence = #equivalent
// Code
* group[=].element[+].code = #FRCDADocumentAttache.code
//* group[=].element[=].target.code = #FRDocumentReferenceDocument.type
* group[=].element[=].target.equivalence = #unmatched
// Statut
* group[=].element[+].code = #FRCDADocumentAttache.statusCode
* group[=].element[=].target.code = #FRDocumentReferenceDocument.docStatus      
* group[=].element[=].target.equivalence = #equivalent
// Date
* group[=].element[+].code = #FRCDADocumentAttache.effectiveTime
* group[=].element[=].target.code = #FRDocumentReferenceDocument.date
* group[=].element[=].target.equivalence = #equivalent
// Type de document
* group[=].element[+].code = #FRCDADocumentAttache.component:frTypeDocumentAttache
* group[=].element[=].target.code = #FRDocumentReferenceDocument.type
* group[=].element[=].target.equivalence = #equivalent
// Contenu du document
* group[=].element[+].code = #FRCDADocumentAttache.component.observationMedia
* group[=].element[=].target.code = #FRDocumentReferenceDocument.content.attachment
* group[=].element[=].target.equivalence = #equivalent
// Observation média - Identifiant
* group[=].element[+].code = #FRCDADocumentAttache.component.observationMedia.id
* group[=].element[=].target.code = #FRDocumentReferenceDocument.content.attachment.id
* group[=].element[=].target.equivalence = #equivalent
// Document attaché encodé en Base64
* group[=].element[+].code = #FRCDADocumentAttache.component.observationMedia.value
* group[=].element[=].target.code = #FRDocumentReferenceDocument.content.attachment.data
* group[=].element[=].target.equivalence = #equivalent
