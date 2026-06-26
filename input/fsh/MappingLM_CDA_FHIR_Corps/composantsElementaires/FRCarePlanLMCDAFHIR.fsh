Instance: FRCarePlanLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMReferenceItemPlanTraitement → FRCDAReferenceItemPlanTraitement → FRCarePlanDocument"
Description: "Mapping des éléments du modèle métier FRLMReferenceItemPlanTraitement vers le profil CDA FRCDAReferenceItemPlanTraitement, puis vers le profil FHIR FRCarePlanDocument."

* title = "Mapping Métier/CDA/FHIR : \"Référence Item Plan Traitement\""
* status = #active

// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-reference-item-plan-traitement"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-reference-item-plan-traitement"

// Élément racine
* group[=].element[+].code = #FRLMReferenceItemPlanTraitement   
* group[=].element[=].target.code = #FRCDAReferenceItemPlanTraitement
* group[=].element[=].target.equivalence = #equivalent
// Identifiant
* group[=].element[+].code = #FRLMReferenceItemPlanTraitement.identifiant
* group[=].element[=].target.code = #FRCDAReferenceItemPlanTraitement.id
* group[=].element[=].target.equivalence = #equivalent  
// Code
* group[=].element[+].code = #FRLMReferenceItemPlanTraitement.code
* group[=].element[=].target.code = #FRCDAReferenceItemPlanTraitement.code
* group[=].element[=].target.equivalence = #equivalent
// Produit de santé
* group[=].element[+].code = #FRLMReferenceItemPlanTraitement.produitSante
* group[=].element[=].target.code = #FRCDAReferenceItemPlanTraitement.consumable
* group[=].element[=].target.equivalence = #equivalent  
// Auteur
* group[=].element[+].code = #FRLMReferenceItemPlanTraitement.auteur
* group[=].element[=].target.code = #FRCDAReferenceItemPlanTraitement.author
* group[=].element[=].target.equivalence = #equivalent  
// Traitement prescrit
* group[=].element[+].code = #FRLMReferenceItemPlanTraitement.traitementPrescrit
* group[=].element[=].target.code = #FRCDAReferenceItemPlanTraitement.entryRelationship:frItemPlanTraitement
* group[=].element[=].target.equivalence = #equivalent  
// Référence
* group[=].element[+].code = #FRLMReferenceItemPlanTraitement.reference
* group[=].element[=].target.code = #FRCDAReferenceItemPlanTraitement.reference
* group[=].element[=].target.equivalence = #equivalent  
// Document référencé - identifiant
* group[=].element[+].code = #FRLMReferenceItemPlanTraitement.reference.externalDocument.identifiant
* group[=].element[=].target.code = #FRCDAReferenceItemPlanTraitement.reference.externalDocument.id
* group[=].element[=].target.equivalence = #equivalent


// Groupe Mapping 2 : CDA → FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-reference-item-plan-traitement"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-care-plan-document"
// Élément racine
* group[=].element[+].code = #FRCDAReferenceItemPlanTraitement   
* group[=].element[=].target.code = #FRCarePlanDocument
* group[=].element[=].target.equivalence = #equivalent
// Identifiant
* group[=].element[+].code = #FRCDAReferenceItemPlanTraitement.id
* group[=].element[=].target.code = #FRCarePlanDocument.identifier
* group[=].element[=].target.equivalence = #equivalent
// Code 
* group[=].element[+].code = #FRCDAReferenceItemPlanTraitement.code
* group[=].element[=].target.code = #FRCarePlanDocument.category
* group[=].element[=].target.equivalence = #equivalent
// Produit de santé
* group[=].element[+].code = #FRCDAReferenceItemPlanTraitement.consumable
* group[=].element[=].target.code = #FRCarePlanDocument.activity.detail.productReference
* group[=].element[=].target.equivalence = #equivalent  
// Auteur
* group[=].element[+].code = #FRCDAReferenceItemPlanTraitement.author
* group[=].element[=].target.code = #FRCarePlanDocument.author  
* group[=].element[=].target.equivalence = #equivalent  
// Traitement prescrit  
* group[=].element[+].code = #FRCDAReferenceItemPlanTraitement.entryRelationship:frItemPlanTraitement
* group[=].element[=].target.code = #FRCarePlanDocument.activity.reference:FRMedicationRequestDocument
* group[=].element[=].target.equivalence = #equivalent
// Référence
* group[=].element[+].code = #FRCDAReferenceItemPlanTraitement.reference
* group[=].element[=].target.code = #FRCarePlanDocument.activity.reference:FRMedicationRequestDocument
* group[=].element[=].target.equivalence = #equivalent
// Document référencé - identifiant
* group[=].element[+].code = #FRCDAReferenceItemPlanTraitement.reference.externalDocument.id
* group[=].element[=].target.code = #FRCarePlanDocument.activity.reference:FRMedicationRequestDocument.identifier
* group[=].element[=].target.equivalence = #equivalent
