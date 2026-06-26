Profile: FRCDAAllergieOuHypersensibilite
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Observation
Id: fr-cda-allergie-ou-hypersensibilite
Title: "CDA - FR Allergie ou hypersensibilite"
Description: "Entrée FR-Allergie-ou-hypersensibilite: IHE-PCC Allergy-And-Intolerance Cette entrée permet de décrire une allergie ou une hypersensibilité non allergique ou une intolérance ou une idiosyncrasie, en précisant :Le type : allergie médicamenteuse, hypersensibilité non allergique alimentaire, etc.La date de début et de finL'agent responsable : médicament, agent environnemental, …Le statut clinique : Actif, Inactif, RésoluLa criticité : Bas, Elevé, Impossible à évaluerLa certitude : Confirmé, Non confirmé, RéfutéLa (les) réaction(s) observée(s) : urticaire, nausée, … etLa sévérité de la réaction : Potentiellement mortel, Elevé, Modéré, Bas, …un commentaire sur la réactionCette entrée est basée sur l'entrée Problème (1.3.6.1.4.1.19376.1.5.3.1.4.5) qu'elle spécialise."
* classCode MS
* classCode = #OBS
* moodCode MS
* moodCode = #EVN
* id 1..* MS
* id ^short = "Identifiant de l'entrée"
* id ^definition = "Identifiant de l'entrée"
* templateId 1..5
* templateId ^slicing.discriminator.type = #value
* templateId ^slicing.discriminator.path = "root"
* templateId ^slicing.rules = #open
* templateId contains ccdAlertObservation 1..1
and iheProblemEntry 1..1
and ccdProblemObservation 1..1
and iheAllergiesAndIntolerancesEntry 1..1
and frAllergieOuHypersensibilite 1..1
* templateId[ccdAlertObservation].root 1..1
* templateId[ccdAlertObservation].root = "2.16.840.1.113883.10.20.1.18"
* templateId[ccdAlertObservation] ^short = "Conformité Alert observation (CCD)"
* templateId[ccdAlertObservation] ^definition = "Conformité Alert observation (CCD)"
* templateId[iheProblemEntry].root 1..1
* templateId[iheProblemEntry].root = "1.3.6.1.4.1.19376.1.5.3.1.4.5"
* templateId[iheProblemEntry] ^short = "Conformité Problem Entry (IHE PCC) "
* templateId[iheProblemEntry] ^definition = "Conformité Problem Entry (IHE PCC)"
* templateId[ccdProblemObservation].root 1..1
* templateId[ccdProblemObservation].root = "2.16.840.1.113883.10.20.1.28"
* templateId[ccdProblemObservation] ^short = "Conformité Problem observation (CCD)"
* templateId[ccdProblemObservation] ^definition = "Conformité Problem observation (CCD)"
* templateId[iheAllergiesAndIntolerancesEntry].root 1..1
* templateId[iheAllergiesAndIntolerancesEntry].root = "1.3.6.1.4.1.19376.1.5.3.1.4.6"
* templateId[iheAllergiesAndIntolerancesEntry] ^short = "Conformité Allergies And Intolerances Entry (IHE PCC)"
* templateId[iheAllergiesAndIntolerancesEntry] ^definition = "Conformité Allergies And Intolerances Entry (IHE PCC)"
* templateId[frAllergieOuHypersensibilite].root 1..1
* templateId[frAllergieOuHypersensibilite].root = "1.2.250.1.213.1.1.3.41"
* templateId[frAllergieOuHypersensibilite] ^short = "Conformité FR-Allergie-ou-hypersensibilite (CI-SIS)"
* templateId[frAllergieOuHypersensibilite] ^definition = "Conformité FR-Allergie-ou-hypersensibilite (CI-SIS)"
* code MS
* code ^short = "Type d'allergie / hypersensibilité non allergique / intolérance / idiosyncrasie"
* code ^definition = "Type d'allergie / hypersensibilité non allergique / intolérance / idiosyncrasie"
* code from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-type-evenement-indesirable-previsible-cisis
* code.code 1..1 MS
* code.displayName MS
* code.codeSystem 1..1 MS
* text MS
* text 1..1
* text ^short = "Partie narrative de l'entrée"
* statusCode MS
* statusCode 1..1
* statusCode ^short = "Statut de l'entrée"
* statusCode ^definition = "Statut de l'entrée"
* statusCode.code = #completed
* effectiveTime MS
* effectiveTime 1..1
* effectiveTime ^short = "Date de début et de fin"
* effectiveTime ^definition = "Date de début et de fin"
* value MS
* value 1..1
* value only CD
* value.originalText MS
* value.originalText MS
* value.originalText.reference 1..1
* value ^short = "L'élément <value> sera utilisé pour indiquer qu'il n'y a pas d'allergie/hypersensibilité ou que l'on ne sait pas à partir du jdv-absent-or-unknown-allergy-cisis (1.2.250.1.213.1.1.5.661)."
* value from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-absent-or-unknown-allergy-cisis
* participant 0..1 MS
* participant ^short = "Agent responsable"
* participant ^definition = "Agent responsable"
  * typeCode = #CSM
  * participantRole MS
    * classCode = #MANU
    * playingEntity 1..1
      * classCode = #MMAT
      * code 1..1
      * code ^definition = "Code de l'agent responsable"
      * code ^short = "Code de l'agent responsable : - pour les médicaments : Pour les médicaments : code CIP ou UCD - Pour les substances : code SMS - Pour les substances non présentes dans SMS (par exemple feuille de millepertuis ou extrait d’organe) : texte libre - pour les aliments : CIM-11 (2.16.840.1.113883.6.347) / Chapitre X Codes d’extensions / Substances / Allergènes ou Substances, essentiellement non médicinales - pour les agents environnementaux ou physiques : CIM-11 (2.16.840.1.113883.6.347) / Chapitre X Codes d’extensions / Substances / Allergènes ou Substances, essentiellement non médicinales - pour les allergènes pouvant induire une contre-indication à la vaccination : à partir du jeu de valeurs jdv-allergie-vaccin-cisis (1.2.250.1.213.1.1.5.100)"
        * originalText 1..1
          * reference 1..1
      * name 0..1
      * name ^short = "Nom de l'agent responsable"
* entryRelationship MS
* entryRelationship ^slicing.discriminator.type = #value
* entryRelationship ^slicing.discriminator.path = "$this"
* entryRelationship ^slicing.rules = #open
* entryRelationship contains 
frProbleme 0..*
 and frStatutDuProbleme 0..1
 and frCriticite 0..1
 and frCertitude 0..1
* entryRelationship[frProbleme].observation only FRCDAProbleme
* entryRelationship[frProbleme] ^short = "Réaction observée"
* entryRelationship[frProbleme].typeCode = #MFST
* entryRelationship[frStatutDuProbleme].observation only FRCDAStatutDuProbleme
* entryRelationship[frStatutDuProbleme] ^short = "Statut clinique"
* entryRelationship[frStatutDuProbleme].inversionInd = false
* entryRelationship[frStatutDuProbleme].typeCode = #REFR
* entryRelationship[frCriticite].observation only FRCDACriticite
* entryRelationship[frCriticite] ^short = "Criticité"
* entryRelationship[frCriticite].inversionInd = true
* entryRelationship[frCriticite].typeCode = #SUBJ
* entryRelationship[frCertitude].observation only FRCDACertitude
* entryRelationship[frCertitude] ^short = "Certitude"
* entryRelationship[frCertitude].inversionInd = true
* entryRelationship[frCertitude].typeCode = #SUBJ
