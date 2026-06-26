Profile: FRCDADemandeDExamenOuDeSuivi
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Observation
Id: fr-cda-demande-d-examen-ou-de-suivi
Title: "CDA - FR Demande d examen ou de suivi"
Description: "Entrée FR-Demande-d-examen-ou-de-suivi: IHE-PCC - Observation Request L'entrée Demande d'examen / de suivi est une observation qui permet de porter des demandes d'examens (analyses biologiques, évaluations, étude d'imagerie, etc…) ou de suivis particuliers à programmer dans le cadre d'un plan de soins. Cette entrée est basée sur l'élément Simple Observation (1.3.6.1.4.1.19376.1.5.3.1.4.13) qu'elle spécialise."
* classCode MS
* classCode = #OBS
* moodCode MS
* moodCode ^short = "
 - Si la demande fait partie d'un plan de soins : @moodCode='INT'  
 - Si la demande est une proposition : @moodCode='PRP'  
 - Si la demande est un objectif à atteindre : @moodCode='GOL'"
* moodCode ^definition = " 
 - Si la demande fait partie d'un plan de soins : @moodCode='INT'  
 - Si la demande est une proposition : @moodCode='PRP'  
 - Si la demande est un objectif à atteindre : @moodCode='GO"
* id 1..1 MS
* id ^short = "Identifiant de l'entrée"
* id ^definition = "Identifiant de l'entrée"
* templateId 1..3
* templateId ^slicing.discriminator.type = #value
* templateId ^slicing.discriminator.path = "root"
* templateId ^slicing.rules = #open
* templateId contains iheObservationRequest 1..1
and ccdPlanOfCareActivityPlannedRealised 1..1
and frDemandeDexamenOuDeSuivi 1..1
* templateId[iheObservationRequest].root 1..1
* templateId[iheObservationRequest].root = "1.3.6.1.4.1.19376.1.5.3.1.1.20.3.1"
* templateId[iheObservationRequest] ^short = "Conformité Observation Request (IHE PCC)"
* templateId[iheObservationRequest] ^definition = "Conformité Observation Request (IHE PCC)"
* templateId[ccdPlanOfCareActivityPlannedRealised].root 1..1
* templateId[ccdPlanOfCareActivityPlannedRealised].root = "2.16.840.1.113883.10.20.1.25"
* templateId[ccdPlanOfCareActivityPlannedRealised] ^short = "Conformité Plan of care activity (CCD)"
* templateId[ccdPlanOfCareActivityPlannedRealised] ^definition = "Conformité Plan of care activity (CCD)"
* templateId[frDemandeDexamenOuDeSuivi].root 1..1
* templateId[frDemandeDexamenOuDeSuivi].root = "1.2.250.1.213.1.1.3.27"
* templateId[frDemandeDexamenOuDeSuivi] ^short = "Conformité FR-Demande-d-examen-ou-de-suivi (CI-SIS)"
* templateId[frDemandeDexamenOuDeSuivi] ^definition = "Conformité FR-Demande-d-examen-ou-de-suivi (CI-SIS)"
* code MS
* code ^short = "Type de la demande.
 -  Si aucun code n'est trouvé dans des terminologies existantes, utiliser le code : 
 @code='GEN-092.04.20'
 @displayName='Autre demande d’examen ou de suivi'
 @codeSystem='1.2.250.1.213.1.1.4.322' 
 @codeSystemName='TerminologieCISIS'  
 et décrire le type de la demande sous forme de texte libre dans la partie narrative avec une référence vers l'entrée correspondante. "
* code ^definition = "Type de la demande"
* code.code 1..1 MS
* code.displayName MS
* code.codeSystem 1..1 MS
* text MS
* text 1..1
* text ^short = "Description narrative"
  * reference 1..1
  * reference ^short = "Référence à la partie narrative de la section"
* statusCode MS
* statusCode 1..1
* statusCode ^short = "Statut de la demande"
* statusCode ^definition = "Statut de la demande"
* statusCode from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-hl7-v3-ActStatus-cisis
* effectiveTime MS
* effectiveTime 1..1
* effectiveTime ^short = "Date prévisionnelle de l'examen, du suivi, de l'objectif"
* effectiveTime ^definition = "Date prévisionnelle de l'examen"
* value MS
* value 0..1
* value ^short = "Résultat de la demande"
* interpretationCode MS
* interpretationCode 0..1
* interpretationCode ^short = "Interprétation"
* interpretationCode ^definition = "Interprétation"
* interpretationCode from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-hl7-v3-ObservationInterpretation-cisis
* methodCode MS
* methodCode 0..1
* methodCode ^short = "Méthode"
* methodCode ^definition = "Méthode"
* targetSiteCode 0..*
* targetSiteCode ^short = "Cible"
* targetSiteCode ^definition = "Cible"
* author ^short = "Auteur de la demande"
* author ^definition = "Auteur de la demande"

* author only FRCDAAuthor
