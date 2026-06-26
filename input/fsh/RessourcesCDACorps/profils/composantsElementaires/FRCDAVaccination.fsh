Profile: FRCDAVaccination
Parent: http://hl7.org/cda/stds/core/StructureDefinition/SubstanceAdministration
Id: fr-cda-vaccination
Title: "CDA - FR Vaccination"
Description: "Entrée FR-Vaccination: IHE-PCC - Immunizations. L'entrée Vaccination est une entrée de type 'substanceAdministration' pour décrire l'administration d'un vaccin. Elle permet également de décrire pourquoi un vaccin n'a pas été réalisé. Cette entrée hérite de la structuration, des contraintes et des vocabulaires de l'entrée Traitement (1.3.6.1.4.1.19376.1.5.3.1.4.7) sauf mentions précisées ci-après."
* classCode MS
* moodCode MS
* moodCode = #EVN
* id 1..1 MS
* id ^short = "Identifiant de l'entrée"
* id ^definition = "Identifiant de l'entrée"
* templateId 1..3
* templateId ^slicing.discriminator.type = #value
* templateId ^slicing.discriminator.path = "root"
* templateId ^slicing.rules = #open
* templateId contains iheImmunizations 1..1
and ccdMedicationActivity 1..1
and frVaccination 1..1
* templateId[iheImmunizations].root 1..1
* templateId[iheImmunizations].root = "1.3.6.1.4.1.19376.1.5.3.1.4.12"
* templateId[iheImmunizations] ^short = "Conformité Immunizations (IHE PCC)"
* templateId[iheImmunizations] ^definition = "Conformité Immunizations (IHE PCC)"
* templateId[ccdMedicationActivity].root 1..1
* templateId[ccdMedicationActivity].root = "2.16.840.1.113883.10.20.1.24"
* templateId[ccdMedicationActivity] ^short = "Conformité Medication activity (CCD)"
* templateId[ccdMedicationActivity] ^definition = "Conformité Medication activity (CCD)"
* templateId[frVaccination].root 1..1
* templateId[frVaccination].root = "1.2.250.1.213.1.1.3.45"
* templateId[frVaccination] ^short = "Conformité FR-Vaccination (CI-SIS)"
* templateId[frVaccination] ^definition = "Conformité FR-Vaccination (CI-SIS)"
* code MS
* code 1..1
* code ^short = """Type de vaccination : \r\n
 JDV_HL7_ActSubstanceAdministrationImmunizationCode_CISIS (2.16.840.1.113883.1.11.19709). 
 Il permet d’indiquer si l’entrée concerne une vaccination :
 - de 1ère série vaccinante ('INITIMMUNIZ') de rappel ('BOOSTER') vaccination sans autre précision ('IMMUNIZ') 
 - de rappel ('BOOSTER') 
 - vaccination sans autre précision ('IMMUNIZ') 
 OR 
 JDV_AbsentOrUnknownImmunization_CISIS (1.2.250.1.213.1.1.5.666)"""
* code ^definition = "Type de vaccination"
* code from FRValueSetTypeVaccination (required)
* code.code 1..1 MS
* code.displayName MS
* code.codeSystem 1..1 MS
* text MS
* text 1..1
* text ^short = "Partie narrative de l’entrée"
* text.reference 1..1 MS
* statusCode MS
* statusCode 1..1
* statusCode ^short = "Statut de l’entréeFixé à la valeur 'completed'"
* statusCode ^definition = "Statut de l’entrée"
* statusCode.code = #completed
* effectiveTime MS
* effectiveTime 1..1
* effectiveTime ^short = """Date de la vaccination : \r\n
Si la date de la vaccination est inconnue, utiliser une valeur nullFlavor précisant la raison pour laquelle la date n'est pas connue."""
* effectiveTime ^definition = "Date de la vaccination"
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
* performer 0..1 MS
* performer ^short = "Exécutant"
* performer only FRCDAPerformerCorps
* author 0..1 MS
* author ^short = "Auteur de la vaccination (personne ayant validé médicalement que la vaccination a été réalisée)"
* author only FRCDAAuthor
* entryRelationship MS
* entryRelationship ^slicing.discriminator.type = #value
* entryRelationship ^slicing.discriminator.path = "$this"
* entryRelationship ^slicing.rules = #open
* entryRelationship contains 
frPrescription 0..1
 and frRangDeLaVaccination 0..1
 and frProbleme 0..*
 and frCommentaireER 0..1
 and frDoseAntigene 0..*
* entryRelationship[frPrescription].supply only FRCDAPrescription
* entryRelationship[frPrescription].typeCode = #REFR
* entryRelationship[frPrescription] ^short = "Prescription"

* entryRelationship[frRangDeLaVaccination].observation only FRCDARangDeLaVaccination
* entryRelationship[frRangDeLaVaccination].typeCode = #SUBJ
* entryRelationship[frRangDeLaVaccination] ^short = """Rang de la vaccination : \r\n
Le rang de vaccination permet d'indiquer de quelle injection il s'agit.
Par exemple, pour le vaccin contre la coqueluche qui se fait en 2 doses (à 2 mois et à 4 mois pour un nourrisson) + 1 rappel (à 11 mois) on indiquera successivement :
- Type de vaccination='INITIMMUNIZ' pour la '1ère série vaccinante' et rang de la dose='1' pour la 1ère dose ;
- Type de vaccination='INITIMMUNIZ' pour la '1ère série vaccinante' et rang de la dose='2' pour la 2ème dose ;
- Type de vaccination='BOOSTER' pour le ‘Rappel' et rang de la dose='3' pour la 3ème injection"""

* entryRelationship[frProbleme].observation only FRCDAProbleme
* entryRelationship[frProbleme].typeCode = #CAUS
* entryRelationship[frProbleme].inversionInd = false
* entryRelationship[frProbleme] ^short = """Réaction observée suite au vaccin : \r\n
Un templateId suplémentaire (2.16.840.1.113883.10.20.1.54) ajouté aux déclarations de conformité de l'élément pour indiquer que le problème considéré est une réaction.
L'attribut @code de l'élément 'code' prend la valeur 'Symptôme' dont la valeur est prise dans le jeu de valeurs JDV_ProblemCodes_CISIS (1.2.250.1.213.1.1.5.172 ).
La réaction observée est codée dans l'élément 'value'."""

* entryRelationship[frCommentaireER].act only FRCDACommentaireER
* entryRelationship[frCommentaireER].typeCode = #SUBJ
* entryRelationship[frCommentaireER] ^short = "Commentaire"

* entryRelationship[frDoseAntigene].substanceAdministration only FRCDADoseAntigene
* entryRelationship[frDoseAntigene].typeCode = #COMP
* entryRelationship[frDoseAntigene] ^short = """Dose d'antigène : \r\n
Un des cas d'utilisation est la vaccination de sujets hypersensibles [https ://professionnels.vaccination-info-service.fr/Aspects-pratiques/Allergies-et-autres-contre-indications/Personnes-allergiques]"""
