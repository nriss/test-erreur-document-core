Instance: FRActSubstitutionLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMActeSubstitution → FRCDAActeSubstitution → FRMedicationDispenseDocument"
Description: "Mapping des éléments du modèle métier FRLMActeSubstitution vers le profil CDA FRCDAActeSubstitution, puis vers le profil FHIR FRMedicationDispenseDocument."
* title = "Mapping Métier/CDA/FHIR : \"Acte substitution\"" 
* status = #draft
// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-acte-substitution"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-acte-substitution"
// Élément racine
* group[=].element[+].code = #FRLMActeSubstitution
* group[=].element[=].target.code = #FRCDAActeSubstitution
* group[=].element[=].target.equivalence = #equivalent
// Code de l'entrée
* group[=].element[+].code = #FRLMActeSubstitution.code
* group[=].element[=].target.code = #FRCDAActeSubstitution.code
* group[=].element[=].target.equivalence = #equivalent
// Statut de l'entrée
* group[=].element[+].code = #FRLMActeSubstitution.statut
* group[=].element[=].target.code = #FRCDAActeSubstitution.statusCode
* group[=].element[=].target.equivalence = #equivalent

// Groupe Mapping 2 : CDA → FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-acte-substitution"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-medication-dispense-document"
// Élément racine
* group[=].element[+].code = #FRCDAActeSubstitution
* group[=].element[=].target.code = #FRMedicationDispenseDocument
* group[=].element[=].target.equivalence = #equivalent
// Code de l'entrée
* group[=].element[+].code = #FRCDAActeSubstitution.code
* group[=].element[=].target.code = #FRMedicationDispenseDocument.substitution.type
* group[=].element[=].target.equivalence = #equivalent
// Statut de l'entrée
* group[=].element[+].code = #FRCDAActeSubstitution.statusCode
* group[=].element[=].target.code = #FRMedicationDispenseDocument.status
* group[=].element[=].target.equivalence = #equivalent