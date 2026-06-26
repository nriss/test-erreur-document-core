Profile: FRCDAAntecedentsFamiliaux
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Organizer
Id: fr-cda-antecedents-familiaux
Title: "CDA - FR Antecedents familiaux"
Description: "Entrée FR-Antecedents-familiaux: IHE-PCC - Family History Organizer L'entrée Antécédents familiaux est une entrée de type organizer qui permet de regrouper des informations relatives aux membres de la famille du patient. Les éléments ‘component' de cet organizer sont des entrées de type Family History Observation (1.3.6.1.4.1.19376.1.5.3.1.4.13.3)."
* classCode MS
* classCode = #CLUSTER
* moodCode MS
* templateId 1..3
* templateId ^slicing.discriminator.type = #value
* templateId ^slicing.discriminator.path = "root"
* templateId ^slicing.rules = #open
* templateId contains iheFamilyHistoryOrganizer 1..1
and ccdFamilyHistoryOrganizer 1..1
and frFamilyHistoryOrganizer 1..1
* templateId[iheFamilyHistoryOrganizer].root 1..1
* templateId[iheFamilyHistoryOrganizer].root = "1.3.6.1.4.1.19376.1.5.3.1.4.15"
* templateId[iheFamilyHistoryOrganizer] ^short = "Conformité Family History Organizer (IHE PCC)"
* templateId[iheFamilyHistoryOrganizer] ^definition = "Conformité Family History Organizer (IHE PCC)"
* templateId[ccdFamilyHistoryOrganizer].root 1..1
* templateId[ccdFamilyHistoryOrganizer].root = "2.16.840.1.113883.10.20.1.23"
* templateId[ccdFamilyHistoryOrganizer] ^short = "Conformité Family history organizer (CCD)"
* templateId[ccdFamilyHistoryOrganizer] ^definition = "Conformité Family history organizer (CCD)"
* templateId[frFamilyHistoryOrganizer].root 1..1
* templateId[frFamilyHistoryOrganizer].root = "1.2.250.1.213.1.1.3.59"
* templateId[frFamilyHistoryOrganizer] ^short = "Conformité FR-Antecedents-familiaux (CI-SIS)"
* templateId[frFamilyHistoryOrganizer] ^definition = "Conformité FR-Antecedents-familiaux (CI-SIS)"
* statusCode MS
* statusCode 1..1
* statusCode ^short = "Statut de l’entrée -Fixé à la valeur 'completed'"
* statusCode ^definition = "Statut de l’entrée"
* statusCode.code = #completed
* participant  MS
* participant ^short = "Lien avec un autre sujet"
* participant ^definition = "Lien avec un autre sujet"
  * typeCode = #IND
  * participantRole MS
    * classCode = #PRS
    * code from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-hl7-v3-PersonalRelationshipRoleType-cisis
    * playingEntity 1..1
      * classCode = #PSN
* subject 1..1
* subject only FRCDASujet
* subject ^short = "Identification du parent"
* component MS
* component 1..*
* component.observation only FRCDAAntecedentFamilialObserve 
* component ^short = "Antécédent familial observé"