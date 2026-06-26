Instance: FRAllowedSubstitutionLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMAutorisationSubstitution → FRCDAAutorisationSubstitution → FRMedicationRequestDocument.substitution.allowedCodeableConcept"
Description: "Mapping des éléments du modèle métier FRLMAutorisationSubstitution vers le profil CDA FRCDAAutorisationSubstitution, puis vers l'élément substitution.allowedCodeableConcept du profil FHIR FRMedicationRequestDocument."
* title = "Mapping Métier/CDA/FHIR : \"Autorisation substitution\""
* status = #draft
// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-autorisation-substitution"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-autorisation-substitution"
// Élément racine   
* group[=].element[+].code = #FRLMAutorisationSubstitution
* group[=].element[=].target.code = #FRCDAAutorisationSubstitution
* group[=].element[=].target.equivalence = #equivalent
// Type de substitution
* group[=].element[+].code = #FRLMAutorisationSubstitution.typeSubstitution
* group[=].element[=].target.code = #FRCDAAutorisationSubstitution.code
* group[=].element[=].target.equivalence = #equivalent
// Statut de l'entrée
* group[=].element[+].code = #FRLMAutorisationSubstitution.status
* group[=].element[=].target.code = #FRCDAAutorisationSubstitution.statusCode
* group[=].element[=].target.equivalence = #equivalent

// Groupe Mapping 2 : CDA → FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-autorisation-substitution"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-medication-request-document"
// Élément racine
* group[=].element[+].code = #FRCDAAutorisationSubstitution
* group[=].element[=].target.code = #FRMedicationRequestDocument.substitution
* group[=].element[=].target.equivalence = #equivalent
// Type de substitution
* group[=].element[+].code = #FRCDAAutorisationSubstitution.code
* group[=].element[=].target.code = #FRMedicationRequestDocument.substitution.allowedCodeableConcept
* group[=].element[=].target.equivalence = #equivalent
// Statut de l'entrée (pas de mapping possible car FRMedicationRequestDocument.substitution n'a pas d'élément 'status')
* group[=].element[+].code = #FRCDAAutorisationSubstitution.statusCode
* group[=].element[=].target.equivalence = #unmatched
* group[=].element[=].target.comment = "FRMedicationRequestDocument.substitution ne possède pas d'élément 'status' pour mapper cette donnée."