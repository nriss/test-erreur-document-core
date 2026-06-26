Profile: FRCDAAutorisationSubstitution
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Act
Id: fr-cda-autorisation-substitution
Title: "CDA - FR Autorisation Substitution"
Description: "Entrée FR-Autorisation-Substitution: IHE-PRE - Substitution-Permission. Cette observation permet d'indiquer si le traitement auquel elle est associée peut être substitué."
* classCode MS
* classCode = #ACT
* moodCode MS
* moodCode = #DEF
* templateId 1..2
* templateId ^slicing.discriminator.type = #value
* templateId ^slicing.discriminator.path = "root"
* templateId ^slicing.rules = #open
* templateId contains iheSubstitutionPermission 1..1
and frAutorisationSubstitution 1..1
* templateId[iheSubstitutionPermission].root 1..1
* templateId[iheSubstitutionPermission].root = "1.3.6.1.4.1.19376.1.9.1.3.9.1"
* templateId[iheSubstitutionPermission] ^short = "Conformité Substitution-Permission (IHE PHARM)"
* templateId[iheSubstitutionPermission] ^definition = "Conformité Substitution-Permission (IHE PHARM)"
* templateId[frAutorisationSubstitution].root 1..1
* templateId[frAutorisationSubstitution].root = "1.2.250.1.213.1.1.3.87"
* templateId[frAutorisationSubstitution] ^short = "Conformité FR-Autorisation-Substitution (CI-SIS)"
* templateId[frAutorisationSubstitution] ^definition = "Conformité FR-Autorisation-Substitution (CI-SIS)"
* code ^short = "Type de substitution autorisé entre le traitement prescrit et le traitement dispensé."
* code ^definition = "Type de substitution autorisé"
* code from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-hl7-v3-ActSubstanceAdminSubstitutionCode-cisis (required)
* code.code 1..1 MS
* code.displayName MS
* code.codeSystem 1..1 MS
* statusCode MS
* statusCode 1..1
* statusCode ^short = "Statut de l’entrée. Fixé à la valeur 'completed'"
* statusCode ^definition = "Statut de l’entrée"
* statusCode.code = #completed
