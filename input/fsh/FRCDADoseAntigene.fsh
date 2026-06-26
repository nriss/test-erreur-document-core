Profile: FRCDADoseAntigene
Parent: http://hl7.org/cda/stds/core/StructureDefinition/SubstanceAdministration
Id: fr-cda-dose-antigene
Title: "CDA - FR Dose antigene"
Description: "Entrée FR-Dose-antigene: IHE-PCC – Antigene-Dose. L'entrée Dose d'antigène permet de décrire des informations complémentaires sur la vaccination, et plus précisément, la dose spécifique d'un antigène."
* classCode MS
* moodCode MS
* moodCode = #EVN
* negationInd = false
* id 1..1 MS
* id ^short = "Identifiant de la fourniture du DM - Attribué par le LPS avec si possible les attributs @root et @extension. Sinon, un identifiant unique de type UUID est affec-té à l’attribut root et l’attribut extension est omis."
* id ^definition = "Identifiant de la fourniture du DM"
* templateId 1..2
* templateId ^slicing.discriminator.type = #value
* templateId ^slicing.discriminator.path = "root"
* templateId ^slicing.rules = #open
* templateId contains iheAntigenDose 1..1
and frDoseAntigene 1..1
* templateId[iheAntigenDose].root 1..1
* templateId[iheAntigenDose].root = "1.3.6.1.4.1.19376.1.5.3.1.4.12.1"
* templateId[iheAntigenDose] ^short = "Conformité Antigen Dose (IHE PCC) "
* templateId[iheAntigenDose] ^definition = "Conformité Antigen Dose (IHE PCC)"
* templateId[frDoseAntigene].root 1..1
* templateId[frDoseAntigene].root = "1.2.250.1.213.1.1.3.46"
* templateId[frDoseAntigene] ^short = "Conformité FR-Dose-antigene (CI-SIS) "
* templateId[frDoseAntigene] ^definition = "Conformité FR-Dose-antigene (CI-SIS)"
* doseQuantity 1..1
* doseQuantity ^short = "Dose d'antigène"
  * value 1..1
  * unit 1..1
* consumable 1..1
* consumable only FRCDAProduitDeSante
* consumable ^short = "Antigène"
