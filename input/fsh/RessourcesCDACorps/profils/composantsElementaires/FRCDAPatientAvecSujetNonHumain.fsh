Profile: FRCDAPatientAvecSujetNonHumain
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Subject
Id: fr-cda-patient-avec-sujet-non-humain
Title: "CDA - FR Patient avec sujet non humain"
Description: "Entrée FR-Patient-avec-sujet-non-humain: Cet élément doit être présent lorsque le sujet des observations de cette partie du compte rendu est un échantillon provenant d'un sujet non humain (animal ou autre élément environnemental), tandis que les autres parties du rapport sont liés au patient humain. Le sujet non humain doit aussi être décrit dans l'en-tête du document."
* templateId 1..2
* templateId ^slicing.discriminator.type = #value
* templateId ^slicing.discriminator.path = "root"
* templateId ^slicing.rules = #open
* templateId contains iheHumanPatientWithNonHumanSubject 1..1
and frPatientAvecSujetNonHumain 1..1
* templateId[iheHumanPatientWithNonHumanSubject].root 1..1
* templateId[iheHumanPatientWithNonHumanSubject].root = "1.3.6.1.4.1.19376.1.3.3.1.3.1"
* templateId[iheHumanPatientWithNonHumanSubject] ^short = "Conformité de l'entrée aux spécifications IHE-PCC"
* templateId[iheHumanPatientWithNonHumanSubject] ^definition = "Conformité de l'entrée aux spécifications IHE-PCC"
* templateId[frPatientAvecSujetNonHumain].root 1..1
* templateId[frPatientAvecSujetNonHumain].root = "1.2.250.1.213.1.1.3.22"
* templateId[frPatientAvecSujetNonHumain] ^short = "Conformité aux spécifications (CI-SIS)"
* templateId[frPatientAvecSujetNonHumain] ^definition = "Conformité aux spécifications (CI-SIS)"
* relatedSubject MS
* relatedSubject 1..1
  * code MS
  * code 1..1
  * code ^short = "Sujet (ex. poulet, poisson, œuf, salade, eau, terre, air, peinture, etc.)."
  * code ^definition = "Sujet (ex. poulet, poisson, œuf, salade, eau, terre, air, peinture, etc.)."
  * code.code 1..1 MS
  * code.displayName MS
  * code.codeSystem 1..1 MS
  * addr MS
  * addr 1..1
  * addr ^short = "Lieu de provenance du sujet non humain"
  * addr ^definition = "Lieu de provenance du sujet non humain"