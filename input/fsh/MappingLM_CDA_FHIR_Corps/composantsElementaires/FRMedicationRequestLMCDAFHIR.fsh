Instance: FRMedicationRequestLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMTraitementPrescrit → FRCDATraitementPrescrit → FRMedicationRequestDocument"
Description: "Mapping des éléments du modèle métier FRLMTraitementPrescrit vers l'entrée CDA FRCDATraitementPrescrit, puis vers le profil FHIR FRMedicationRequestDocument."
* title = "Mapping Métier/CDA/FHIR : Traitement prescrit"
* status = #draft

// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-traitement-prescrit"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-traitement-prescrit"
// Élément racine
* group[=].element[+].code = #FRLMTraitementPrescrit
* group[=].element[=].target.code = #FRCDATraitementPrescrit
* group[=].element[=].target.equivalence = #equivalent
// Identifiant
* group[=].element[+].code = #FRLMTraitementPrescrit.identifiant
* group[=].element[=].target.code = #FRCDATraitementPrescrit.id
* group[=].element[=].target.equivalence = #equivalent
// Code / Acte ou situation
* group[=].element[+].code = #FRLMTraitementPrescrit.code
* group[=].element[=].target.code = #FRCDATraitementPrescrit.code
* group[=].element[=].target.equivalence = #equivalent
// Description / texte narratif
* group[=].element[+].code = #FRLMTraitementPrescrit.description
* group[=].element[=].target.code = #FRCDATraitementPrescrit.text
* group[=].element[=].target.equivalence = #equivalent
// Statut
* group[=].element[+].code = #FRLMTraitementPrescrit.status
* group[=].element[=].target.code = #FRCDATraitementPrescrit.statusCode
* group[=].element[=].target.equivalence = #equivalent
// Durée du traitement
* group[=].element[+].code = #FRLMTraitementPrescrit.dureeTraitement
* group[=].element[=].target.code = #FRCDATraitementPrescrit.effectiveTime[not(@operator='A')]
* group[=].element[=].target.equivalence = #equivalent
// Fréquence d'administration
* group[=].element[+].code = #FRLMTraitementPrescrit.frequenceAdministration
* group[=].element[=].target.code = #FRCDATraitementPrescrit.effectiveTime[@operator='A']
* group[=].element[=].target.equivalence = #equivalent
// Nombre de renouvellements
* group[=].element[+].code = #FRLMTraitementPrescrit.nombreRenouvellement
* group[=].element[=].target.code = #FRCDATraitementPrescrit.repeatNumber
* group[=].element[=].target.equivalence = #equivalent
// Voie d'administration
* group[=].element[+].code = #FRLMTraitementPrescrit.voieAdministration
* group[=].element[=].target.code = #FRCDATraitementPrescrit.routeCode
* group[=].element[=].target.equivalence = #equivalent
// Région anatomique
* group[=].element[+].code = #FRLMTraitementPrescrit.regionAnatomique
* group[=].element[=].target.code = #FRCDATraitementPrescrit.approachSiteCode
* group[=].element[=].target.equivalence = #equivalent
// Dose
* group[=].element[+].code = #FRLMTraitementPrescrit.dose
* group[=].element[=].target.code = #FRCDATraitementPrescrit.doseQuantity
* group[=].element[=].target.equivalence = #equivalent
// Rythme d'administration
* group[=].element[+].code = #FRLMTraitementPrescrit.rythmeAdministration
* group[=].element[=].target.code = #FRCDATraitementPrescrit.rateQuantity
* group[=].element[=].target.equivalence = #equivalent
// Dose maximale
* group[=].element[+].code = #FRLMTraitementPrescrit.doseMaximale
* group[=].element[=].target.code = #FRCDATraitementPrescrit.maxDoseQuantity
* group[=].element[=].target.equivalence = #equivalent
// Produit de santé
* group[=].element[+].code = #FRLMTraitementPrescrit.produitSante
* group[=].element[=].target.code = #FRCDATraitementPrescrit.consumable
* group[=].element[=].target.equivalence = #equivalent
// Prescripteur
* group[=].element[+].code = #FRLMTraitementPrescrit.prescripteur
* group[=].element[=].target.code = #FRCDATraitementPrescrit.author
* group[=].element[=].target.equivalence = #equivalent
// Auteur du document prescription
* group[=].element[+].code = #FRLMTraitementPrescrit.auteur
* group[=].element[=].target.code = #FRCDATraitementPrescrit.author
* group[=].element[=].target.equivalence = #equivalent
// Motif du traitement
* group[=].element[+].code = #FRLMTraitementPrescrit.motifTraitement
* group[=].element[=].target.code = #FRCDATraitementPrescrit.entryRelationship:frReferenceInterne
* group[=].element[=].target.equivalence = #equivalent
// traitement prescrit subordonné
* group[=].element[+].code = #FRLMTraitementPrescrit.traitementPrescritSubordonnee
* group[=].element[=].target.code = #FRCDATraitementPrescrit.entryRelationship:frTraitementPrescritSubordonnee
* group[=].element[=].target.equivalence = #equivalent
// reference item plan traitement
* group[=].element[+].code = #FRLMTraitementPrescrit.referenceItemPlanTraitement
* group[=].element[=].target.code = #FRCDATraitementPrescrit.entryRelationship:frReferenceItemPlanTraitement
* group[=].element[=].target.equivalence = #equivalent
// Instructions patient
* group[=].element[+].code = #FRLMTraitementPrescrit.instructionsPatient
* group[=].element[=].target.code = #FRCDATraitementPrescrit.entryRelationship:frInstructionsAuPatient
* group[=].element[=].target.equivalence = #equivalent
// Instructions dispensateur
* group[=].element[+].code = #FRLMTraitementPrescrit.instructionsDispensateur
* group[=].element[=].target.code = #FRCDATraitementPrescrit.entryRelationship:frInstructionsAuDispensateur
* group[=].element[=].target.equivalence = #equivalent
// Quantité produit
* group[=].element[+].code = #FRLMTraitementPrescrit.quantiteProduit
* group[=].element[=].target.code = #FRCDATraitementPrescrit.entryRelationship:frQuantiteDeProduit
* group[=].element[=].target.equivalence = #equivalent
// Autorisation substitution
* group[=].element[+].code = #FRLMTraitementPrescrit.autorisationSubstitution
* group[=].element[=].target.code = #FRCDATraitementPrescrit.entryRelationship:frAutorisationSubstitution
* group[=].element[=].target.equivalence = #equivalent
// Periode renouvellement
* group[=].element[+].code = #FRLMTraitementPrescrit.periodeRenouvellement
* group[=].element[=].target.code = #FRCDATraitementPrescrit.entryRelationship:frPeriodeDeRenouvellement
* group[=].element[=].target.equivalence = #equivalent
// En rapport avec ALD / accident travail / prevention / non remboursable / hors AMM
* group[=].element[+].code = #FRLMTraitementPrescrit.enRapportAvecALD
* group[=].element[=].target.code = #FRCDATraitementPrescrit.entryRelationship:frEnRapportAvecALD
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #FRLMTraitementPrescrit.enRapportAvecAccidentTravail
* group[=].element[=].target.code = #FRCDATraitementPrescrit.entryRelationship:frEnRapportAvecAccidentTravail
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #FRLMTraitementPrescrit.enRapportAvecPrevention
* group[=].element[=].target.code = #FRCDATraitementPrescrit.entryRelationship:frEnRapportAvecPrevention
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #FRLMTraitementPrescrit.nonRemboursable
* group[=].element[=].target.code = #FRCDATraitementPrescrit.entryRelationship:frNonRemboursable
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #FRLMTraitementPrescrit.horsAMM
* group[=].element[=].target.code = #FRCDATraitementPrescrit.entryRelationship:frHorsAMM
* group[=].element[=].target.equivalence = #equivalent
// Référence de la prescription
* group[=].element[+].code = #FRLMTraitementPrescrit.referencePrescription
* group[=].element[=].target.code = #FRCDATraitementPrescrit.frReferenceInterne.externalDocument
* group[=].element[=].target.equivalence = #equivalent
// Précondition à l'utilisation du médicament
* group[=].element[+].code = #FRLMTraitementPrescrit.precondition
* group[=].element[=].target.code = #FRCDATraitementPrescrit.precondition
* group[=].element[=].target.equivalence = #equivalent

