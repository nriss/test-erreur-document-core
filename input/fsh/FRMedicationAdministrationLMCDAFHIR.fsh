Instance: FRMedicationAdministrationLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMTraitement → FRCDATraitement → FRMedicationAdministrationDocument"
Description: "Mapping des éléments du modèle métier FRLMTraitement vers le profil CDA FRCDATraitement, puis vers le profil FHIR FRMedicationAdministrationDocument."
* title = "Mapping Métier/CDA/FHIR : \"Traitement déjà administré\""
* status = #draft

// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-traitement"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-traitement"
// Élément racine  
* group[=].element[+].code = #FRLMTraitement
* group[=].element[=].target.code = #FRCDATraitement
* group[=].element[=].target.equivalence = #equivalent
// identifiant
* group[=].element[+].code = #FRLMTraitement.identifiant
* group[=].element[=].target.code = #FRCDATraitement.id
* group[=].element[=].target.equivalence = #equivalent
// Acte ou situation
* group[=].element[+].code = #FRLMTraitement.code
* group[=].element[=].target.code = #FRCDATraitement.code
* group[=].element[=].target.equivalence = #equivalent
// Partie narrative 
* group[=].element[+].code = #FRLMTraitement.note
* group[=].element[=].target.code = #FRCDATraitement.text
* group[=].element[=].target.equivalence = #equivalent
// Statut
* group[=].element[+].code = #FRLMTraitement.status
* group[=].element[=].target.code = #FRCDATraitement.statusCode
* group[=].element[=].target.equivalence = #equivalent
// Durée du traitement
* group[=].element[+].code = #FRLMTraitement.occurancePeriod
* group[=].element[=].target.code = #FRCDATraitement.effectiveTime[not(@operator='A')]
* group[=].element[=].target.equivalence = #equivalent
// Fréquence d'administration
* group[=].element[+].code = #FRLMTraitement.occuranceDateTim
* group[=].element[=].target.code = #FRCDATraitement.effectiveTime[@operator='A']
* group[=].element[=].target.equivalence = #equivalent
// Dosage
* group[=].element[+].code = #FRLMTraitement.dosage
* group[=].element[=].target.equivalence = #unmatched
// Voie d'administration
* group[=].element[+].code = #FRLMTraitement.dosage.route
* group[=].element[=].target.code = #FRCDATraitement.routeCode
* group[=].element[=].target.equivalence = #equivalent
// Région anatomique d'administration
* group[=].element[+].code = #FRLMTraitement.dosage.site
* group[=].element[=].target.code = #FRCDATraitement.approachSiteCode
* group[=].element[=].target.equivalence = #equivalent
// Dose à administrer
* group[=].element[+].code = #FRLMTraitement.dosage.dose
* group[=].element[=].target.code = #FRCDATraitement.doseQuantity
* group[=].element[=].target.equivalence = #equivalent
// Rythme d'administration
* group[=].element[+].code = #FRLMTraitement.dosage.rate[x]
* group[=].element[=].target.code = #FRCDATraitement.rateQuantity
* group[=].element[=].target.equivalence = #equivalent
// Dose maximale
* group[=].element[+].code = #FRLMTraitement.dosage.doseMaximale
* group[=].element[=].target.code = #FRCDATraitement.maxDoseQuantity
* group[=].element[=].target.equivalence = #equivalent
// médicament
* group[=].element[+].code = #FRLMTraitement.medicament
* group[=].element[=].target.code = #FRCDATraitement.consumable
* group[=].element[=].target.equivalence = #equivalent
// Motif du traitement
* group[=].element[+].code = #FRLMTraitement.reason
* group[=].element[=].target.code = #FRCDATraitement.entryRelationship:frReferenceInterne
* group[=].element[=].target.equivalence = #equivalent
// Prescription
* group[=].element[+].code = #FRLMTraitement.prescription
* group[=].element[=].target.code = #FRCDATraitement.entryRelationship:frPrescription
* group[=].element[=].target.equivalence = #equivalent
// Traitement subordonné
* group[=].element[+].code = #FRLMTraitement.subordinateTreatment
* group[=].element[=].target.code = #FRCDATraitement.entryRelationship:frTraitementSubordonne
* group[=].element[=].target.equivalence = #equivalent
// Instructions au patient
* group[=].element[+].code = #FRLMTraitement.instructionsPatient
* group[=].element[=].target.code = #FRCDATraitement.entryRelationship:frInstructionsAuPatient
* group[=].element[=].target.equivalence = #equivalent
// Précondition
* group[=].element[+].code = #FRLMTraitement.precondition
* group[=].element[=].target.code = #FRCDATraitement.precondition
* group[=].element[=].target.equivalence = #equivalent

