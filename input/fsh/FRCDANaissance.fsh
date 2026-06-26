Profile: FRCDANaissance
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Organizer
Id: fr-cda-naissance
Title: "CDA - FR Naissance"
Description: "Entrée FR-Naissance: IHE-PCC - Birth event organizer. 
 - Cette entrée rassemble les observations relatives à une naissance. Elle peut-être utilisée comme 'component'; d'une entrée FR-Historique-de-la-grossesse (1.3.6.1.4.1.19376.1.5.3.1.4.13.5.1)."
* classCode MS
* classCode = #CLUSTER
* moodCode MS
* id 1..1 MS
* id ^short = "Identifiant de l'entrée"
* id ^definition = "Identifiant de l'entrée"
* templateId 1..2
* templateId ^slicing.discriminator.type = #value
* templateId ^slicing.discriminator.path = "root"
* templateId ^slicing.rules = #open
* templateId contains iheBirthEventOrganizer 1..1
and frNaissance 1..1
* templateId[iheBirthEventOrganizer].root 1..1
* templateId[iheBirthEventOrganizer].root = "1.3.6.1.4.1.19376.1.5.3.1.4.13.5.2"
* templateId[iheBirthEventOrganizer] ^short = "Conformité Birth event organizer (IHE PCC)"
* templateId[iheBirthEventOrganizer] ^definition = "Conformité Birth event organizer (IHE PCC)"
* templateId[frNaissance].root 1..1
* templateId[frNaissance].root = "1.2.250.1.213.1.1.3.56"
* templateId[frNaissance] ^short = "Conformité FR-Naissance (CI-SIS)"
* templateId[frNaissance] ^definition = "Conformité FR-Naissance (CI-SIS)"
* code MS
* code 1..1
* code ^short = "Code de l'entrée"
* code ^definition = "Code de l'entrée"
* code.code = #118215003
* code.displayName = "observation sur l'accouchement"
* code.codeSystem = "2.16.840.1.113883.6.96"
* code.codeSystemName = "SNOMED_CT"
* code.code 1..1 MS
* code.displayName MS
* code.codeSystem 1..1 MS
* statusCode MS
* statusCode 1..1
* statusCode ^short = "Status de l'observationFixé à la valeur 'completed'"
* statusCode ^definition = "Status de l'observation"
* statusCode.code = #completed
* effectiveTime MS
* effectiveTime ^short = "Période des observations"
* effectiveTime ^definition = "Période des observations. Quand cette entrée est utilisée dans une entrée FR-Historique-de-la-grossesse, cette période doit correspondre à la période de la grossesse."
* subject 1..1
* subject ^short = "Identification du nouveau né. Le nouveau né est décrit dans l'élément 'Sujet' (nom, age, sexe, ...). 
Les attributs de l'élément  du  sont fixés aux valeurs suivantes :
@code='CHILD'
@displayName='Enfant'
@codeSystem='2.16.840.1.113883.5.111'
@codeSystemName='RoleCode'"
* subject ^definition = "Identification du nouveau né" 
* subject only FRCDASujet
* component MS
* component 1..*
* component ^short = "Observation sur la naissance"
* component.typeCode = #COMP
* component.observation only FRCDAObservationSurLaGrossesse