// Groupe Mapping 2 : CDA → FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-traitement-prescrit"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-medication-request-document"
// élément racine
* group[=].element[+].code = #FRCDATraitementPrescrit
* group[=].element[=].target.code = #FRMedicationRequestDocument
* group[=].element[=].target.equivalence = #equivalent
// identifiant
* group[=].element[+].code = #FRCDATraitementPrescrit.id
* group[=].element[=].target.code = #FRMedicationRequestDocument.identifier
* group[=].element[=].target.equivalence = #equivalent
// code 
* group[=].element[+].code = #FRCDATraitementPrescrit.code
* group[=].element[=].target.equivalence = #unmatched
// text 
* group[=].element[+].code = #FRCDATraitementPrescrit.text
* group[=].element[=].target.code = #FRMedicationRequestDocument.note
* group[=].element[=].target.equivalence = #equivalent
// status
* group[=].element[+].code = #FRCDATraitementPrescrit.statusCode
* group[=].element[=].target.code = #FRMedicationRequestDocument.status
* group[=].element[=].target.equivalence = #equivalent
// durée de traitement
* group[=].element[+].code = #FRCDATraitementPrescrit.effectiveTime[not(@operator='A')]
* group[=].element[=].target.code = #FRMedicationRequestDocument.dosageInstruction.timing.repeat.boundsPeriod
* group[=].element[=].target.equivalence = #equivalent
// fréquence de traitement
* group[=].element[+].code = #FRCDATraitementPrescrit.effectiveTime[@operator='A']
* group[=].element[=].target.code = #FRMedicationRequestDocument.dosageInstruction.timing.repeat.frequency
* group[=].element[=].target.equivalence = #equivalent
// nombre de renouvellement
* group[=].element[+].code = #FRCDATraitementPrescrit.repeatNumber
* group[=].element[=].target.code = #FRMedicationRequestDocument.dispenseRequest.numberOfRepeatsAllowed
* group[=].element[=].target.equivalence = #equivalent
// Voie d'administration
* group[=].element[+].code = #FRCDATraitementPrescrit.routeCode
* group[=].element[=].target.code = #FRMedicationRequestDocument.dosageInstruction.route
* group[=].element[=].target.equivalence = #equivalent
// Région anatomique
* group[=].element[+].code = #FRCDATraitementPrescrit.approachSiteCode
* group[=].element[=].target.code = #FRMedicationRequestDocument.dosageInstruction.site
* group[=].element[=].target.equivalence = #equivalent
// Dose à administrer
* group[=].element[+].code = #FRCDATraitementPrescrit.doseQuantity
* group[=].element[=].target.code = #FRMedicationRequestDocument.dosageInstruction.doseAndRate.doseRange
* group[=].element[=].target.equivalence = #equivalent
// Rythme d'administration
* group[=].element[+].code = #FRCDATraitementPrescrit.rateQuantity
* group[=].element[=].target.code = #FRMedicationRequestDocument.dosageInstruction.doseAndRate.rateRange
* group[=].element[=].target.equivalence = #equivalent
// Dose maximale
* group[=].element[+].code = #FRCDATraitementPrescrit.maxDoseQuantity
* group[=].element[=].target.code = #FRMedicationRequestDocument.dosageInstruction.maxDosePerPeriod
* group[=].element[=].target.equivalence = #equivalent
// Produit de santé
* group[=].element[+].code = #FRCDATraitementPrescrit.consumable
* group[=].element[=].target.code = #FRMedicationRequestDocument.medication:FRMedicationDocument
* group[=].element[=].target.equivalence = #equivalent
// prescripteur
* group[=].element[+].code = #FRCDATraitementPrescrit.author
* group[=].element[=].target.code = #FRMedicationRequestDocument.requester
* group[=].element[=].target.equivalence = #equivalent
// auteur
* group[=].element[+].code = #FRCDATraitementPrescrit.author
* group[=].element[=].target.code = #FRMedicationRequestDocument.extension:FRActorExtension
* group[=].element[=].target.equivalence = #equivalent
// motif -> reasonReference
* group[=].element[+].code = #FRCDATraitementPrescrit.entryRelationship:frReferenceInterne
* group[=].element[=].target.code = #FRMedicationRequestDocument.reasonReference
* group[=].element[=].target.equivalence = #equivalent
// traitement prescrit subordonné
* group[=].element[+].code = #FRCDATraitementPrescrit.entryRelationship:frTraitementPrescritSubordonnee
* group[=].element[=].target.code = #FRMedicationRequestDocument.medication:FRMedicationsCombinaisonDocument
* group[=].element[=].target.equivalence = #equivalent
// reference item plan traitement
* group[=].element[+].code = #FRCDATraitementPrescrit.entryRelationship:frReferenceItemPlanTraitement
* group[=].element[=].target.code = #basedOn:FRMedicationRequestDocument
* group[=].element[=].target.equivalence = #equivalent
// instructions au patient
* group[=].element[+].code = #FRCDATraitementPrescrit.entryRelationship:frInstructionsAuPatient
* group[=].element[=].target.code = #FRMedicationRequestDocument.dosageInstruction.additionalInstruction:instructionsPatient
* group[=].element[=].target.equivalence = #equivalent
// instructions au dispensateur
* group[=].element[+].code = #FRCDATraitementPrescrit.entryRelationship:frInstructionsAuDispensateur
* group[=].element[=].target.code = #FRMedicationRequestDocument.dispenseRequest.extension:medicationRequest-dispenseRequest-dispenserInstruction-r5
* group[=].element[=].target.equivalence = #equivalent
// quantiteProduit
* group[=].element[+].code = #FRCDATraitementPrescrit.entryRelationship:frQuantiteDeProduit
* group[=].element[=].target.code = #FRMedicationRequestDocument.dispenseRequest.quantity
* group[=].element[=].target.equivalence = #equivalent
// autorisation substitution
* group[=].element[+].code = #FRCDATraitementPrescrit.entryRelationship:frAutorisationSubstitution
* group[=].element[=].target.code = #FRMedicationRequestDocument.substitution.allowedCodeableConcept
* group[=].element[=].target.equivalence = #equivalent
// Periode renouvellement
* group[=].element[+].code = #FRCDATraitementPrescrit.entryRelationship:frPeriodeDeRenouvellement
* group[=].element[=].target.code = #FRMedicationRequestDocument.dispenseRequest.validityPeriod
* group[=].element[=].target.equivalence = #equivalent
// enRapportAvecALD / accidentTravail / prevention -> reasonReference slices
* group[=].element[+].code = #FRCDATraitementPrescrit.entryRelationship:frEnRapportAvecALD
* group[=].element[=].target.code = #FRMedicationRequestDocument.reasonReference:ald
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #FRCDATraitementPrescrit.entryRelationship:frEnRapportAvecAccidentTravail
* group[=].element[=].target.code = #FRMedicationRequestDocument.reasonReference:accidentTravail
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #FRCDATraitementPrescrit.entryRelationship:frEnRapportAvecPrevention
* group[=].element[=].target.code = #FRMedicationRequestDocument.reasonReference:prevention
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #FRCDATraitementPrescrit.entryRelationship:frNonRemboursable
* group[=].element[=].target.code = #FRMedicationRequestDocument.extension:FRNotCoveredExtension
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #FRCDATraitementPrescrit.entryRelationship:frHorsAMM
* group[=].element[=].target.code = #FRMedicationRequestDocument.extension:FRMedicationRequestOutOfNomenclatureExtension
* group[=].element[=].target.equivalence = #equivalent
// Référence de la prescription
* group[=].element[+].code = #FRCDATraitementPrescrit.frReferenceInterne.externalDocument
* group[=].element[=].target.code = #FRMedicationRequestDocument.instantiatesUri
* group[=].element[=].target.equivalence = #equivalent
// Précondition à l'utilisation du médicament
* group[=].element[+].code = #FRCDATraitementPrescrit.precondition
* group[=].element[=].target.code = #FRMedicationRequestDocument.dosageInstruction.additionalInstruction:precondition
* group[=].element[=].target.equivalence = #equivalent
