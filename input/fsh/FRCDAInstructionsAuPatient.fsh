Profile: FRCDAInstructionsAuPatient
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Act
Id: fr-cda-instructions-au-patient
Title: "CDA - FR Instructions au patient"
Description: "Entrée FR-Instructions-au-patient: IHE-PCC - Patient-Medication-Instructions. Cette entrée permet d’enregistrer des instructions au patient : 
 - sous forme textuelle uniquement (c’est notamment le cas pour les prescriptions de médica-ments) ; 
 - sous forme codée : chaque instruction est alors codée dans une sous-entrée FR-Instruction-au-patient (c’est notamment le cas pour les prescriptions d’examens de biologie médicale)."
* classCode MS
* classCode = #ACT
* moodCode MS
* moodCode = #INT
* templateId 1..3
* templateId ^slicing.discriminator.type = #value
* templateId ^slicing.discriminator.path = "root"
* templateId ^slicing.rules = #open
* templateId contains ihePatientMedicationInstruction 1..1
and ccdPatientInstructions 1..1
and frInstructionsAuPatient 1..1
* templateId[ihePatientMedicationInstruction].root 1..1
* templateId[ihePatientMedicationInstruction].root = "1.3.6.1.4.1.19376.1.5.3.1.4.3"
* templateId[ihePatientMedicationInstruction] ^short = "Conformité Patient Medication Instruction (IHE PCC)"
* templateId[ihePatientMedicationInstruction] ^definition = "Conformité Patient Medication Instruction (IHE PCC)"
* templateId[ccdPatientInstructions].root 1..1
* templateId[ccdPatientInstructions].root = "2.16.840.1.113883.10.20.1.49"
* templateId[ccdPatientInstructions] ^short = "Conformité Patient instructions (CCD)"
* templateId[ccdPatientInstructions] ^definition = "Conformité Patient instructions (CCD)"
* templateId[frInstructionsAuPatient].root 1..1
* templateId[frInstructionsAuPatient].root = "1.2.250.1.213.1.1.3.33"
* templateId[frInstructionsAuPatient] ^short = "Conformité FR-Instructions-au-patient (CI-SIS)"
* templateId[frInstructionsAuPatient] ^definition = "Conformité FR-Instructions-au-patient (CI-SIS)"
* code MS
* code ^short = "Code de l'entrée"
* code ^definition = "Code de l'entrée"
* code.code = #PINSTRUCT
* code.codeSystem = "1.3.6.1.4.1.19376.1.5.3.2"
* code.codeSystemName = "IHEActCode"
* code.code 1..1 MS
* code.codeSystem 1..1 MS
* code.displayName MS
* text MS
* text 1..1
* text ^short = "Instructions au patient"
* statusCode MS
* statusCode 1..1
* statusCode ^short = "Statut de l’entrée. Fixé à la valeur 'completed'"
* statusCode ^definition = "Statut de l’entrée"
* statusCode.code = #completed
* entryRelationship MS
* entryRelationship ^short = "Instruction au patient sous forme codée. typeCode='COMP'"
* entryRelationship.observation ^definition = "Instruction au patient sous forme codée"
* entryRelationship.typeCode = #COMP
* entryRelationship.observation only FRCDAInstructionAuPatient