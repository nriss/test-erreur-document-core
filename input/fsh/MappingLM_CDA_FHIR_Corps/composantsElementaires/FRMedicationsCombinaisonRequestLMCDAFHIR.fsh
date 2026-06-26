Instance: FRMedicationsCombinaisonRequestLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMTraitementPrescritSubordonne → FRCDATraitementPrescritSubordonne → FRMedicationsCombinaisonDocument"
Description: "Mapping des éléments du modèle métier FRLMTraitementPrescritSubordonne vers la sous-entrée CDA FRCDATraitementSubordonne puis vers le profil FHIR FRMedicationsCombinaisonDocument."
* title = "Mapping Métier/CDA/FHIR : Traitement prescrit subordonné"
* status = #draft

// Groupe Mapping 1 : modèle métier → CDA (sous-entrée)
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-traitement-prescrit-subordonne"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-traitement-prescrit-subordonne"
// élément racine
* group[=].element[+].code = #FRLMTraitementPrescritSubordonne
* group[=].element[=].target.code = #FRCDATraitementPrescritSubordonne
* group[=].element[=].target.equivalence = #equivalent
// identifiant
* group[=].element[+].code = #FRLMTraitementPrescritSubordonne.identifiant
* group[=].element[=].target.code = #FRCDATraitementPrescritSubordonne.id
* group[=].element[=].target.equivalence = #equivalent
// description / texte narratif
* group[=].element[+].code = #FRLMTraitementPrescritSubordonne.description
* group[=].element[=].target.code = #FRCDATraitementPrescritSubordonne.text
* group[=].element[=].target.equivalence = #equivalent
// statut
* group[=].element[+].code = #FRLMTraitementPrescritSubordonne.status
* group[=].element[=].target.code = #FRCDATraitementPrescritSubordonne.statusCode
* group[=].element[=].target.equivalence = #equivalent
// fréquence d'administration
* group[=].element[+].code = #FRLMTraitementPrescritSubordonne.frequenceAdministration
* group[=].element[=].target.code = #FRCDATraitementPrescritSubordonne.effectiveTime
* group[=].element[=].target.equivalence = #equivalent
// Dose à administrer
* group[=].element[+].code = #FRLMTraitementPrescritSubordonne.dose
* group[=].element[=].target.code = #FRCDATraitementPrescritSubordonne.doseQuantity
* group[=].element[=].target.equivalence = #equivalent
// rythme d'administration
* group[=].element[+].code = #FRLMTraitementPrescritSubordonne.rythmeAdministration
* group[=].element[=].target.code = #FRCDATraitementPrescritSubordonne.rateQuantity
* group[=].element[=].target.equivalence = #equivalent
// produit de santé
* group[=].element[+].code = #FRLMTraitementPrescritSubordonne.produitSante
* group[=].element[=].target.code = #FRCDAProduitDeSante.consumable
* group[=].element[=].target.equivalence = #equivalent
// précondition à l'utilisation du médicament
* group[=].element[+].code = #FRLMTraitementPrescritSubordonne.precondition
* group[=].element[=].target.code = #FRCDATraitementPrescritSubordonne.precondition
* group[=].element[=].target.equivalence = #equivalent


// Groupe Mapping 2 : CDA (sous-entrée FRCDATraitementPrescritSubordonne) → FHIR MedicationsCombinaisonDocument
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-traitement-prescrit-subordonne"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-medications-combinaison-document"

// Identifiant -> Medication.identifier
* group[=].element[+].code = #FRCDATraitementPrescritSubordonne.id
* group[=].element[=].target.code = #FRMedicationsCombinaisonDocument.identifier
* group[=].element[=].target.equivalence = #equivalent
// Texte narratif
* group[=].element[+].code = #FRCDATraitementPrescritSubordonne.text
* group[=].element[=].target.code = #FRMedicationsCombinaisonDocument.code.text
* group[=].element[=].target.equivalence = #equivalent
// statut
* group[=].element[+].code = #FRCDATraitementPrescritSubordonne.statusCode
* group[=].element[=].target.code = #FRMedicationsCombinaisonDocument.status
* group[=].element[=].target.equivalence = #equivalent
// produit de santé
* group[=].element[+].code = #FRCDATraitementPrescritSubordonne.consumable
* group[=].element[=].target.code = #FRMedicationsCombinaisonDocument.ingredient.itemReference:FRMedicationDocument
* group[=].element[=].target.equivalence = #equivalent
