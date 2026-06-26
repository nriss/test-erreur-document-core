Instance: FRImagingMedicationAministrationLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMAdministrationProduitDeSante -> FRCDADICOMAdministrationProduitDeSante -> FRMedicationAdministrationDocument"
Description: "Mapping des éléments du modele metier FRLMAdministrationProduitDeSante vers le profil CDA FRCDADICOMAdministrationProduitDeSante, puis vers le profil FHIR FRMedicationAdministrationDocument."
* title = "Mapping Metier/CDA/FHIR : \"Administration de produit de sante en imagerie\""
* status = #draft

// Groupe Mapping 1 : modele metier -> CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-administration-produit-de-sante"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-dicom-administration-produit-de-sante"
// Element racine
* group[=].element[+].code = #FRLMAdministrationProduitDeSante
* group[=].element[=].target.code = #FRCDADICOMAdministrationProduitDeSante
* group[=].element[=].target.equivalence = #equivalent
// Identifiant
* group[=].element[+].code = #FRLMAdministrationProduitDeSante.identifiant
* group[=].element[=].target.code = #FRCDADICOMAdministrationProduitDeSante.id
* group[=].element[=].target.equivalence = #equivalent
// Description
* group[=].element[+].code = #FRLMAdministrationProduitDeSante.description
* group[=].element[=].target.code = #FRCDADICOMAdministrationProduitDeSante.text
* group[=].element[=].target.equivalence = #equivalent
// Statut
* group[=].element[+].code = #FRLMAdministrationProduitDeSante.statut
* group[=].element[=].target.code = #FRCDADICOMAdministrationProduitDeSante.statusCode
* group[=].element[=].target.equivalence = #equivalent
// Voie d'administration
* group[=].element[+].code = #FRLMAdministrationProduitDeSante.voieAdministration
* group[=].element[=].target.code = #FRCDADICOMAdministrationProduitDeSante.routeCode
* group[=].element[=].target.equivalence = #equivalent
// Dose
* group[=].element[+].code = #FRLMAdministrationProduitDeSante.dose
* group[=].element[=].target.code = #FRCDADICOMAdministrationProduitDeSante.doseQuantity
* group[=].element[=].target.equivalence = #equivalent
// Rythme d'administration
* group[=].element[+].code = #FRLMAdministrationProduitDeSante.rythme
* group[=].element[=].target.code = #FRCDADICOMAdministrationProduitDeSante.rateQuantity
* group[=].element[=].target.equivalence = #equivalent
// Produit de sante
* group[=].element[+].code = #FRLMAdministrationProduitDeSante.medicament.produit
* group[=].element[=].target.code = #FRCDADICOMAdministrationProduitDeSante.consumable.manufacturedProduct.manufacturedMaterial
* group[=].element[=].target.equivalence = #equivalent
// Code du produit
* group[=].element[+].code = #FRLMAdministrationProduitDeSante.medicament.produit.codeProduit
* group[=].element[=].target.code = #FRCDADICOMAdministrationProduitDeSante.consumable.manufacturedProduct.manufacturedMaterial.code
* group[=].element[=].target.equivalence = #equivalent
// Autre codification
* group[=].element[+].code = #FRLMAdministrationProduitDeSante.medicament.produit.codeProduit.autreCodification
* group[=].element[=].target.code = #FRCDADICOMAdministrationProduitDeSante.consumable.manufacturedProduct.manufacturedMaterial.code.translation
* group[=].element[=].target.equivalence = #equivalent
// Nom de marque
* group[=].element[+].code = #FRLMAdministrationProduitDeSante.medicament.produit.nomMarque
* group[=].element[=].target.code = #FRCDADICOMAdministrationProduitDeSante.consumable.manufacturedProduct.manufacturedMaterial.name
* group[=].element[=].target.equivalence = #equivalent
// Numero de lot
* group[=].element[+].code = #FRLMAdministrationProduitDeSante.medicament.produit.numeroLot
* group[=].element[=].target.code = #FRCDADICOMAdministrationProduitDeSante.consumable.manufacturedProduct.manufacturedMaterial.lotNumberText
* group[=].element[=].target.equivalence = #equivalent

// Groupe Mapping 2 : CDA -> FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-dicom-administration-produit-de-sante"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-medication-administration-document"
// Element racine
* group[=].element[+].code = #FRCDADICOMAdministrationProduitDeSante
* group[=].element[=].target.code = #FRMedicationAdministrationDocument
* group[=].element[=].target.equivalence = #equivalent
// Identifiant
* group[=].element[+].code = #FRCDADICOMAdministrationProduitDeSante.id
* group[=].element[=].target.code = #FRMedicationAdministrationDocument.identifier
* group[=].element[=].target.equivalence = #equivalent
// Description
* group[=].element[+].code = #FRCDADICOMAdministrationProduitDeSante.text
* group[=].element[=].target.code = #FRMedicationAdministrationDocument.category.text
* group[=].element[=].target.equivalence = #equivalent
// Statut
* group[=].element[+].code = #FRCDADICOMAdministrationProduitDeSante.statusCode
* group[=].element[=].target.code = #FRMedicationAdministrationDocument.status
* group[=].element[=].target.equivalence = #equivalent
// Voie d'administration
* group[=].element[+].code = #FRCDADICOMAdministrationProduitDeSante.routeCode
* group[=].element[=].target.code = #FRMedicationAdministrationDocument.dosage.route
* group[=].element[=].target.equivalence = #equivalent
// Dose
* group[=].element[+].code = #FRCDADICOMAdministrationProduitDeSante.doseQuantity
* group[=].element[=].target.code = #FRMedicationAdministrationDocument.dosage.dose
* group[=].element[=].target.equivalence = #equivalent
// Rythme d'administration
* group[=].element[+].code = #FRCDADICOMAdministrationProduitDeSante.rateQuantity
* group[=].element[=].target.code = #FRMedicationAdministrationDocument.dosage.rate[x]
* group[=].element[=].target.equivalence = #equivalent
// Medicament
* group[=].element[+].code = #FRCDADICOMAdministrationProduitDeSante.consumable
* group[=].element[=].target.code = #FRMedicationAdministrationDocument.medication:FRMedicationDocument
* group[=].element[=].target.equivalence = #equivalent
