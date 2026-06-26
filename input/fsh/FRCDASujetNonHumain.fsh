Profile: FRCDASujetNonHumain
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Subject
Id: fr-cda-sujet-non-humain
Title: "CDA - FR Sujet non humain"
Description: "Entrée FR-Sujet-non-humain: IHE-PCC - Non-Human Subject 
 - Cet élément doit être présent lorsque le sujet des observations du compte rendu est un échantillon provenant d'un sujet non humain (animal ou autre élément environnemental) analysé par un laboratoire de biologie médicale dans le cadre d'une investigation sur un patient. Le sujet non humain doit aussi être décrit dans l'en-tête du document."
* templateId 1..2
* templateId ^slicing.discriminator.type = #value
* templateId ^slicing.discriminator.path = "root"
* templateId ^slicing.rules = #open
* templateId contains iheNonHumanSubject 1..1
and frSujetNonHumain 1..1
* templateId[iheNonHumanSubject].root 1..1
* templateId[iheNonHumanSubject].root = "1.3.6.1.4.1.19376.1.3.3.1.2.1"
* templateId[iheNonHumanSubject] ^short = "Conformité de l'entrée aux spécifications IHE-PCC"
* templateId[iheNonHumanSubject] ^definition = "Conformité de l'entrée aux spécifications IHE-PCC"
* templateId[frSujetNonHumain].root 1..1 
* templateId[frSujetNonHumain].root = "1.2.250.1.213.1.1.3.22"
* templateId[frSujetNonHumain] ^short = "Conformité aux spécifications (CI-SIS)"
* templateId[frSujetNonHumain] ^definition = "Conformité aux spécifications (CI-SIS)"
* relatedSubject MS
  * code MS
  * code 1..1
  * code ^short = "Sujet (ex. poulet, poisson, œuf, salade, eau, terre, air, peinture, etc.)."
  * code ^definition = "Sujet"
  * code.code 1..1 MS
  * code.displayName MS
  * code.codeSystem 1..1 MS
  * addr MS
  * addr 1..1
  * addr ^short = "Lieu de provenance du sujet non humain"
  * addr ^definition = "Lieu de provenance du sujet non humain"