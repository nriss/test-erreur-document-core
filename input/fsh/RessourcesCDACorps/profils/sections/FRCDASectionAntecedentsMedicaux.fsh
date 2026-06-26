Profile: FRCDASectionAntecedentsMedicaux
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Section
Id: fr-cda-antecedents-medicaux
Title: "CDA - FR Antecedents medicaux"
Description: "IHE-PCC - History-Of-Past-Illness 
 - La section 'Antécédents médicaux' doit contenir une liste codée des antécédents médicaux du patient. Il s'agit d'épisodes résolus, c'est à dire de maladies que l'on considère comme guéries. Si une maladies est susceptible de présenter des épisodes de rechute, elle sera classée dans des problèmes actifs, même si ces épisodes dont résolus."
* templateId 1..2
* templateId ^slicing.discriminator.type = #value
* templateId ^slicing.discriminator.path = "root"
* templateId ^slicing.rules = #open
* templateId contains iheHistoryOfPastIllnessSection 1..1
and frSectionAntecedentsMedicaux 1..1
* templateId[iheHistoryOfPastIllnessSection].root = "1.3.6.1.4.1.19376.1.5.3.1.3.8"
* templateId[iheHistoryOfPastIllnessSection] ^short = "Déclaration de conformité de la section aux spécifications IHE PCC"
* templateId[frSectionAntecedentsMedicaux].root = "1.2.250.1.213.1.1.2.134"
* templateId[frSectionAntecedentsMedicaux] ^short = "Déclaration de conformité de la section aux spécifications CI-SIS"
* id MS
* id ^short = "Identifiant de la section"
* id ^definition = "Identifiant de la section"
* code MS
* code 1..1
* code ^short = "Code de la section"
* code ^definition = "Code de la section"
* code.code 1..1
* code.code = #11348-0
* code.displayName 1..1
* code.displayName = "Antécédents médicaux"
* code.codeSystem 1..1
* code.codeSystem = "2.16.840.1.113883.6.1"
* code.codeSystemName = "LOINC"
* title 1..1
* title ^short = "Titre de la section"
* title ^definition = "Titre de la section"
* text 1..1 MS
* text ^short = "Bloc narratif"
* text ^definition = "Bloc narratif"
* entry MS
* entry 1..*
* entry.act only FRCDAListeDesProblemes
* entry ^short = "Entrée Liste des problèmes"