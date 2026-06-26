Profile: FRCDAActeSubstitution
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Act
Id: fr-cda-acte-substitution
Title: "CDA - FR Acte substitution"
Description: "Entrée FR-Acte-substitution: IHE PHARM DIS - Substitution actCette observation permet d'indiquer si le traitement a été substitué."
* classCode MS
* classCode = #ACT
* moodCode MS
* moodCode = #EVN
* templateId 1..2
* templateId ^slicing.discriminator.type = #value
* templateId ^slicing.discriminator.path = "root"
* templateId ^slicing.rules = #open
* templateId contains frActeSubstitution 1..1
and iheSubstitutionAct 1..1
* templateId[frActeSubstitution].root 1..1
* templateId[frActeSubstitution].root = "1.2.250.1.213.1.1.3.206"
* templateId[frActeSubstitution] ^short = "Conformité FR-Acte-substitution (CI-SIS)"
* templateId[frActeSubstitution] ^definition = "Conformité FR-Acte-substitution (CI-SIS)"
* templateId[iheSubstitutionAct].root 1..1
* templateId[iheSubstitutionAct].root = "1.3.6.1.4.1.19376.1.9.1.3.9.2"
* templateId[iheSubstitutionAct] ^short = "Conformité Substitution act (IHE PHARM DIS)"
* templateId[iheSubstitutionAct] ^definition = "Conformité Substitution act (IHE PHARM DIS)"
* code MS
* code ^short = "Code de l'entrée"
* code ^definition = "Code de l'entrée"
* code.code = #G
* code.displayName = "Substitution autorisée par un produit générique"
* code.codeSystem = "2.16.840.1.113883.5.1070"
* code.codeSystemName = "HL7_SubstanceAdminSubstitution"
* code.code 1..1 MS
* code.codeSystem MS
* statusCode MS
* statusCode 1..1
* statusCode ^short = "Statut de l’entrée - Fixé à la valeur 'completed'"
* statusCode ^definition = "Statut de l’entrée"
* statusCode.code = #completed
