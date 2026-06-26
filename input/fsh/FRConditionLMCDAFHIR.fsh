Instance: FRConditionLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMCondition → FRCDACondition → FRConditionDocument"
Description: "Mapping des éléments du modèle métier FRLMProbleme vers le profil CDA FRCDAProbleme, puis vers le profil FHIR FRConditionDocument."

* title = "Mapping Métier/CDA/FHIR : \"Problème\""
* status = #draft

// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-probleme"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-probleme"

// Élément racine
* group[=].element[+].code = #FRLMProbleme
* group[=].element[=].target.code = #FRCDAProbleme
* group[=].element[=].target.equivalence = #equivalent
// Identifiant
* group[=].element[+].code = #FRLMProbleme.identifiant
* group[=].element[=].target.code = #FRCDAProbleme.id
* group[=].element[=].target.equivalence = #equivalent  
// Type d'observation
* group[=].element[+].code = #FRLMProbleme.type
* group[=].element[=].target.code = #FRCDAProbleme.code
* group[=].element[=].target.equivalence = #equivalent
// Description narrative
* group[=].element[+].code = #FRLMProbleme.description
* group[=].element[=].target.code = #FRCDAProbleme.text
* group[=].element[=].target.equivalence = #equivalent
// Problème observé
* group[=].element[+].code = #FRLMProbleme.problemeObserve
* group[=].element[=].target.code = #FRCDAProbleme.value
* group[=].element[=].target.equivalence = #equivalent
// Statut de l'entrée
* group[=].element[+].code = #FRLMProbleme.statut
* group[=].element[=].target.code = #FRCDAProbleme.statusCode
* group[=].element[=].target.equivalence = #equivalent
// Date de début du problème
* group[=].element[+].code = #FRLMProbleme.dateDebutProbleme
* group[=].element[=].target.code = #FRCDAProbleme.effectiveTime.low
* group[=].element[=].target.equivalence = #equivalent
// Date de fin du problème
* group[=].element[+].code = #FRLMProbleme.dateFinProbleme
* group[=].element[=].target.code = #FRCDAProbleme.effectiveTime.high
* group[=].element[=].target.equivalence = #equivalent
// Statut du problème
* group[=].element[+].code = #FRLMProbleme.statutProbleme
* group[=].element[=].target.code = #FRCDAProbleme.entryRelationship:frStatutDuProbleme
* group[=].element[=].target.equivalence = #equivalent
// Sévérité
* group[=].element[+].code = #FRLMProbleme.severite 
* group[=].element[=].target.code = #FRCDAProbleme.entryRelationship:frSeverite
* group[=].element[=].target.equivalence = #equivalent
// Certitude
* group[=].element[+].code = #FRLMProbleme.certitude
* group[=].element[=].target.code = #FRCDAProbleme.entryRelationship:frCertitude
* group[=].element[=].target.equivalence = #equivalent
// Statut clinique du patient
* group[=].element[+].code = #FRLMProbleme.statutClinique
* group[=].element[=].target.code = #FRCDAProbleme.entryRelationship:frStatutCliniqueDuPatient
* group[=].element[=].target.equivalence = #equivalent
// Document référencé
* group[=].element[+].code = #FRLMProbleme.reference
* group[=].element[=].target.code = #FRCDAProbleme.reference
* group[=].element[=].target.equivalence = #equivalent
// Document référencé - identifiant
* group[=].element[+].code = #FRLMProbleme.reference.externalDocument.identifiant
* group[=].element[=].target.code = #FRCDAProbleme.reference.externalDocument.id
* group[=].element[=].target.equivalence = #equivalent
// Document référencé - référence externe (URL du document)
* group[=].element[+].code = #FRLMProbleme.reference.externalDocument.text.reference
* group[=].element[=].target.code = #FRCDAProbleme.reference.externalDocument.text.reference
* group[=].element[=].target.equivalence = #equivalent
// Commentaire
* group[=].element[+].code = #FRLMProbleme.commentaire
* group[=].element[=].target.code = #FRCDAProbleme.entryRelationship:frCommentaireER
* group[=].element[=].target.equivalence = #equivalent


