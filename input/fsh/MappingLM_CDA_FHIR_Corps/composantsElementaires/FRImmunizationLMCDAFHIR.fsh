Instance: FRImmunizationLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMVaccination → FRCDAVaccination → FRImmunizationDocument"    
Description: "Mapping des éléments du modèle métier FRLMVaccination vers le profil CDA FRCDAVaccination, puis vers le profil FHIR FRImmunizationDocument."
* title = "Mapping Métier/CDA/FHIR : \"Vaccination\""   
* status = #draft
// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-vaccination"    
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-vaccination"
// Élément racine
* group[=].element[+].code = #FRLMVaccination
* group[=].element[=].target.code = #FRCDAVaccination
* group[=].element[=].target.equivalence = #equivalent
// Identifiant
* group[=].element[+].code = #FRLMVaccination.identifiant
* group[=].element[=].target.code = #FRCDAVaccination.id
* group[=].element[=].target.equivalence = #equivalent
// Type d'acte : vaccination
* group[=].element[+].code = #FRLMVaccination.code  
* group[=].element[=].target.code = #FRCDAVaccination.code
* group[=].element[=].target.equivalence = #equivalent
// Partie narrative de l’entrée
* group[=].element[+].code = #FRLMVaccination.description
* group[=].element[=].target.code = #FRCDAVaccination.text
* group[=].element[=].target.equivalence = #equivalent
// Statut de l’entrée
* group[=].element[+].code = #FRLMVaccination.statut
* group[=].element[=].target.code = #FRCDAVaccination.statusCode
* group[=].element[=].target.equivalence = #equivalent
// Période de vaccination souhaitable
* group[=].element[+].code = #FRLMVaccination.dateVaccination
* group[=].element[=].target.code = #FRCDAVaccination.effectiveTime
* group[=].element[=].target.equivalence = #equivalent
// Voie d’administration
* group[=].element[+].code = #FRLMVaccination.voieAadministration
* group[=].element[=].target.code = #FRCDAVaccination.routeCode
* group[=].element[=].target.equivalence = #equivalent
// Région anatomique d'administration
* group[=].element[+].code = #FRLMVaccination.regionAnatomique
* group[=].element[=].target.code = #FRCDAVaccination.approachSiteCode
* group[=].element[=].target.equivalence = #equivalent
// Dose administrée
* group[=].element[+].code = #FRLMVaccination.doseVaccination
* group[=].element[=].target.code = #FRCDAVaccination.doseQuantity
* group[=].element[=].target.equivalence = #equivalent
// Vaccin
* group[=].element[+].code = #FRLMVaccination.vaccin    
* group[=].element[=].target.code = #FRCDAVaccination.consumable:FRCDAProduitDeSante
* group[=].element[=].target.equivalence = #equivalent
// Référence de la prescription
* group[=].element[+].code = #FRLMVaccination.prescription
* group[=].element[=].target.code = #FRCDAVaccination.entryRelationship:frPrescription
* group[=].element[=].target.equivalence = #equivalent
// Rang de la vaccination
* group[=].element[+].code = #FRLMVaccination.rangVaccination
* group[=].element[=].target.code = #FRCDAVaccination.entryRelationship:frRangDeLaVaccination
* group[=].element[=].target.equivalence = #equivalent
// Réaction observée suite au vaccin
* group[=].element[+].code = #FRLMVaccination.reaction
* group[=].element[=].target.code = #FRCDAVaccination.entryRelationship:frProbleme
* group[=].element[=].target.equivalence = #equivalent
// Commentaire
* group[=].element[+].code = #FRLMVaccination.commentaire
* group[=].element[=].target.code = #FRCDAVaccination.entryRelationship:frCommentaireER
* group[=].element[=].target.equivalence = #equivalent
// Dose d'antigène
* group[=].element[+].code = #FRLMVaccination.DoseAntigene
* group[=].element[=].target.code = #FRCDAVaccination.entryRelationship:frDoseAntigene
* group[=].element[=].target.equivalence = #equivalent
// Groupe Mapping 2 : CDA → FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-vaccination"    
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-immunization-document"
// Élément racine
* group[=].element[+].code = #FRCDAVaccination
* group[=].element[=].target.code = #FRImmunizationDocument
* group[=].element[=].target.equivalence = #equivalent
// Identifiant
* group[=].element[+].code = #FRCDAVaccination.id
* group[=].element[=].target.code = #FRImmunizationDocument.identifier
* group[=].element[=].target.equivalence = #equivalent
// Type de vaccination
* group[=].element[+].code = #FRCDAVaccination.code
* group[=].element[=].target.code = #FRImmunizationDocument.protocolApplied.series
* group[=].element[=].target.equivalence = #equivalent
// Partie narrative de l’entrée
* group[=].element[+].code = #FRCDAVaccination.text
* group[=].element[=].target.code = #FRImmunizationDocument.vaccineCode.text
* group[=].element[=].target.equivalence = #equivalent
// Statut de l’entrée
* group[=].element[+].code = #FRCDAVaccination.statusCode
* group[=].element[=].target.code = #FRImmunizationDocument.status  
* group[=].element[=].target.equivalence = #equivalent
// Date de la vaccination
* group[=].element[+].code = #FRCDAVaccination.effectiveTime
* group[=].element[=].target.code = #FRImmunizationDocument.occurrence[x]
* group[=].element[=].target.equivalence = #equivalent
// Région anatomique d'administration
* group[=].element[+].code = #FRCDAVaccination.approachSiteCode
* group[=].element[=].target.code = #FRImmunizationDocument.site
* group[=].element[=].target.equivalence = #equivalent
// Voie d’administration
* group[=].element[+].code = #FRCDAVaccination.routeCode
* group[=].element[=].target.code = #FRImmunizationDocument.route
* group[=].element[=].target.equivalence = #equivalent
// Dose administrée
* group[=].element[+].code = #FRCDAVaccination.doseQuantity
* group[=].element[=].target.code = #FRImmunizationDocument.doseQuantity
* group[=].element[=].target.equivalence = #equivalent
// Vaccin administré
* group[=].element[+].code = #FRCDAVaccination.consumable:FRCDAProduitDeSante
* group[=].element[=].target.code = #FRImmunizationDocument.vaccineCode
* group[=].element[=].target.equivalence = #equivalent
// Prescription
* group[=].element[+].code = #FRCDAVaccination.entryRelationship:frPrescription
* group[=].element[=].target.code = #FRImmunizationDocument.extension:immunization-basedOn-r5
* group[=].element[=].target.equivalence = #equivalent
// Rang de la vaccination
* group[=].element[+].code = #FRCDAVaccination.entryRelationship:frRangDeLaVaccination
* group[=].element[=].target.code = #FRImmunizationDocument.protocolApplied.doseNumberPositiveInt
* group[=].element[=].target.equivalence = #equivalent
// Réaction observée suite au vaccin
* group[=].element[+].code = #FRCDAVaccination.entryRelationship:frProbleme
* group[=].element[=].target.code = #FRImmunizationDocument.reasonReference
* group[=].element[=].target.equivalence = #equivalent
// Commentaire
* group[=].element[+].code = #FRCDAVaccination.entryRelationship:frCommentaireER
* group[=].element[=].target.code = #FRImmunizationDocument.note
* group[=].element[=].target.equivalence = #equivalent
// Dose d'antigène
* group[=].element[+].code = #FRCDAVaccination.entryRelationship:frDoseAntigene
* group[=].element[=].target.code = #FRImmunizationDocument.extension:immunization-administeredProduct-r5
* group[=].element[=].target.equivalence = #equivalent