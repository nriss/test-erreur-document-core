Profile: FRCDAVaccinRecommande
Parent: http://hl7.org/cda/stds/core/StructureDefinition/SubstanceAdministration
Id: fr-cda-vaccin-recommande
Title: "CDA - FR Vaccin recommande"
Description: "Entrée FR-Vaccin-recommande: IHE-PCC - Immunization recommendation. L'entrée 'Vaccin recommandé' est une entrée de type 'substanceAdministration' qui permet de décrire une vaccination prévue ou proposée. Une vaccination proposée est une proposition qui est utilisée dans la prise de décisions (elle peut apparaître comme une contribution ou un résultat provenant de l'aide à la décision clinique). 
Une vaccination prévue dépend d'un plan accepté et à venir. Cette entrée hérite de la structuration, des contraintes et des vocabulaires de l'entrée 'Immunization' (1.3.6.1.4.1.19376.1.5.3.1.4.12)."
* classCode MS
* moodCode MS
* moodCode ^short = "Si la vaccination est prévue : @moodCode='INT' ;
Si la vaccination est proposée :@moodCode='PRP'"
* moodCode ^definition = "Si la vaccination est prévue : @moodCode='INT' ;
Si la vaccination est proposée :@moodCode='PRP'"
* id 1..1 MS
* id ^short = "Identifiant de l'entrée"
* id ^definition = "Identifiant de l'entrée"
* templateId 1..3
* templateId ^slicing.discriminator.type = #value
* templateId ^slicing.discriminator.path = "root"
* templateId ^slicing.rules = #open
* templateId contains iheImmunizationRecommandation 1..1
and ccdPlanOfCareActivityPlannedRealised 1..1
and frVaccinRecommande 1..1
* templateId[iheImmunizationRecommandation].root 1..1
* templateId[iheImmunizationRecommandation].root = "1.3.6.1.4.1.19376.1.5.3.1.4.12.2"
* templateId[iheImmunizationRecommandation] ^short = "Conformité Immunization Recommandation (IHE PCC)"
* templateId[iheImmunizationRecommandation] ^definition = "Conformité Immunization Recommandation (IHE PCC)"
* templateId[ccdPlanOfCareActivityPlannedRealised].root 1..1
* templateId[ccdPlanOfCareActivityPlannedRealised].root = "2.16.840.1.113883.10.20.1.25"
* templateId[ccdPlanOfCareActivityPlannedRealised] ^short = "Conformité Plan of care activity (CCD)"
* templateId[ccdPlanOfCareActivityPlannedRealised] ^definition = "Conformité Plan of care activity (CCD)"
* templateId[frVaccinRecommande].root 1..1
* templateId[frVaccinRecommande].root = "1.2.250.1.213.1.1.3.47"
* templateId[frVaccinRecommande] ^short = "Conformité FR-Vaccin-recommande (CI-SIS)"
* templateId[frVaccinRecommande] ^definition = "Conformité FR-Vaccin-recommande (CI-SIS)"
* code MS
* code 1..1
* code ^short = "Type d'acte : vaccination"
* code ^definition = "Type d'acte"
* code from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-hl7-v3-ActSubstanceAdministrationImmunizationCode-cisis (required)
* code.code 1..1 MS
* code.displayName MS
* code.codeSystem 1..1 MS
* text MS
* text 1..1
* text ^short = "Partie narrative de l’entrée"
* text.reference 1..1 MS
* statusCode MS
* statusCode 1..1
* statusCode ^short = "Statut de l’entréeFixé à la valeur code='active'"
* statusCode ^definition = "Statut de l’entrée"
* statusCode.code = #active
* effectiveTime 1..1 MS
* effectiveTime ^short = "Période de vaccination souhaitable"
* effectiveTime ^definition = "Période de vaccination souhaitable"
* routeCode MS
* routeCode ^short = "Voie d'administration"
* routeCode ^definition = "Voie d'administration"
* routeCode from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-immunization-route-code-cisis (required)
* approachSiteCode MS
* approachSiteCode ^short = "Région anatomique d'administration : Terminologie SNOMED CT (2.16.840.1.113883.6.96)"
* approachSiteCode ^definition = "Région anatomique d'administration"
* approachSiteCode from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-immunization-approach-site-code-cisis (required)
* doseQuantity MS
* doseQuantity ^short = "Dose administrée"
* doseQuantity ^definition = "Dose administrée"
* consumable only FRCDAProduitDeSante
* consumable ^short = "Vaccin"
* consumable ^definition = "Vaccin"
* entryRelationship MS
* entryRelationship ^slicing.discriminator.type = #value
* entryRelationship ^slicing.discriminator.path = "$this"
* entryRelationship ^slicing.rules = #open
* entryRelationship contains 
frPrescription 0..1
 and frRangDeLaVaccination 0..1
 and frCommentaireER 0..1
* entryRelationship[frPrescription].supply only FRCDAPrescription
* entryRelationship[frPrescription].typeCode = #REFR
* entryRelationship[frPrescription] ^short = "Prescription"

* entryRelationship[frRangDeLaVaccination].observation only FRCDARangDeLaVaccination
* entryRelationship[frRangDeLaVaccination].typeCode = #SUBJ
* entryRelationship[frRangDeLaVaccination] ^short = "Rang de la vaccination"

* entryRelationship[frCommentaireER].act only FRCDACommentaireER
* entryRelationship[frCommentaireER].typeCode = #SUBJ
* entryRelationship[frCommentaireER] ^short = "Commentaire"
