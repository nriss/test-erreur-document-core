Instance: FRMedicationsCombinaisonLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMTraitementSubordonne → FRCDATraitementSubordonne → FRMedicationsCombinaisonDocument"
Description: "Mapping des éléments du modèle métier FRLMTraitementSubordonne vers la sous-entrée CDA FRCDATraitementSubordonne puis vers le profil FHIR FRMedicationsCombinaisonDocument."
* title = "Mapping Métier/CDA/FHIR : Traitement subordonné"
* status = #draft

// Groupe Mapping 1 : modèle métier → CDA (sous-entrée)
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-traitement-subordonne"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-traitement-subordonne"
// élément racine
* group[=].element[+].code = #FRLMTraitementSubordonne
* group[=].element[=].target.code = #FRCDATraitementSubordonne
* group[=].element[=].target.equivalence = #equivalent
// identifiant
* group[=].element[+].code = #FRLMTraitementSubordonne.identifiantTraitement
* group[=].element[=].target.code = #FRCDATraitementSubordonne.id
* group[=].element[=].target.equivalence = #equivalent
// description / texte narratif
* group[=].element[+].code = #FRLMTraitementSubordonne.descriptionTraitement
* group[=].element[=].target.code = #FRCDATraitementSubordonne.text
* group[=].element[=].target.equivalence = #equivalent
// statut
* group[=].element[+].code = #FRLMTraitementSubordonne.statutTraitement
* group[=].element[=].target.code = #FRCDATraitementSubordonne.statusCode
* group[=].element[=].target.equivalence = #equivalent
// fréquence d'administration / effectiveTime
* group[=].element[+].code = #FRLMTraitementSubordonne.frequenceAdministration
* group[=].element[=].target.code = #FRCDATraitementSubordonne.effectiveTime
* group[=].element[=].target.equivalence = #equivalent
// Dose à administrer
* group[=].element[+].code = #FRLMTraitementSubordonne.doseAadministrer
* group[=].element[=].target.code = #FRCDATraitementSubordonne.doseQuantity
* group[=].element[=].target.equivalence = #equivalent
// rythme d'administration
* group[=].element[+].code = #FRLMTraitementSubordonne.rythmeAdministration
* group[=].element[=].target.code = #FRCDATraitementSubordonne.rateQuantity
* group[=].element[=].target.equivalence = #equivalent
// produit de santé
* group[=].element[+].code = #FRLMTraitementSubordonne.medicamentTraitement
* group[=].element[=].target.code = #FRCDAProduitDeSante.consumable
* group[=].element[=].target.equivalence = #equivalent
// précondition à l'utilisation du médicament
* group[=].element[+].code = #FRLMTraitementSubordonne.preconditionTraitement
* group[=].element[=].target.code = #FRCDATraitementSubordonne.precondition
* group[=].element[=].target.equivalence = #equivalent


// Groupe Mapping 2 : CDA (sous-entrée FRCDATraitementSubordonne) → FHIR MedicationsCombinaisonDocument
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-traitement-subordonne"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-medications-combinaison-document"

// Identifiant
* group[=].element[+].code = #FRCDATraitementSubordonne.id
* group[=].element[=].target.code = #FRMedicationsCombinaisonDocument.identifier
* group[=].element[=].target.equivalence = #equivalent
// Texte narratif
* group[=].element[+].code = #FRCDATraitementSubordonne.text
* group[=].element[=].target.code = #FRMedicationsCombinaisonDocument.code.text
* group[=].element[=].target.equivalence = #equivalent
// statut
* group[=].element[+].code = #FRCDATraitementSubordonne.statusCode
* group[=].element[=].target.code = #FRMedicationsCombinaisonDocument.status
* group[=].element[=].target.equivalence = #equivalent
// produit de santé
* group[=].element[+].code = #FRCDATraitementSubordonne.consumable
* group[=].element[=].target.code = #FRMedicationsCombinaisonDocument.ingredient.itemReference:FRMedicationDocument
* group[=].element[=].target.equivalence = #equivalent
