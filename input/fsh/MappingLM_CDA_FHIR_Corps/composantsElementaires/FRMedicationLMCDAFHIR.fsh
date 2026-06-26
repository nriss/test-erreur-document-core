Instance: FRMedicationLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMProduitSante → FRCDAProduitDeSante → FRMedicationDocument"
Description: "Mapping des éléments du modèle métier FRLMProduitSante vers le profil CDA FRCDAProduitDeSante, puis vers le profil FHIR FRMedicationDocument."
* title = "Mapping Métier/CDA/FHIR : \"Produit de santé\""
* status = #draft

// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-produit-sante"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-produit-de-sante"
// Élément racine
* group[=].element[+].code = #FRLMProduitSante
* group[=].element[=].target.code = #FRCDAProduitDeSante
* group[=].element[=].target.equivalence = #equivalent
// Médicament
* group[=].element[+].code = #FRLMProduitSante.medicament
* group[=].element[=].target.code = #FRCDAProduitDeSante.manufacturedProduct.manufacturedMaterial
* group[=].element[=].target.equivalence = #equivalent
// Code du produit de santé
* group[=].element[+].code = #FRLMProduitSante.medicament.code
* group[=].element[=].target.code = #FRCDAProduitDeSante.manufacturedProduct.manufacturedMaterial.code
* group[=].element[=].target.equivalence = #equivalent
// Produit de santé / Autre codification
* group[=].element[+].code = #FRLMProduitSante.medicament.code.autreCodification
* group[=].element[=].target.code = #FRCDAProduitDeSante.manufacturedProduct.manufacturedMaterial.code.translation
* group[=].element[=].target.equivalence = #equivalent
// Nom du produit
* group[=].element[+].code = #FRLMProduitSante.nomProduit
* group[=].element[=].target.code = #FRCDAProduitDeSante.manufacturedProduct.manufacturedMaterial.name
* group[=].element[=].target.equivalence = #equivalent
// forme galénique
* group[=].element[+].code = #FRLMProduitSante.formeGalenique
* group[=].element[=].target.code = #FRCDAProduitDeSante.manufacturedProduct.manufacturedMaterial.pharm:formCode
* group[=].element[=].target.equivalence = #equivalent
// numéro du lot
* group[=].element[+].code = #FRLMProduitSante.numeroLot
* group[=].element[=].target.code = #FRCDAProduitDeSante.manufacturedProduct.manufacturedMaterial.lotNumberText
* group[=].element[=].target.equivalence = #equivalent
// Date d'expiration du produit'
* group[=].element[+].code = #FRLMProduitSante.dateExpiration
* group[=].element[=].target.code = #FRCDAProduitDeSante.pharm:expirationTime
* group[=].element[=].target.equivalence = #equivalent
// conditionnement
* group[=].element[+].code = #FRLMProduitSante.conditionnement
* group[=].element[=].target.code = #FRCDAProduitDeSante.pharm:asContent
* group[=].element[=].target.equivalence = #equivalent
// Code de regroupement ATC
* group[=].element[+].code = #FRLMProduitSante.equivalentGenerique
* group[=].element[=].target.code = #FRCDAProduitDeSante.pharm:asSpecializedKind
* group[=].element[=].target.equivalence = #equivalent
// substance Active
* group[=].element[+].code = #FRLMProduitSante.substanceActive
* group[=].element[=].target.code = #FRCDAProduitDeSante.pharm:ingredient
* group[=].element[=].target.equivalence = #equivalent

// Groupe Mapping 2 : CDA → FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-produit-de-sante"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-medication-document"
// Élément racine
* group[=].element[+].code = #FRCDAProduitDeSante
* group[=].element[=].target.code = #FRMedicationDocument
* group[=].element[=].target.equivalence = #equivalent
// Code du produit de santé
* group[=].element[+].code = #FRCDAProduitDeSante.manufacturedProduct.manufacturedMaterial.code
* group[=].element[=].target.code = #FRMedicationDocument.code
* group[=].element[=].target.equivalence = #equivalent
// Produit de santé / Autre codification
* group[=].element[+].code = #FRCDAProduitDeSante.manufacturedProduct.manufacturedMaterial.code.translation
* group[=].element[=].target.code = #FRMedicationDocument.code.coding
* group[=].element[=].target.equivalence = #equivalent
// Nom du produit
* group[=].element[+].code = #FRCDAProduitDeSante.manufacturedProduct.manufacturedMaterial.name
* group[=].element[=].target.code = #FRMedicationDocument.extension:ihe-ext-medication-productname
* group[=].element[=].target.equivalence = #equivalent
// forme galénique
* group[=].element[+].code = #FRCDAProduitDeSante.manufacturedProduct.manufacturedMaterial.pharm:formCode
* group[=].element[=].target.code = #FRMedicationDocument.form
* group[=].element[=].target.equivalence = #equivalent
// numéro du lot
* group[=].element[+].code = #FRCDAProduitDeSante.manufacturedProduct.manufacturedMaterial.lotNumberText
* group[=].element[=].target.code = #FRMedicationDocument.batch.lotNumber
* group[=].element[=].target.equivalence = #equivalent
// Date d'expiration du produit'
* group[=].element[+].code = #FRCDAProduitDeSante.pharm:expirationTime
* group[=].element[=].target.code = #FRMedicationDocument.batch.expirationDate
* group[=].element[=].target.equivalence = #equivalent
// conditionnement
* group[=].element[+].code = #FRCDAProduitDeSante.pharm:asContent
* group[=].element[=].target.code = #FRMedicationDocument.extension:ihe-ext-medication-characteristic
* group[=].element[=].target.equivalence = #equivalent
// Code de regroupement ATC
* group[=].element[+].code = #FRCDAProduitDeSante.pharm:asSpecializedKind
* group[=].element[=].target.code = #FRMedicationDocument.extension:ihe-ext-medication-classification
* group[=].element[=].target.equivalence = #equivalent
// substance Active
* group[=].element[+].code = #FRCDAProduitDeSante.pharm:ingredient
* group[=].element[=].target.code = #FRMedicationDocument.ingredient:substanceActive
* group[=].element[=].target.equivalence = #equivalent
// dosage de la substance Active
* group[=].element[+].code = #FRCDAProduitDeSante.pharm:ingredient.pharm:quantity
* group[=].element[=].target.code = #FRMedicationDocument.ingredient:substanceActive.strength
* group[=].element[=].target.equivalence = #equivalent
// Code SMS de la substance active
* group[=].element[+].code = #FRCDAProduitDeSante.pharm:ingredient.pharm:ingredient.pharm:code
* group[=].element[=].target.code = #FRMedicationDocument.ingredient:substanceActive.itemCodeableConcept
* group[=].element[=].target.equivalence = #equivalent
// nom de la substance active
* group[=].element[+].code = #FRCDAProduitDeSante.pharm:ingredient.pharm:ingredient.pharm:name
* group[=].element[=].target.code = #FRMedicationDocument.ingredient:substanceActive.itemCodeableConcept.text
* group[=].element[=].target.equivalence = #equivalent