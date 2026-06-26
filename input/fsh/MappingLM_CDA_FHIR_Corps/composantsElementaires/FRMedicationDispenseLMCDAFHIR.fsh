Instance: FRMedicationDispenseLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMTraitementDispense → FRCDATraitementDispense → FRMedicationDispenseDocument"
Description: "Mapping des éléments du modèle métier FRLMTraitementDispense vers le profil CDA FRCDATraitementDispense, puis vers le profil FHIR FRMedicationDispenseDocument."
* title = "Mapping Métier/CDA/FHIR : \"Traitement dispensé\""
* status = #draft

// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-traitement-dispense"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-traitement-dispense"
// Élément racine  
* group[=].element[+].code = #FRLMTraitementDispense
* group[=].element[=].target.code = #FRCDATraitementDispense
* group[=].element[=].target.equivalence = #equivalent
// identifiant
* group[=].element[+].code = #FRLMTraitementDispense.identifiant
* group[=].element[=].target.code = #FRCDATraitementDispense.id
* group[=].element[=].target.equivalence = #equivalent
// code
* group[=].element[+].code = #FRLMTraitementDispense.code
* group[=].element[=].target.code = #FRCDATraitementDispense.code
* group[=].element[=].target.equivalence = #equivalent
// description
* group[=].element[+].code = #FRLMTraitementDispense.description
* group[=].element[=].target.code = #FRCDATraitementDispense.text
* group[=].element[=].target.equivalence = #equivalent
// quantité
* group[=].element[+].code = #FRLMTraitementDispense.quantite
* group[=].element[=].target.code = #FRCDATraitementDispense.quantity
* group[=].element[=].target.equivalence = #equivalent
// médicament délivré
* group[=].element[+].code = #FRLMTraitementDispense.medicamentDelivre
* group[=].element[=].target.code = #FRCDATraitementDispense.product:frProduitDeSante
* group[=].element[=].target.equivalence = #equivalent
// Référence de la prescription
* group[=].element[+].code = #FRLMTraitementDispense.referencePrescription
* group[=].element[=].target.code = #FRCDATraitementDispense.entryRelationship:frReferenceItemPrescription
* group[=].element[=].target.equivalence = #equivalent
// Posologie
* group[=].element[+].code = #FRLMTraitementDispense.traitement
* group[=].element[=].target.code = #FRCDATraitementDispense.entryRelationship:frTraitement
* group[=].element[=].target.equivalence = #equivalent
// Instructions au patient
* group[=].element[+].code = #FRLMTraitementDispense.instructionsPatient
* group[=].element[=].target.code = #FRCDATraitementDispense.entryRelationship.frInstructionsAuPatient
* group[=].element[=].target.equivalence = #equivalent
// Notes du dispensateur
* group[=].element[+].code = #FRLMTraitementDispense.notesDispensateur
* group[=].element[=].target.code = #FRCDATraitementDispense.entryRelationship.frNotesDuDispensateur
* group[=].element[=].target.equivalence = #equivalent
// Substitution
* group[=].element[+].code = #FRLMTraitementDispense.substitution
* group[=].element[=].target.code = #FRCDATraitementDispense.entryRelationship.frActeSubstitution
* group[=].element[=].target.equivalence = #equivalent

// Groupe Mapping 2 : CDA → FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-traitement-dispense"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-medication-dispense-document"
// Élément racine  
* group[=].element[+].code = #FRCDATraitementDispense
* group[=].element[=].target.code = #FRMedicationDispenseDocument
* group[=].element[=].target.equivalence = #equivalent
// identifiant
* group[=].element[+].code = #FRCDATraitementDispense.id
* group[=].element[=].target.code = #FRMedicationDispenseDocument.identifier
* group[=].element[=].target.equivalence = #equivalent
// code
* group[=].element[+].code = #FRCDATraitementDispense.code
* group[=].element[=].target.code = #FRMedicationDispenseDocument.type
* group[=].element[=].target.equivalence = #equivalent
//description narrative
* group[=].element[+].code = #FRCDATraitementDispense.text
* group[=].element[=].target.code = #FRMedicationDispenseDocument.type.text
* group[=].element[=].target.equivalence = #equivalent
// quantité
* group[=].element[+].code = #FRCDATraitementDispense.quantity
* group[=].element[=].target.code = #FRMedicationDispenseDocument.quantity
* group[=].element[=].target.equivalence = #equivalent
// médicament délivré
* group[=].element[+].code = #FRCDATraitementDispense.product:frProduitDeSante
* group[=].element[=].target.code = #FRMedicationDispenseDocument.medication[x]
* group[=].element[=].target.equivalence = #equivalent
// Référence de la prescription
* group[=].element[+].code = #FRCDATraitementDispense.entryRelationship:frReferenceItemPrescription
* group[=].element[=].target.code = #FRMedicationDispenseDocument.authorizingPrescription
* group[=].element[=].target.equivalence = #equivalent
// Posologie
* group[=].element[+].code = #FRCDATraitementDispense.entryRelationship:frTraitement
* group[=].element[=].target.code = #FRMedicationDispenseDocument.supportingInformation
* group[=].element[=].target.equivalence = #equivalent
// Instructions au patient
* group[=].element[+].code = #FRCDATraitementDispense.entryRelationship:frInstructionsAuPatient
    ///// Target pour la forme non codée
* group[=].element[=].target[+].code = #FRMedicationDispenseDocument.dosageInstruction.patientInstruction
* group[=].element[=].target[=].equivalence = #equivalent
    //// Target pour la forme codée
* group[=].element[=].target[+].code = #FRMedicationDispenseDocument.dosageInstruction.additionalInstruction
* group[=].element[=].target[=].equivalence = #equivalent
// Instructions du dipensateur
* group[=].element[+].code = #FRCDATraitementDispense.entryRelationship:frNotesDuDispensateur
* group[=].element[=].target.code = #FRMedicationDispenseDocument.dosageInstruction.text
* group[=].element[=].target.equivalence = #equivalent
// substitution
* group[=].element[+].code = #FRCDATraitementDispense.entryRelationship:frActeSubstitution
* group[=].element[=].target.code = #FRMedicationDispenseDocument.substitution
* group[=].element[=].target.equivalence = #equivalent



