Profile: FRCDAEffetIndesirable
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Observation
Id: fr-cda-effet-indesirable
Title: "CDA - FR Effet indesirable"
Description: "Entrée FR-Effet-indesirable: Cette entrée permet de décrire un effet indésirable prévisible lié à un médicament. "
* classCode MS
* classCode = #OBS
* moodCode MS
* moodCode = #EVN
* id 1..* MS
* id ^short = "Identifiant de l'entrée"
* id ^definition = "Identifiant de l'entrée"
* templateId 1..4
* templateId ^slicing.discriminator.type = #value
* templateId ^slicing.discriminator.path = "root"
* templateId ^slicing.rules = #open
* templateId contains frEffetIndesirable 1..1
and ccdAlertObservation 1..1
and ccdProblemObservation 1..1
and iheProblemEntry 1..1
* templateId[frEffetIndesirable].root 1..1
* templateId[frEffetIndesirable].root = "1.2.250.1.213.1.1.3.210"
* templateId[frEffetIndesirable] ^short = "Conformité FR-Effet-indesirable (CI-SIS)"
* templateId[frEffetIndesirable] ^definition = "Conformité FR-Effet-indesirable (CI-SIS)"
* templateId[ccdAlertObservation].root 1..1
* templateId[ccdAlertObservation].root = "2.16.840.1.113883.10.20.1.18"
* templateId[ccdAlertObservation] ^short = "Conformité Alert observation (CCD)"
* templateId[ccdAlertObservation] ^definition = "Conformité Alert observation (CCD)"
* templateId[ccdProblemObservation].root 1..1
* templateId[ccdProblemObservation].root = "2.16.840.1.113883.10.20.1.28"
* templateId[ccdProblemObservation] ^short = "Conformité Problem observation (CCD)"
* templateId[ccdProblemObservation] ^definition = "Conformité Problem observation (CCD)"
* templateId[iheProblemEntry].root 1..1
* templateId[iheProblemEntry].root = "1.3.6.1.4.1.19376.1.5.3.1.4.5"
* templateId[iheProblemEntry] ^short = "Conformité Problem Entry (IHE PCC)"
* templateId[iheProblemEntry] ^definition = "Conformité Problem Entry (IHE PCC)"
* code MS
* code ^short = "Code de l'entrée - Type d'effet indésirable"
* code ^definition = "Code de l'entrée"
* code from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-origine-effet-indesirable-cisis
* code.code 1..1 MS
* code.displayName MS
* code.codeSystem 1..1 MS
* text MS
* text 1..1
* text ^short = "Description narrative"
* statusCode MS
* statusCode 1..1
* statusCode ^short = "Statut de l'observation : completed"
* statusCode ^definition = "Statut de l'observation"
* statusCode.code = #completed
* effectiveTime MS
* effectiveTime 1..1
* effectiveTime ^short = "Date de début et de fin de l'effet indésirable"
* effectiveTime ^definition = "Date de début et de fin de l'effet indésirable"
* value MS
* value 1..1
* value only CD
* entryRelationship MS
* entryRelationship ^slicing.discriminator.type = #value
* entryRelationship ^slicing.discriminator.path = "$this"
* entryRelationship ^slicing.rules = #open
* entryRelationship contains 
frTraitement 1..1
 and frProbleme 0..*
 and frImputabiliteEffetIndesirable 0..1
 and frGraviteEffetIndesirable 1..1
 and frEvolutionEffetIndesirable 0..1
* entryRelationship[frTraitement].substanceAdministration only FRCDATraitement
* entryRelationship[frTraitement] ^short = "Médicament, substance incriminée, posologie"
* entryRelationship[frTraitement].typeCode = #COMP
* entryRelationship[frProbleme].observation only FRCDAProbleme
* entryRelationship[frProbleme] ^short = "Réaction observée"
* entryRelationship[frProbleme].typeCode = #MFST
* entryRelationship[frImputabiliteEffetIndesirable].observation only FRCDAImputabiliteEffetIndesirable
* entryRelationship[frImputabiliteEffetIndesirable] ^short = "Imputabilité"
* entryRelationship[frImputabiliteEffetIndesirable].typeCode = #SUBJ
* entryRelationship[frImputabiliteEffetIndesirable].inversionInd = true
* entryRelationship[frGraviteEffetIndesirable].observation only FRCDAGraviteEffetIndesirable
* entryRelationship[frGraviteEffetIndesirable] ^short = "Gravité"
* entryRelationship[frGraviteEffetIndesirable].typeCode = #SUBJ
* entryRelationship[frGraviteEffetIndesirable].inversionInd = true
* entryRelationship[frEvolutionEffetIndesirable].observation only FRCDAEvolutionEffetIndesirable
* entryRelationship[frEvolutionEffetIndesirable] ^short = "Evolution"
* entryRelationship[frEvolutionEffetIndesirable].typeCode = #SUBJ
* entryRelationship[frEvolutionEffetIndesirable].inversionInd = true