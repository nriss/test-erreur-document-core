Instance: FRImmunizationRecommendationLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMVaccinRecommande → FRCDAVaccinRecommande → FRImmunizationRecommendationDocument"
Description: "Mapping des éléments du modèle métier FRLMVaccinRecommande vers le profil CDA FRCDAVaccinRecommande, puis vers le profil FHIR FRImmunizationRecommendationDocument."
* title = "Mapping Métier/CDA/FHIR : \"Vaccin recommandé\""
* status = #draft
// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-vaccin-recommande"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-vaccin-recommande"
// Élément racine   
* group[=].element[+].code = #FRLMVaccinRecommande
* group[=].element[=].target.code = #FRCDAVaccinRecommande
* group[=].element[=].target.equivalence = #equivalent
// Identifiant de l’entrée
* group[=].element[+].code = #FRLMVaccinRecommande.identifiantVaccinRecommande
* group[=].element[=].target.code = #FRCDAVaccinRecommande.id
* group[=].element[=].target.equivalence = #equivalent
// Type d'acte : vaccination
* group[=].element[+].code = #FRLMVaccinRecommande.codeVaccinRecommande
* group[=].element[=].target.code = #FRCDAVaccinRecommande.code
* group[=].element[=].target.equivalence = #equivalent  
// Partie narrative de l’entrée
* group[=].element[+].code = #FRLMVaccinRecommande.descriptionNarrativeVaccinRecommande
* group[=].element[=].target.code = #FRCDAVaccinRecommande.text
* group[=].element[=].target.equivalence = #equivalent
// Statut de l’entrée
* group[=].element[+].code = #FRLMVaccinRecommande.statutVaccinRecommande
* group[=].element[=].target.code = #FRCDAVaccinRecommande.statusCode
* group[=].element[=].target.equivalence = #equivalent  
// Période de vaccination souhaitable
* group[=].element[+].code = #FRLMVaccinRecommande.periodeVaccination
* group[=].element[=].target.code = #FRCDAVaccinRecommande.effectiveTime
* group[=].element[=].target.equivalence = #equivalent
// Voie d’administration
* group[=].element[+].code = #FRLMVaccinRecommande.voieAdministration
* group[=].element[=].target.code = #FRCDAVaccinRecommande.routeCode
* group[=].element[=].target.equivalence = #equivalent
// Région anatomique d'administration
* group[=].element[+].code = #FRLMVaccinRecommande.regionAnatomique
* group[=].element[=].target.code = #FRCDAVaccinRecommande.approachSiteCode
* group[=].element[=].target.equivalence = #equivalent
// Dose administrée
* group[=].element[+].code = #FRLMVaccinRecommande.doseAdministree
* group[=].element[=].target.code = #FRCDAVaccinRecommande.doseQuantity
* group[=].element[=].target.equivalence = #equivalent
// Vaccin
* group[=].element[+].code = #FRLMVaccinRecommande.vaccin
* group[=].element[=].target.code = #FRCDAVaccinRecommande.consumable.FRCDAProduitDeSante
* group[=].element[=].target.equivalence = #equivalent
// Référence de la prescription
* group[=].element[+].code = #FRLMVaccinRecommande.prescription
* group[=].element[=].target.code = #FRCDAVaccinRecommande.entryRelationship:frPrescription
* group[=].element[=].target.equivalence = #equivalent  
// Rang de la vaccination
* group[=].element[+].code = #FRLMVaccinRecommande.rangVaccination
* group[=].element[=].target.code = #FRCDAVaccinRecommande.entryRelationship:frRangDeLaVaccination
* group[=].element[=].target.equivalence = #equivalent
// Commentaire  
* group[=].element[+].code = #FRLMVaccinRecommande.commentaire
* group[=].element[=].target.code = #FRCDAVaccinRecommande.entryRelationship:frCommentaireER
* group[=].element[=].target.equivalence = #equivalent
// Groupe Mapping 2 : CDA → FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-vaccin-recommande"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-immunization-recommendation-document"
// Élément racine
* group[=].element[+].code = #FRCDAVaccinRecommande
* group[=].element[=].target.code = #FRImmunizationRecommendationDocument
* group[=].element[=].target.equivalence = #equivalent
// Identifiant de l’entrée
* group[=].element[+].code = #FRCDAVaccinRecommande.id
* group[=].element[=].target.code = #FRImmunizationRecommendationDocument.identifier
* group[=].element[=].target.equivalence = #equivalent
// Type d'acte : vaccination
* group[=].element[+].code = #FRCDAVaccinRecommande.code
* group[=].element[=].target.code = #FRImmunizationRecommendationDocument.recommendation.vaccineCode
* group[=].element[=].target.equivalence = #equivalent
// Partie narrative de l’entrée
* group[=].element[+].code = #FRCDAVaccinRecommande.text
* group[=].element[=].target.code = #FRImmunizationRecommendationDocument.recommendation.vaccineCode.text
* group[=].element[=].target.equivalence = #equivalent  
// Statut de l’entrée
* group[=].element[+].code = #FRCDAVaccinRecommande.statusCode
* group[=].element[=].target.code = #FRImmunizationRecommendationDocument.recommendation.forecastStatus
* group[=].element[=].target.equivalence = #equivalent
// Période de vaccination souhaitable
* group[=].element[+].code = #FRCDAVaccinRecommande.effectiveTime
* group[=].element[=].target.code = #FRImmunizationRecommendationDocument.recommendation.dateCriterion.value
* group[=].element[=].target.equivalence = #equivalent  
// Voie d’administration
* group[=].element[+].code = #FRCDAVaccinRecommande.routeCode
* group[=].element[=].target.code = #FRImmunizationRecommendationDocument.supportingImmunization:FRImmunizationDocument.route
* group[=].element[=].target.equivalence = #equivalent
// Région anatomique d'administration
* group[=].element[+].code = #FRCDAVaccinRecommande.approachSiteCode
* group[=].element[=].target.code = #FRImmunizationRecommendationDocument.supportingImmunization:FRImmunizationDocument.site
* group[=].element[=].target.equivalence = #equivalent
// Vaccin
* group[=].element[+].code = #FRCDAVaccinRecommande.consumable.FRCDAProduitDeSante
* group[=].element[=].target.code = #FRImmunizationRecommendationDocument.recommendation.vaccineCode
* group[=].element[=].target.equivalence = #equivalent
// Autres codifications du vaccin
* group[=].element[+].code = #FRCDAVaccinRecommande.consumable.FRCDAProduitDeSante.code.translation
* group[=].element[=].target.code = #FRImmunizationRecommendationDocument.recommendation.vaccineCode.coding:translation
* group[=].element[=].target.equivalence = #equivalent
// Référence de la prescription
* group[=].element[+].code = #FRCDAVaccinRecommande.entryRelationship:frPrescription
* group[=].element[=].target.code = #FRImmunizationRecommendationDocument.recommendation.supportingPatientInformation
* group[=].element[=].target.equivalence = #equivalent
// Rang de la vaccination
* group[=].element[+].code = #FRCDAVaccinRecommande.entryRelationship:frRangDeLaVaccination
* group[=].element[=].target.code = #FRImmunizationRecommendationDocument.recommendation.seriesDosesPositiveInt
* group[=].element[=].target.equivalence = #equivalent  
// Commentaire
* group[=].element[+].code = #FRCDAVaccinRecommande.entryRelationship:frCommentaireER
* group[=].element[=].target.code = #FRImmunizationRecommendationDocument.description
* group[=].element[=].target.equivalence = #equivalent  