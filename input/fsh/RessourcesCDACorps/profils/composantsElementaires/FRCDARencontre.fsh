Profile: FRCDARencontre
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Encounter
Id: fr-cda-rencontre
Title: "CDA - FR Rencontre"
Description: "Entrée FR-Rencontre: IHE-PCC - Encounter. 
 - L'entrée 'Rencontre' est un élément de type 'encounter' permettant de conserver les modalités d'une rencontre du patient. Il peut s'agir d'une rencontre passée ou à venir."
* classCode MS
* moodCode MS
* moodCode ^short = "Si rencontre réalisée : moodCode='EVN'.
- Si rencontre planifiée : moodCode='PRMS'. 
- Si rencontre prévue mais non confirmée : moodCode='ARQ'."
* moodCode from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-hl7-v3-ActMood-cisis (required)
* id 1..* MS
* id ^short = "Identifiant de l'entrée"
* id ^definition = "Identifiant de l'entrée"
* templateId 1..4
* templateId ^slicing.discriminator.type = #value
* templateId ^slicing.discriminator.path = "root"
* templateId ^slicing.rules = #open
* templateId contains iheEncounter 1..1
and ccdEncounterActivity 0..1
and ccdPlanOfCareActivityPlannedRealised 0..1
and frRencontre 1..1
* templateId[iheEncounter].root 1..1
* templateId[iheEncounter].root = "1.3.6.1.4.1.19376.1.5.3.1.4.14"
* templateId[iheEncounter] ^short = "Conformité Encounter (IHE PCC)"
* templateId[iheEncounter] ^definition = "Conformité Encounter (IHE PCC)"
* templateId[ccdEncounterActivity].root 1..1
* templateId[ccdEncounterActivity].root = "2.16.840.1.113883.10.20.1.21"
* templateId[ccdEncounterActivity] ^short = "Conformité Encounter activity (CCD) Si rencontre réalisée (moodCode='EVN')"
* templateId[ccdEncounterActivity] ^definition = "Conformité Encounter activity (CCD)"
* templateId[ccdPlanOfCareActivityPlannedRealised].root 1..1
* templateId[ccdPlanOfCareActivityPlannedRealised].root = "2.16.840.1.113883.10.20.1.25"
* templateId[ccdPlanOfCareActivityPlannedRealised] ^short = "Conformité Plan of care activity (CCD) Si rencontre planifiée (moodCode='PMRS') ou prévue non confirmée (moodCode='ARQ')"
* templateId[ccdPlanOfCareActivityPlannedRealised] ^definition = "Conformité Plan of care activity (CCD)"
* templateId[frRencontre].root 1..1
* templateId[frRencontre].root = "1.2.250.1.213.1.1.3.58"
* templateId[frRencontre] ^short = "Conformité FR-Rencontre (CI-SIS)"
* templateId[frRencontre] ^definition = "Conformité FR-Rencontre (CI-SIS)"
* code MS
* code 1..1
* code ^short = "Type de rencontre. Valeur généralement issue du JDV_HL7_ActEncounterCode_CISIS (2.16.840.1.113883.1.11.13955) mais un autre JDV peut être utilisé pour certains documents spécifiques (dans ce cas, le JDV est fourni dans le volet concerné)."
* code ^definition = "Type de rencontre"
* code.qualifier 0..1 MS
* code.qualifier ^short = "Précision sur le type de rencontre"
* code.qualifier ^definition = "Précision sur le type de rencontre"
* code.code 1..1 MS
* code.displayName MS
* code.codeSystem 1..1 MS
* text MS
* text ^short = "Description narrative"
* text ^definition = "Description narrative"
* text.reference 1..1 MS
* effectiveTime MS
* effectiveTime ^short = "Date de la rencontre. Si la rencontre est réalisée (EVN) ou planifiée (PMRS) : la date est obligatoire. Si la rencontre est prévue non confirmée (ARQ) : la date est facultative."
* effectiveTime ^definition = "Date de la rencontre"
* priorityCode ^short = "Confirmation attendue. Si la rencontre est prévue non confirmée (ARQ) et qu'une confirmation est attendue : 
- code='CS'
- displayName='Recontacter pour fixer RDV'
- codeSystem='2.16.840.1.113883.5.7'
- codeSystemName='ActPriority' 
Sinon, l'élément  n'est pas fourni."
* priorityCode ^definition = "Confirmation attendue"
* performer MS
* performer ^short = "Exécutant. Si la rencontre est réalisée (EVN) : au moins 1 performer doit être renseigné. Sinon (PMRS ou ARQ) : performer n'est pas obligatoire mais peut être renseigné."
* performer ^definition = "Exécutant"
  * time MS
  * time ^short = "Durée d'intervention de l'exécutant. Elle peut être renseignée si elle est différente de la durée de la rencontre."
  * time ^definition = "Durée d'intervention de l'exécutant"
* performer.assignedEntity only FRCDAAssignedEntity
* author MS
* author ^short = "Auteur"
* author ^definition = "Auteur"
* author only FRCDAAuthor
* informant MS
* informant ^short = "Informateur"
* informant ^definition = "Informateur"
* informant only FRCDAInformant
* participant ^slicing.discriminator.type = #value
* participant ^slicing.discriminator.path = "typeCode"
* participant ^slicing.rules = #open

* participant contains
    lieuExecution 0..1 MS and
    autresParticipants 0..* MS
// Lieu d'exécution
* participant[lieuExecution].typeCode = #LOC
* participant[lieuExecution] ^short = "Lieu d'exécution"
* participant[lieuExecution] ^definition = "Lieu d'exécution"
* participant[lieuExecution].participantRole MS
* participant[lieuExecution].participantRole.classCode = #SDLOC
* participant[lieuExecution].participantRole.id MS
* participant[lieuExecution].participantRole.id ^short = "Identifiant de l'établissement"
* participant[lieuExecution].participantRole.id ^definition = "Identifiant de l'établissement"
* participant[lieuExecution].participantRole.addr MS
* participant[lieuExecution].participantRole.addr ^short = "Adresse"
* participant[lieuExecution].participantRole.addr ^definition = "Adresse"
* participant[lieuExecution].participantRole.telecom MS
* participant[lieuExecution].participantRole.telecom ^short = "Coordonnées télécom"
* participant[lieuExecution].participantRole.telecom ^definition = "Coordonnées télécom"
* participant[lieuExecution].participantRole.playingEntity MS
* participant[lieuExecution].participantRole.playingEntity.classCode = #PLC
* participant[lieuExecution].participantRole.playingEntity.name 1..1 MS
* participant[lieuExecution].participantRole.playingEntity.name ^short = "Nom de l'établissement"
* participant[lieuExecution].participantRole.playingEntity.name ^definition = "Nom de l'établissement"
//autres participants
* participant[autresParticipants] only FRCDAParticipantCorps