// Groupe Mapping 2 : CDA → FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-probleme"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-condition-document"
// Élément racine   
* group[=].element[+].code = #FRCDAProbleme
* group[=].element[=].target.code = #FRConditionDocument    
* group[=].element[=].target.equivalence = #equivalent
// Identifiant
* group[=].element[+].code = #FRCDAProbleme.id  
* group[=].element[=].target.code = #FRConditionDocument.identifier
* group[=].element[=].target.equivalence = #equivalent
// Type d'observation
* group[=].element[+].code = #FRCDAProbleme.code
* group[=].element[=].target.code = #FRConditionDocument.category
* group[=].element[=].target.equivalence = #equivalent
// Description narrative    
* group[=].element[+].code = #FRCDAProbleme.text
* group[=].element[=].target.code = #FRConditionDocument.category.text
* group[=].element[=].target.equivalence = #equivalent
// Problème observé
* group[=].element[+].code = #FRCDAProbleme.value
* group[=].element[=].target.code = #FRConditionDocument.code
* group[=].element[=].target.equivalence = #equivalent
// Statut de l'entrée
* group[=].element[+].code = #FRCDAProbleme.statusCode
* group[=].element[=].target.code = #FRConditionDocument.clinicalStatus
* group[=].element[=].target.equivalence = #equivalent
// Date de début du problème
* group[=].element[+].code = #FRCDAProbleme.effectiveTime.low
* group[=].element[=].target.code = #FRConditionDocument.onsetDateTime
* group[=].element[=].target.equivalence = #equivalent
// Date de fin du problème
* group[=].element[+].code = #FRCDAProbleme.effectiveTime.high
* group[=].element[=].target.code = #FRConditionDocument.abatementDateTime
* group[=].element[=].target.equivalence = #equivalent
// Statut du problème
* group[=].element[+].code = #FRCDAProbleme.entryRelationship:frStatutDuProbleme
* group[=].element[=].target.code = #FRConditionDocument.clinicalStatus
* group[=].element[=].target.equivalence = #equivalent
// Sévérité
* group[=].element[+].code = #FRCDAProbleme.entryRelationship:frSeverite
* group[=].element[=].target.code = #FRConditionDocument.severity
* group[=].element[=].target.equivalence = #equivalent
// Certitude
* group[=].element[+].code = #FRCDAProbleme.entryRelationship:frCertitude
* group[=].element[=].target.code = #FRConditionDocument.verificationStatus
* group[=].element[=].target.equivalence = #equivalent
// Statut clinique du patient
* group[=].element[+].code = #FRCDAProbleme.entryRelationship:frStatutCliniqueDuPatient
* group[=].element[=].target.code = #FRConditionDocument.stage.summary
* group[=].element[=].target.equivalence = #equivalent
// Document référencé
* group[=].element[+].code = #FRCDAProbleme.reference
* group[=].element[=].target.code = #FRConditionDocument.evidence.detail
* group[=].element[=].target.equivalence = #equivalent
// Document référencé - identifiant
* group[=].element[+].code = #FRCDAProbleme.reference.externalDocument.id
* group[=].element[=].target.code = #FRConditionDocument.evidence.detail:FRDocumentReferenceDocument.identifier
* group[=].element[=].target.equivalence = #equivalent
// Document référencé - référence externe (URL du document)
* group[=].element[+].code = #FRCDAProbleme.reference.externalDocument.text.reference
* group[=].element[=].target.code = #FRConditionDocument.evidence.detail:FRDocumentReferenceDocument.content.attachment.url
* group[=].element[=].target.equivalence = #equivalent
// Commentaire
* group[=].element[+].code = #FRCDAProbleme.entryRelationship:frCommentaireER
* group[=].element[=].target.code = #FRConditionDocument.note
* group[=].element[=].target.equivalence = #equivalent