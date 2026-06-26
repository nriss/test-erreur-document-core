Profile: FRCDAAntecedentFamilialObserve
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Observation
Id: fr-cda-antecedent-familial-observe
Title: "CDA - FR Antecedent familial observe"
Description: "Entrée FR-Antecedent-familial-observe: IHE-PCC - Family History Observation L'entrée Antécédent familial observé permet d'apporter des informations complémentaires relatives aux membres de la famille du patient (pathologies, etc…). Cette entrée est utilisée dans un élément Antécédents familiaux (1.3.6.1.4.1.19376.1.5.3.1.4.15)."
* classCode MS
* classCode = #OBS
* moodCode MS
* moodCode = #EVN
* id 1..1 MS
* id ^short = "Identifiant de l'entrée"
* id ^definition = "Identifiant de l'entrée"
* templateId 1..4
* templateId ^slicing.discriminator.type = #value
* templateId ^slicing.discriminator.path = "root"
* templateId ^slicing.rules = #open
* templateId contains iheFamilyHistoryObservation 1..1
and ccdFamilyHistoryObservation 1..1
and iheSimpleObservation 1..1
and frAntecedentFamilialObserve 1..1
* templateId[iheFamilyHistoryObservation].root 1..1
* templateId[iheFamilyHistoryObservation].root = "1.3.6.1.4.1.19376.1.5.3.1.4.13.3"
* templateId[iheFamilyHistoryObservation] ^short = "Conformité Family History Observation (IHE PCC)"
* templateId[iheFamilyHistoryObservation] ^definition = "Conformité Family History Observation (IHE PCC)"
* templateId[ccdFamilyHistoryObservation].root 1..1
* templateId[ccdFamilyHistoryObservation].root = "2.16.840.1.113883.10.20.1.22"
* templateId[ccdFamilyHistoryObservation] ^short = "Conformité Family history observation (CCD)"
* templateId[ccdFamilyHistoryObservation] ^definition = "Conformité Family history observation (CCD)"
* templateId[iheSimpleObservation].root 1..1
* templateId[iheSimpleObservation].root = "1.3.6.1.4.1.19376.1.5.3.1.4.13"
* templateId[iheSimpleObservation] ^short = "Conformité Family History Observation (IHE PCC)"
* templateId[iheSimpleObservation] ^definition = "Conformité Family History Observation (IHE PCC)"
* templateId[frAntecedentFamilialObserve].root 1..1
* templateId[frAntecedentFamilialObserve].root = "1.2.250.1.213.1.1.3.51"
* templateId[frAntecedentFamilialObserve] ^short = "Conformité FR-Antecedent-familial-observe (CI-SIS)"
* templateId[frAntecedentFamilialObserve] ^definition = "Conformité FR-Antecedent-familial-observe (CI-SIS)"
* code MS
* code ^short = "Type de l'observation"
* code ^definition = "Type de l'observation"
* code from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-code-probleme-cisis (required)
* code.code 1..1 MS
* code.displayName MS
* code.codeSystem 1..1 MS
* text MS
* text 1..1
* text ^short = "Description narrative de la valeur de l'observation"
* text.reference 1..1 MS
* statusCode MS
* statusCode 1..1
* statusCode ^short = "Statut de l'entrée"
* statusCode ^definition = "Statut de l'entrée"
* statusCode.code = #completed
* effectiveTime MS
* effectiveTime ^short = "Horodatage de l'entrée"
* effectiveTime ^definition = "Horodatage de l'entrée"
* interpretationCode MS
* interpretationCode 0..1
* interpretationCode ^short = "Interpétration"
* interpretationCode ^definition = "Interpétration"
* methodCode MS
* methodCode 0..1
* methodCode ^short = "Méthode utilisée"
* methodCode ^definition = "Méthode utilisée"
* targetSiteCode 0..1
* targetSiteCode ^short = "Site"
* targetSiteCode ^definition = "Site"
* author 0..1
* author only FRCDAAuthor