// Groupe Mapping 2 : CDA → FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-traitement"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-medication-administration-document"
// élément racine
* group[=].element[+].code = #FRCDATraitement
* group[=].element[=].target.code = #FRMedicationAdministrationDocument
* group[=].element[=].target.equivalence = #equivalent
// Identifiant
* group[=].element[+].code = #FRCDATraitement.id
* group[=].element[=].target.code = #FRMedicationAdministrationDocument.identifier
* group[=].element[=].target.equivalence = #equivalent
// Acte ou situation
* group[=].element[+].code = #FRCDATraitement.code
* group[=].element[=].target.code = #FRMedicationAdministrationDocument.category
* group[=].element[=].target.equivalence = #equivalent
// Partie narrative 
* group[=].element[+].code = #FRCDATraitement.text
* group[=].element[=].target.code = #FRMedicationAdministrationDocument.category.text
* group[=].element[=].target.equivalence = #equivalent
// Statut
* group[=].element[+].code = #FRCDATraitement.statusCode
* group[=].element[=].target.code = #FRMedicationAdministrationDocument.status
* group[=].element[=].target.equivalence = #equivalent
// Durée du traitement
* group[=].element[+].code = #FRCDATraitement.effectiveTime[not(@operator='A')]
* group[=].element[=].target.code = #FRMedicationAdministrationDocument.effectivePeriod
* group[=].element[=].target.equivalence = #equivalent
// Fréquence d'administration
* group[=].element[+].code = #FRCDATraitement.effectiveTime[@operator='A']
* group[=].element[=].target.code = #FRMedicationAdministrationDocument.extension:medicationAdministration-occurence-r5
* group[=].element[=].target.equivalence = #equivalent
// Voie d'administration
* group[=].element[+].code = #FRCDATraitement.routeCode
* group[=].element[=].target.code = #FRMedicationAdministrationDocument.dosage.route
* group[=].element[=].target.equivalence = #equivalent
// Région anatomique d'administration
* group[=].element[+].code = #FRCDATraitement.approachSiteCode
* group[=].element[=].target.code = #FRMedicationAdministrationDocument.dosage.site
* group[=].element[=].target.equivalence = #equivalent
// Dose à administrer
* group[=].element[+].code = #FRCDATraitement.doseQuantity
* group[=].element[=].target.code = #FRMedicationAdministrationDocument.dosage.dose
* group[=].element[=].target.equivalence = #equivalent
// Rythme d'administration
* group[=].element[+].code = #FRCDATraitement.rateQuantity
* group[=].element[=].target.code = #FRMedicationAdministrationDocument.dosage.rate[x]
* group[=].element[=].target.equivalence = #equivalent
// Dose maximale
* group[=].element[+].code = #FRCDATraitement.maxDoseQuantity
* group[=].element[=].target.code = #FRMedicationAdministrationDocument.dosage.rateRatio
* group[=].element[=].target.equivalence = #equivalent
// Médicament
* group[=].element[+].code = #FRCDATraitement.consumable
* group[=].element[=].target.code = #FRMedicationAdministrationDocument.medication:FRMedicationDocument
* group[=].element[=].target.equivalence = #equivalent
// Motif du traitement
* group[=].element[+].code = #FRCDATraitement.entryRelationship:frReferenceInterne
* group[=].element[=].target.code = #FRMedicationAdministrationDocument.reasonReference
* group[=].element[=].target.equivalence = #equivalent
// Prescription
* group[=].element[+].code = #FRCDATraitement.entryRelationship:frPrescription
* group[=].element[=].target.code = #FRMedicationAdministrationDocument.request
* group[=].element[=].target.equivalence = #equivalent
// Traitement subordonné
* group[=].element[+].code = #FRCDATraitement.entryRelationship:frTraitementSubordonne
* group[=].element[=].target.code = #FRMedicationAdministrationDocument.medication:FRMedicationsCombinaisonDocument
* group[=].element[=].target.equivalence = #equivalent
// Instructions au patient
* group[=].element[+].code = #FRCDATraitement.entryRelationship:frInstructionsAuPatient
* group[=].element[=].target.code = #FRMedicationAdministrationDocument.dosage.text
* group[=].element[=].target.equivalence = #equivalent
// Précondition
* group[=].element[+].code = #FRCDATraitement.precondition
* group[=].element[=].target.code = #FRMedicationAdministrationDocument.note
* group[=].element[=].target.equivalence = #equivalent
