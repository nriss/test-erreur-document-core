Profile: FRCDAActe
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Procedure
Id: fr-cda-acte
Title: "CDA - FR Acte"
Description: "Entrée FR-Acte: IHE-PCC - Procedure. L'entrée 'Acte' est une entrée de type 'procedure' décrivant un acte planifié ou réalisé."
* classCode MS
* moodCode MS
* moodCode ^short = """
 - Si acte prévu : moodCode='INT' ; negationInd='false' (valeur par défaut) 
 - Si acte réalisé : moodCode='EVN' ; negationInd='true' 
     - si l'acte n'a pas eu lieu : negationInd='false' 
     - si l'acte a eu lieu (valeur par défaut)"""
* id 1..* MS
* id ^short = "Identifiant de l'entrée"
* id ^definition = "Identifiant de l'entrée"
* templateId 1..4
* templateId ^slicing.discriminator.type = #value
* templateId ^slicing.discriminator.path = "root"
* templateId ^slicing.rules = #open
* templateId contains iheProcedureEntry 1..1
and ccdPlanOfCareActivityPlanned 0..1
and ccdPlanOfCareActivityPlannedRealised 0..1
and frActe 1..1
* templateId[iheProcedureEntry].root 1..1
* templateId[iheProcedureEntry].root = "1.3.6.1.4.1.19376.1.5.3.1.4.19"
* templateId[iheProcedureEntry] ^short = "Conformité Procedure Entry (IHE PCC)"
* templateId[iheProcedureEntry] ^definition = "Conformité Procedure Entry (IHE PCC)"
* templateId[ccdPlanOfCareActivityPlanned].root 1..1
* templateId[ccdPlanOfCareActivityPlanned].root = "2.16.840.1.113883.10.20.1.29"
* templateId[ccdPlanOfCareActivityPlanned] ^short = "Conformité Plan of care activity (CCD) si acte prévu "
* templateId[ccdPlanOfCareActivityPlanned] ^definition = "Conformité Plan of care activity (CCD) si acte prévu"
* templateId[ccdPlanOfCareActivityPlannedRealised].root 1..1
* templateId[ccdPlanOfCareActivityPlannedRealised].root = "2.16.840.1.113883.10.20.1.25"
* templateId[ccdPlanOfCareActivityPlannedRealised] ^short = "Conformité Procedure activity (CCD) si acte réalisée "
* templateId[ccdPlanOfCareActivityPlannedRealised] ^definition = "Conformité Procedure activity (CCD) si acte réalisée"
* templateId[frActe] 1..1
* templateId[frActe].root = "1.2.250.1.213.1.1.3.62"
* templateId[frActe] ^short = "Conformité FR-Acte (CI-SIS)"
* templateId[frActe] ^definition = "Conformité FR-Acte (CI-SIS)"
* code MS
* code 1..1
* code ^short = """Code d'acte : \r\n
Aussi utilisé pour indiquer qu'il n'y a pas d'acte, ou qu'on ne sait pas s'il y en a.
Terminologie CCAM (1.2.250.1.215.300.1) si possible. 
Si l'acte n'est pas trouvé dans la terminologie CCAM, utiliser le code='C25218' displayName='Intervention' codeSystem='2.16.840.1.113883.3.26.1.1' codeSystemName='NCIT' et décrire l'acte sous forme de texte libre dans la partie narrative avec une référence vers l'entrée correspondante 
ou jdv-absent-or-unknown-procedure-cisis (1.2.250.1.213.1.1.5.665) pour les actes chirurgicaux"""
* code ^definition = "Code d'acte"
* code.code 1..1 MS
* code.codeSystem 1..1 MS
* code.displayName MS
* text MS
* text 1..1
* text ^short = "Description narrative de l'acte"
* text ^definition = "Description narrative de l'acte"
* text.reference 1..1 MS
* statusCode MS
* statusCode 1..1
* statusCode ^short = """Statut de l'acte : \r\n
utiliser le jdv-hl7-v3-ActStatus-cisis (2.16.840.1.113883.1.11.15933 ) 
- Si l'acte a été réalisé : le statut prend la valeur 'completed'. 
- Si l'acte a été arrêté avant sa fin : le statut prend la valeur 'aborted'. 
- Si l'acte a été annulé avant sa réalisation : le statut prend la valeur 'cancelled'. 
- Si l'acte est en cours ou à venir : le statut prend la valeur 'active'."""
* statusCode ^definition = "Statut de l'acte"
* statusCode from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-hl7-v3-ActStatus-cisis
* effectiveTime MS
* effectiveTime ^short = """Date de l'acte : \r\n
- Si l'acte a été réalisé : l'élément 'effectiveTime' indique la date de réalisation. 
- Si l'acte a été annulé (statusCode 'Cancelled') ou arrêté (statusCode 'aborted'), l'élément 'effectiveTime' peut garder sa valeur initiale si elle était renseignée. 
- Si l'acte est prévu : l'élément 'effectiveTime' indique la date de planification si elle est connue ou la prend la valeur nullflavor='UNK' si elle n'est pas connue."""
* effectiveTime ^definition = "Date de l'acte"
* priorityCode ^short = """Priorité : \r\n 
utiliser le jdv-hl7-v3-ActPriority-cisis (2.16.840.1.113883.1.11.16866) ou autre."""
* priorityCode ^definition = "Priorité"
* approachSiteCode ^short = """Voie d’abord : \r\n
non renseigné si la voie d'abord est contenue dans le code de l'acte (comme c'est le cas avec la CCAM).
Sinon, utiliser la codification SNOMED CT (2.16.840.1.113883.6.96)"""
* approachSiteCode ^definition = "Voie d’abord"
  * qualifier MS
  * qualifier 0..1
  * qualifier ^short = "Latéralité SNOMED CT (2.16.840.1.113883.6.96) "
  * qualifier ^definition = "Latéralité"
