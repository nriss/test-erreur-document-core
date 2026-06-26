Profile: FRCDASignesVitaux
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Organizer
Id: fr-cda-signes-vitaux
Title: "CDA - FR Signes vitaux"
Description: "Entrée FR-Signes-vitaux: IHE-PCC - Vital signs organizer. L'entrée Signes vitaux est une entrée de type 'organizer' qui permet de regrouper des informations relatives aux mesures cliniques du patient."
* classCode MS
* classCode = #CLUSTER
* moodCode MS
* id 1..1 MS
* id ^short = "Identifiant de l'entrée"
* id ^definition = "Identifiant de l'entrée"
* templateId 1..4
* templateId ^slicing.discriminator.type = #value
* templateId ^slicing.discriminator.path = "root"
* templateId ^slicing.rules = #open
* templateId contains iheVitalSignsOrganizer 1..1
and ccdResultOrganizer 1..1
and ccdVitalSignsOrganizer 1..1
and frSignesVitaux 1..1
* templateId[iheVitalSignsOrganizer].root 1..1
* templateId[iheVitalSignsOrganizer].root = "1.3.6.1.4.1.19376.1.5.3.1.4.13.1"
* templateId[iheVitalSignsOrganizer] ^short = "Conformité Vital Signs Organizer (IHE PCC)"
* templateId[iheVitalSignsOrganizer] ^definition = "Conformité Vital Signs Organizer (IHE PCC)"
* templateId[ccdResultOrganizer].root 1..1
* templateId[ccdResultOrganizer].root = "2.16.840.1.113883.10.20.1.32"
* templateId[ccdResultOrganizer] ^short = "Conformité Result organizer (CCD)"
* templateId[ccdResultOrganizer] ^definition = "Conformité Result organizer (CCD)"
* templateId[ccdVitalSignsOrganizer].root 1..1
* templateId[ccdVitalSignsOrganizer].root = "2.16.840.1.113883.10.20.1.35"
* templateId[ccdVitalSignsOrganizer] ^short = "Conformité Vital signs organizer (CCD)"
* templateId[ccdVitalSignsOrganizer] ^definition = "Conformité Vital signs organizer (CCD)"
* templateId[frSignesVitaux].root 1..1
* templateId[frSignesVitaux].root = "1.2.250.1.213.1.1.3.49"
* templateId[frSignesVitaux] ^short = "Conformité FR-Signes-vitaux (CI-SIS)"
* templateId[frSignesVitaux] ^definition = "Conformité FR-Signes-vitaux (CI-SIS)"
* code MS
* code 1..1
* code ^short = "Code de l'entrée."
* code ^definition = "Code de l'entrée"
* code.code = #85353-1
* code.codeSystem = "2.16.840.1.113883.6.1"
* code.displayName = "Signes vitaux"
* code.code 1..1 MS
* code.displayName MS
* code.codeSystem 1..1 MS
* statusCode MS
* statusCode ^short = "Statut de l'entrée"
* statusCode ^definition = "Statut de l'entrée"
* statusCode.code = #completed
* effectiveTime MS
* effectiveTime 1..1
* effectiveTime ^short = "Date de l'entrée"
* effectiveTime ^definition = "Date de l'entrée"
* author ^short = "Auteur : Personne ou dispositif"
* author ^definition = "Auteur : Personne ou dispositif"
* author only FRCDAAuthor
* component MS
* component 1..*
* component ^short = "Entrée Signe vital observé"
* component.typeCode = #COMP
* component.observation only FRCDASigneVitalObserve
