Instance: FRAdvanceDirectiveLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMDirectiveAnticipee → FRCDADirectiveAnticipee → FRAdvanceDirectiveDocument"
Description: "Mapping des éléments du modèle métier FRLMDirectiveAnticipee vers le profil CDA FRCDADirectiveAnticipee, puis vers le profil FHIR FRAdvanceDirectiveDocument."

* title = "Mapping Métier/CDA/FHIR : \"Directive Anticipee\""
* status = #draft

// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-directive-anticipee"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-directive-anticipee"

// Élément racine
* group[=].element[+].code = #FRLMDirectiveAnticipee
* group[=].element[=].target.code = #FRCDADirectiveAnticipee
* group[=].element[=].target.equivalence = #equivalent

// Identifiant
* group[=].element[+].code = #FRLMDirectiveAnticipee.identifiant
* group[=].element[=].target.code = #FRCDADirectiveAnticipee.id
* group[=].element[=].target.equivalence = #equivalent

// Code
* group[=].element[+].code = #FRLMDirectiveAnticipee.code
* group[=].element[=].target.code = #FRCDADirectiveAnticipee.code
* group[=].element[=].target.equivalence = #equivalent

// Texte narratif
* group[=].element[+].code = #FRLMDirectiveAnticipee.description
* group[=].element[=].target.code = #FRCDADirectiveAnticipee.text
* group[=].element[=].target.equivalence = #equivalent

// Statut
* group[=].element[+].code = #FRLMDirectiveAnticipee.statut
* group[=].element[=].target.code = #FRCDADirectiveAnticipee.statusCode
* group[=].element[=].target.equivalence = #equivalent

// Date
* group[=].element[+].code = #FRLMDirectiveAnticipee.date
* group[=].element[=].target.code = #FRCDADirectiveAnticipee.effectiveTime
* group[=].element[=].target.equivalence = #equivalent

// Valeur booléenne
* group[=].element[+].code = #FRLMDirectiveAnticipee.valeurDirectiveIdentifiee
* group[=].element[=].target.code = #FRCDADirectiveAnticipee.valueBoolean
* group[=].element[=].target.equivalence = #equivalent

// Référence à un document externe
* group[=].element[+].code = #FRLMDirectiveAnticipee.reference
* group[=].element[=].target.code = #FRCDADirectiveAnticipee.reference.externalDocument.text.reference
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Référence externe portée par externalDocument.text.reference en CDA."

// Document encapsulé
* group[=].element[+].code = #FRLMDirectiveAnticipee.documentEncapsule
* group[=].element[=].target.code = #FRCDADirectiveAnticipee.entryRelationship
* group[=].element[=].target.equivalence = #equivalent

// Observation média
* group[=].element[+].code = #FRLMDirectiveAnticipee.documentEncapsule.observationMedia
* group[=].element[=].target.code = #FRCDADirectiveAnticipee.entryRelationship.observationMedia
* group[=].element[=].target.equivalence = #equivalent

// Identifiant observation média
* group[=].element[+].code = #FRLMDirectiveAnticipee.documentEncapsule.observationMedia.identifiant
* group[=].element[=].target.code = #FRCDADirectiveAnticipee.entryRelationship.observationMedia.id
* group[=].element[=].target.equivalence = #equivalent

// Document encapsulé encodée en Base64
* group[=].element[+].code = #FRLMDirectiveAnticipee.documentEncapsule.observationMedia.documentEncapsuleEncode
* group[=].element[=].target.code = #FRCDADirectiveAnticipee.entryRelationship.observationMedia.value
* group[=].element[=].target.equivalence = #equivalent



// Groupe Mapping 2 : CDA → FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-directive-anticipee"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-advance-directive-document"

/* Élément racine */
* group[=].element[+].code = #FRCDADirectiveAnticipee
* group[=].element[=].target.code = #FRAdvanceDirectiveDocument
* group[=].element[=].target.equivalence = #equivalent

/* Identifiant */
* group[=].element[+].code = #FRCDADirectiveAnticipee.id
* group[=].element[=].target.code = #FRAdvanceDirectiveDocument.identifier  
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "L'élément id en CDA devient identifier en FHIR."

/* Code */
* group[=].element[=].target.code = #FRAdvanceDirectiveDocument.scope
* group[=].element[=].target.equivalence = #unmatched
* group[=].element[=].target.comment = "L'élément scope en CDA n'a pas d'équivalent direct en FHIR. Le concept de 'scope' est ajouté pour indiquer le type de consentement."

/* Code */
* group[=].element[+].code = #FRCDADirectiveAnticipee.code
* group[=].element[=].target.code = #FRAdvanceDirectiveDocument.provision.code
* group[=].element[=].target.equivalence = #equivalent

/* Texte narratif */
* group[=].element[+].code = #FRCDADirectiveAnticipee.text
* group[=].element[=].target.code = #FRAdvanceDirectiveDocument.provision.code.text
* group[=].element[=].target.equivalence = #equivalent

/* Statut */
* group[=].element[+].code = #FRCDADirectiveAnticipee.statusCode
* group[=].element[=].target.code = #FRAdvanceDirectiveDocument.status
* group[=].element[=].target.equivalence = #equivalent

/* Date effectiveTime */
* group[=].element[+].code = #FRCDADirectiveAnticipee.effectiveTime
* group[=].element[=].target.code = #FRAdvanceDirectiveDocument.dateTime
* group[=].element[=].target.equivalence = #equivalent

/* Valeur booléenne */
* group[=].element[+].code = #FRCDADirectiveAnticipee.valueBoolean
* group[=].element[=].target.code = #FRAdvanceDirectiveDocument.provision.type
* group[=].element[=].target.equivalence = #equivalent

/* Référence à un document externe */
* group[=].element[+].code = #FRCDADirectiveAnticipee.reference.externalDocument.text.reference
* group[=].element[=].target.code = #FRAdvanceDirectiveDocument.sourceReference
* group[=].element[=].target.equivalence = #equivalent

/* Document encapsulé */
* group[=].element[+].code = #FRCDADirectiveAnticipee.entryRelationship
* group[=].element[=].target.code = #FRAdvanceDirectiveDocument.sourceAttachment
* group[=].element[=].target.equivalence = #equivalent

/* Observation média */
* group[=].element[+].code = #FRCDADirectiveAnticipee.entryRelationship.observationMedia
* group[=].element[=].target.code = #FRAdvanceDirectiveDocument.sourceAttachment
* group[=].element[=].target.equivalence = #equivalent

/* Identifiant observation média */
* group[=].element[+].code = #FRCDADirectiveAnticipee.entryRelationship.observationMedia.id
* group[=].element[=].target.code = #FRAdvanceDirectiveDocument.sourceAttachment.id
* group[=].element[=].target.equivalence = #equivalent

/* Document encapsulé encodée en Base64 */
* group[=].element[+].code = #FRCDADirectiveAnticipee.entryRelationship.observationMedia.value
* group[=].element[=].target.code = #FRAdvanceDirectiveDocument.sourceAttachment.data
* group[=].element[=].target.equivalence = #equivalent

/* Document URI */
* group[=].element[+].code = #FRCDADirectiveAnticipee.entryRelationship.observationMedia.value
* group[=].element[=].target.code = #FRAdvanceDirectiveDocument.sourceAttachment.url
* group[=].element[=].target.equivalence = #equivalent
