Instance: FRObservationBloodProductTransfusionLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMTransfusionDeProduitsSanguins → FRCDATransfusionDeProduitsSanguins → FRObservationBloodProductTransfusionDocument"
Description: "Mapping des éléments du modèle métier FRLMTransfusionDeProduitsSanguins vers la sous-entrée CDA FRCDATransfusionDeProduitsSanguins puis vers le profil FHIR FRObservationBloodProductTransfusionDocument."
* title = "Mapping Métier/CDA/FHIR : Transfusion de produits sanguins"
* status = #draft

// Groupe Mapping 1 : modèle métier → CDA (sous-entrée)
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-transfusion-de-produits-sanguins"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-transfusion-de-produits-sanguins"

// élément racine
* group[=].element[+].code = #FRLMTransfusionDeProduitsSanguins
* group[=].element[=].target.code = #FRCDATransfusionDeProduitsSanguins
* group[=].element[=].target.equivalence = #equivalent
// identifiant
* group[=].element[+].code = #FRLMTransfusionDeProduitsSanguins.identifiant
* group[=].element[=].target.code = #FRCDATransfusionDeProduitsSanguins.id
* group[=].element[=].target.equivalence = #equivalent
// code
* group[=].element[+].code = #FRLMTransfusionDeProduitsSanguins.code
* group[=].element[=].target.code = #FRCDATransfusionDeProduitsSanguins.code
* group[=].element[=].target.equivalence = #equivalent
// description
* group[=].element[+].code = #FRLMTransfusionDeProduitsSanguins.description
* group[=].element[=].target.code = #FRCDATransfusionDeProduitsSanguins.text
* group[=].element[=].target.equivalence = #equivalent
// statut
* group[=].element[+].code = #FRLMTransfusionDeProduitsSanguins.statut
* group[=].element[=].target.code = #FRCDATransfusionDeProduitsSanguins.statusCode
* group[=].element[=].target.equivalence = #equivalent
// date
* group[=].element[+].code = #FRLMTransfusionDeProduitsSanguins.date
* group[=].element[=].target.code = #FRCDATransfusionDeProduitsSanguins.effectiveTime
* group[=].element[=].target.equivalence = #equivalent
// transfusionProduitSanguin
* group[=].element[+].code = #FRLMTransfusionDeProduitsSanguins.transfusionProduitSanguin
* group[=].element[=].target.code = #FRCDATransfusionDeProduitsSanguins.value
* group[=].element[=].target.equivalence = #equivalent
// auteur
* group[=].element[+].code = #FRLMTransfusionDeProduitsSanguins.auteur
* group[=].element[=].target.code = #FRCDATransfusionDeProduitsSanguins.author
* group[=].element[=].target.equivalence = #equivalent

// Groupe Mapping 2 : CDA (sous-entrée FRCDATransfusionDeProduitsSanguins) → FHIR ObservationBloodProductTransfusionDocument
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-transfusion-de-produits-sanguins"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-observation-blood-product-transfusion-document"

// élément racine
* group[=].element[+].code = #FRCDATransfusionDeProduitsSanguins
* group[=].element[=].target.code = #FRObservationBloodProductTransfusionDocument
* group[=].element[=].target.equivalence = #equivalent
// Identifiant
* group[=].element[+].code = #FRCDATransfusionDeProduitsSanguins.id
* group[=].element[=].target.code = #FRObservationBloodProductTransfusionDocument.identifier
* group[=].element[=].target.equivalence = #equivalent
// Code
* group[=].element[+].code = #FRCDATransfusionDeProduitsSanguins.code
* group[=].element[=].target.code = #FRObservationBloodProductTransfusionDocument.code
* group[=].element[=].target.equivalence = #equivalent
// Description / Texte narratif
* group[=].element[+].code = #FRCDATransfusionDeProduitsSanguins.text
* group[=].element[=].target.code = #FRObservationBloodProductTransfusionDocument.note.text
* group[=].element[=].target.equivalence = #equivalent
// Statut
* group[=].element[+].code = #FRCDATransfusionDeProduitsSanguins.statusCode
* group[=].element[=].target.code = #FRObservationBloodProductTransfusionDocument.status
* group[=].element[=].target.equivalence = #equivalent
// Date
* group[=].element[+].code = #FRCDATransfusionDeProduitsSanguins.effectiveTime
* group[=].element[=].target.code = #FRObservationBloodProductTransfusionDocument.effectiveDateTime
* group[=].element[=].target.equivalence = #equivalent
// transfusionProduitSanguin
* group[=].element[+].code = #FRCDATransfusionDeProduitsSanguins.value
* group[=].element[=].target.code = #FRObservationBloodProductTransfusionDocument.valueBoolean
* group[=].element[=].target.equivalence = #equivalent
// Auteur
* group[=].element[+].code = #FRCDATransfusionDeProduitsSanguins.author
* group[=].element[=].target.code = #FRObservationBloodProductTransfusionDocument.performer.extension:author
* group[=].element[=].target.equivalence = #equivalent
