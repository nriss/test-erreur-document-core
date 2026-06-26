Instance: FRAllergyIntoleranceLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMAllergieOuHypersensibilite / FRCDAAllergieOuHypersensibilite -> FRAllergyIntoleranceDocument"
Description: "Mapping des éléments du modèle métier FRLMAllergieOuHypersensibilite vers le profil CDA FRCDAAllergieOuHypersensibilite,puis vers le profil FHIR FRAllergyIntoleranceDocument."

* title = "Mapping Métier/CDA/FHIR : \"Allergie ou Hypersensibilité\""
* status = #draft

// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-allergie-ou-hypersensibilite"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-allergie-ou-hypersensibilite"

// Élément racine
* group[=].element[+].code = #FRLMAllergieOuHypersensibilite
* group[=].element[=].target.code = #FRCDAAllergieOuHypersensibilite
* group[=].element[=].target.equivalence = #equivalent
// Identifiant
* group[=].element[+].code = #FRLMAllergieOuHypersensibilite.identifiant
* group[=].element[=].target.code = #FRCDAAllergieOuHypersensibilite.id
* group[=].element[=].target.equivalence = #equivalent  
// Description narrative
* group[=].element[+].code = #FRLMAllergieOuHypersensibilite.description
* group[=].element[=].target.code = #FRCDAAllergieOuHypersensibilite.text
* group[=].element[=].target.equivalence = #equivalent  
// Type d'allergie / hypersensibilité non allergique / intolérance / idiosyncrasie
* group[=].element[+].code = #FRLMAllergieOuHypersensibilite.type
* group[=].element[=].target.code = #FRCDAAllergieOuHypersensibilite.code
* group[=].element[=].target.equivalence = #equivalent
// Statut
* group[=].element[+].code = #FRLMAllergieOuHypersensibilite.statut
* group[=].element[=].target.code = #FRCDAAllergieOuHypersensibilite.statusCode
* group[=].element[=].target.equivalence = #equivalent  
// Date de début et de fin
* group[=].element[+].code = #FRLMAllergieOuHypersensibilite.date
* group[=].element[=].target.code = #FRCDAAllergieOuHypersensibilite.effectiveTime
* group[=].element[=].target.equivalence = #equivalent  
// Agent responsable
* group[=].element[+].code = #FRLMAllergieOuHypersensibilite.participant
* group[=].element[=].target.code = #FRCDAAllergieOuHypersensibilite.participant
* group[=].element[=].target.equivalence = #equivalent  
// Réaction observée
* group[=].element[+].code = #FRLMAllergieOuHypersensibilite.probleme
* group[=].element[=].target.code = #FRCDAAllergieOuHypersensibilite.entryRelationship:frProbleme
* group[=].element[=].target.equivalence = #equivalent
// Statut clinique de l'allergie
* group[=].element[+].code = #FRLMAllergieOuHypersensibilite.statutClique
* group[=].element[=].target.code = #FRCDAAllergieOuHypersensibilite.entryRelationship:frStatutCliniqueAllergie
* group[=].element[=].target.equivalence = #equivalent
// Certitude
* group[=].element[+].code = #FRLMAllergieOuHypersensibilite.certitude
* group[=].element[=].target.code = #FRCDAAllergieOuHypersensibilite.entryRelationship:frCertitude
* group[=].element[=].target.equivalence = #equivalent  
// Criticité
* group[=].element[+].code = #FRLMAllergieOuHypersensibilite.criticite
* group[=].element[=].target.code = #FRCDAAllergieOuHypersensibilite.entryRelationship:frCriticite
* group[=].element[=].target.equivalence = #equivalent

// Groupe Mapping 2 : CDA → FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-allergie-ou-hypersensibilite"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-allergy-intolerance-document"   
// Élément racine
* group[=].element[+].code = #FRCDAAllergieOuHypersensibilite
* group[=].element[=].target.code = #FRAllergyIntoleranceDocument   
* group[=].element[=].target.equivalence = #equivalent
// Identifiant
* group[=].element[+].code = #FRCDAAllergieOuHypersensibilite.id
* group[=].element[=].target.code = #FRAllergyIntoleranceDocument.identifier   
* group[=].element[=].target.equivalence = #equivalent
// Description narrative
* group[=].element[+].code = #FRCDAAllergieOuHypersensibilite.text
* group[=].element[=].target.code = #FRAllergyIntoleranceDocument.code.Text   
* group[=].element[=].target.equivalence = #equivalent
// Type d'allergie / hypersensibilité non allergique / intolérance / idiosyncrasie
* group[=].element[+].code = #FRCDAAllergieOuHypersensibilite.code
* group[=].element[=].target.code = #FRAllergyIntoleranceDocument.code   
* group[=].element[=].target.equivalence = #equivalent
// Statut
* group[=].element[+].code = #FRCDAAllergieOuHypersensibilite.statusCode
* group[=].element[=].target.equivalence = #unmatched
// Date de début et de fin
* group[=].element[+].code = #FRCDAAllergieOuHypersensibilite.effectiveTime
* group[=].element[=].target.code = #FRAllergyIntoleranceDocument.onsetPeriod  
* group[=].element[=].target.equivalence = #equivalent  
// Réaction observée
* group[=].element[+].code = #FRCDAAllergieOuHypersensibilite.entryRelationship:frProbleme
* group[=].element[=].target.code = #FRAllergyIntoleranceDocument.reaction   
* group[=].element[=].target.equivalence = #equivalent
// Agent responsable de l'allergie ou intolérance
* group[=].element[+].code = #FRCDAAllergieOuHypersensibilite.participant
* group[=].element[=].target.code = #FRAllergyIntoleranceDocument.reaction.substance   
* group[=].element[=].target.equivalence = #equivalent
// Statut clinique de l'allergie
* group[=].element[+].code = #FRCDAAllergieOuHypersensibilite.entryRelationship:frStatutCliniqueAllergie
* group[=].element[=].target.code = #FRAllergyIntoleranceDocument.clinicalStatus   
* group[=].element[=].target.equivalence = #equivalent
// Certitude
* group[=].element[+].code = #FRCDAAllergieOuHypersensibilite.entryRelationship:frCertitude 
* group[=].element[=].target.code = #FRAllergyIntoleranceDocument.verificationStatus   
* group[=].element[=].target.equivalence = #equivalent
// Criticité
* group[=].element[+].code = #FRCDAAllergieOuHypersensibilite.entryRelationship:frCriticite
* group[=].element[=].target.code = #FRAllergyIntoleranceDocument.criticality   
* group[=].element[=].target.equivalence = #equivalent  
