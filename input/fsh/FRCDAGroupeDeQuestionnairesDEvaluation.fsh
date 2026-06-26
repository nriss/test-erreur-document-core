Profile: FRCDAGroupeDeQuestionnairesDEvaluation
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Organizer
Id: fr-cda-groupe-de-questionnaires-d-evaluation
Title: "CDA - FR Groupe de questionnaires d evaluation"
Description: "Entrée FR-Groupe-de-questionnaires-d-evaluation: IHE-PCC - Survey-pannel
 - L'entrée 'Groupe de questionnaires d’évaluation' est une entrée de type 'organizer' qui permet de rassembler des observations de questionnaires."
* classCode MS
* classCode = #CLUSTER
* moodCode MS
* id 1..* MS
* id ^short = "Identifiant de l'entrée"
* id ^definition = "Identifiant de l'entrée"
* templateId 1..3
* templateId ^slicing.discriminator.type = #value
* templateId ^slicing.discriminator.path = "root"
* templateId ^slicing.rules = #open
* templateId contains iheSurveyPanel 1..1
and ccdResultOrganizer 1..1
and frGroupeDeQuestionnairesDevaluation 1..1
* templateId[iheSurveyPanel].root 1..1
* templateId[iheSurveyPanel].root = "1.3.6.1.4.1.19376.1.5.3.1.1.12.3.7"
* templateId[iheSurveyPanel] ^short = "Conformité Survey Panel (IHE PCC)"
* templateId[iheSurveyPanel] ^definition = "Conformité Survey Panel (IHE PCC)"
* templateId[ccdResultOrganizer].root 1..1
* templateId[ccdResultOrganizer].root = "2.16.840.1.113883.10.20.1.32"
* templateId[ccdResultOrganizer] ^short = "Conformité Result organizer (CCD)"
* templateId[ccdResultOrganizer] ^definition = "Conformité Result organizer (CCD)"
* templateId[frGroupeDeQuestionnairesDevaluation].root 1..1
* templateId[frGroupeDeQuestionnairesDevaluation].root = "1.2.250.1.213.1.1.3.95"
* templateId[frGroupeDeQuestionnairesDevaluation] ^short = "Conformité FR-Groupe-de-questionnaires-d-evaluation (CI-SIS)"
* templateId[frGroupeDeQuestionnairesDevaluation] ^definition = "Conformité FR-Groupe-de-questionnaires-d-evaluation (CI-SIS)"
* code MS
* code ^short = "Code de l'entrée"
* code ^definition = "Code de l'entrée"
* code.code 1..1 MS
* code.displayName MS
* code.codeSystem 1..1 MS
* statusCode MS
* statusCode 1..1
* statusCode ^short = "Statut de l'organizer"
* statusCode ^definition = "Statut de l'organizer"
* statusCode.code = #completed
* effectiveTime MS
* effectiveTime 1..1
* effectiveTime ^short = "Horodatage de l'entrée"
* effectiveTime ^definition = "Horodatage de l'entrée"
* component 1..* MS
* component.typeCode = #COMP
* component.observation ^short = "Évaluation"
* component.observation only FRCDAEvaluation