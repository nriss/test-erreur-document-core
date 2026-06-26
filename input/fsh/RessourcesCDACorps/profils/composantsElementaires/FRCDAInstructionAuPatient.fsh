Profile: FRCDAInstructionAuPatient
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Observation
Id: fr-cda-instruction-au-patient
Title: "CDA - FR Instruction au patient"
Description: "Entrée FR-Instruction-au-patient: IHE-PCC - Simple-Observation. Cette entrée permet d’enregistrer une instruction au patient sous forme codée (c’est notamment le cas pour les prescriptions d’examens de biologie médicale)."
* classCode MS
* classCode = #OBS
* moodCode MS
* moodCode = #EVN
* id 1..1 MS
* id ^short = "Identifiant de l'entrée"
* id ^definition = "Identifiant de l'entrée"
* templateId 1..3
* templateId ^slicing.discriminator.type = #value
* templateId ^slicing.discriminator.path = "root"
* templateId ^slicing.rules = #open
* templateId contains iheSimpleObservation 1..1
and frSimpleObservation 1..1
and frInstructionAuPatient 1..1
* templateId[iheSimpleObservation].root 1..1
* templateId[iheSimpleObservation].root = "1.3.6.1.4.1.19376.1.5.3.1.4.13"
* templateId[iheSimpleObservation] ^short = "Conformité Simple Observation (IHE PCC)"
* templateId[iheSimpleObservation] ^definition = "Conformité Simple Observation (IHE PCC)"
* templateId[frSimpleObservation].root 1..1
* templateId[frSimpleObservation].root = "1.2.250.1.213.1.1.3.48"
* templateId[frSimpleObservation] ^short = "Conformité FR-Simple-observation (CI-SIS)"
* templateId[frSimpleObservation] ^definition = "Conformité FR-Simple-observation (CI-SIS)"
* templateId[frInstructionAuPatient].root 1..1
* templateId[frInstructionAuPatient].root = "1.2.250.1.213.1.1.3.48.35"
* templateId[frInstructionAuPatient] ^short = "Conformité FR-Instruction-au-patient (CI-SIS)"
* templateId[frInstructionAuPatient] ^definition = "Conformité FR-Instruction-au-patient (CI-SIS)"
* code MS
* code ^short = "Code de l'observationLes attributs de cet élément prennent les valeurs suivantes :code='PINSTRUCT' codeSystem='1.3.6.1.4.1.19376.1.5.3.2' codeSystemName= 'IHEActCode'"
* code ^definition = "Code de l'observation"
* code.codeSystem = "1.3.6.1.4.1.19376.1.5.3.2"
* code.code = #PINSTRUCT
* code.code 1..1 MS
* code.codeSystem 1..1 MS
* code.displayName MS
* text MS
* text 1..1
* text ^short = "Description narrative de l'observation"
* statusCode MS
* statusCode 1..1
* statusCode ^short = "Statut de l'observation. Fixé à la valeur 'completed'"
* statusCode ^definition = "Statut de l'observation"
* statusCode.code = #completed
* effectiveTime MS
* effectiveTime ^short = "Horodatage de l’entrée"
* effectiveTime ^definition = "Horodatage de l’entrée"
* value MS
* value ^short = "Instruction au patient sous forme codée. JDV dépendant du cas d’usage.
• Pour les prescription d’examen de biologie : JDV_Bio_instruction_patient_CISIS (1.2.250.1.213.1.1.5.691)"
* value ^definition = "Instruction au patient sous forme codée"
* value only CD