* targetSiteCode ^short = "Localisation anatomique SNOMED CT (2.16.840.1.113883.6.96)"
* targetSiteCode ^definition = "Localisation anatomique"
  * originalText MS
  * qualifier MS
  * qualifier ^short = "Précision topographique"
  * qualifier ^definition = "Précision topographique"
    * name MS
    * name 1..1
    * name.code = #106233006
    * name.displayName = "modificateur topographique"
    * name.codeSystem = "2.16.840.1.113883.6.96"
    * name.codeSystemName = "SNOMED-CT"
    * value MS
    * value 1..1
    * value ^short = "Valeur de la topographie"
    * value ^definition = "Valeur de la topographie"
    * value only CD
* performer 1..1
* performer only FRCDAPerformerCorps
* author only FRCDAAuthor
* informant 1..1
* informant only FRCDAInformant
* participant 1..1
* participant only FRCDAParticipantCorps
* entryRelationship MS
* entryRelationship ^slicing.discriminator.type = #value
* entryRelationship ^slicing.discriminator.path = "$this"
* entryRelationship ^slicing.rules = #open
* entryRelationship contains 
frReferenceInterneCirconstances 0..* and frReferenceInterneMotifActe 0..* and frReferenceInterneDM 0..*
 and frSimpleObservationDifficulte 0..1 and frSimpleObservationScores 0..*
* entryRelationship[frReferenceInterneCirconstances].act only FRCDAReferenceInterne
* entryRelationship[frReferenceInterneCirconstances].typeCode = #COMP
* entryRelationship[frReferenceInterneCirconstances].inversionInd = true
* entryRelationship[frReferenceInterneCirconstances] ^short = "Circonstances ayant décidé de l'acte"
* entryRelationship[frReferenceInterneCirconstances] ^definition = "Circonstances ayant décidé de l'acte"

* entryRelationship[frReferenceInterneMotifActe].act only FRCDAReferenceInterne
* entryRelationship[frReferenceInterneMotifActe].typeCode = #RSON
* entryRelationship[frReferenceInterneMotifActe].inversionInd = false
* entryRelationship[frReferenceInterneMotifActe] ^short = "Motif de l'acte"
* entryRelationship[frReferenceInterneMotifActe] ^definition = "Motif de l'acte"

* entryRelationship[frReferenceInterneDM].act only FRCDAReferenceInterne
* entryRelationship[frReferenceInterneDM].typeCode = #REFR
* entryRelationship[frReferenceInterneDM].inversionInd = false
* entryRelationship[frReferenceInterneDM] ^short = "Référence interne à un DM"
* entryRelationship[frReferenceInterneDM] ^definition = "Référence interne à un DM"

* entryRelationship[frSimpleObservationDifficulte].observation only FRCDASimpleObservation
* entryRelationship[frSimpleObservationDifficulte].typeCode = #COMP
* entryRelationship[frSimpleObservationDifficulte].inversionInd = false
* entryRelationship[frSimpleObservationDifficulte] ^short = "Difficulté de l'acte"
* entryRelationship[frSimpleObservationDifficulte] ^definition = "Difficulté de l'acte"

* entryRelationship[frSimpleObservationScores].observation only FRCDASimpleObservation
* entryRelationship[frSimpleObservationScores].typeCode = #COMP
* entryRelationship[frSimpleObservationScores].inversionInd = false
* entryRelationship[frSimpleObservationScores] ^short = "Scores"
* entryRelationship[frSimpleObservationScores] ^definition = "Scores"
