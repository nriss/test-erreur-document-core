Profile: FRCDASujet
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Subject
Id: fr-cda-sujet
Title: "CDA - FR Sujet"
Description: "Entrée FR-Sujet: IHE-PCC - Subject participation. Cet élément peut être utilisé lorsqu'il est nécessaire de distinguer qu'une section ou une entrée s'applique à une personne autre que le patient concerné par le document. Par exemple, cet élément est utilisé pour identifier les membres de la famille dans les antécédents familiaux, les nouveaux-nés dans l'historique d'une grossesse."
* templateId 1..2
* templateId ^slicing.discriminator.type = #value
* templateId ^slicing.discriminator.path = "root"
* templateId ^slicing.rules = #open
* templateId contains iheSujet 1..1
and frSujet 1..1
* templateId[iheSujet].root 1..1
* templateId[iheSujet].root = "1.3.6.1.4.1.19376.1.5.3.1.4.15.2"
* templateId[iheSujet] ^short = "Conformité Subject participation (IHE PCC)"
* templateId[iheSujet] ^definition = "Conformité Subject participation (IHE PCC)"
* templateId[frSujet].root 1..1
* templateId[frSujet].root = "1.2.250.1.213.1.1.3.60"
* templateId[frSujet] ^short = "Conformité FR-Sujet (CI-SIS)"
* templateId[frSujet] ^definition = "Conformité FR-Sujet (CI-SIS)"
* relatedSubject MS
* relatedSubject 1..1
  * classCode = #PRS
  * code MS
  * code 1..1
  * code ^short = "Lien avec le patient"
  * code ^definition = "Lien avec le patient"
  * code from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-hl7-v3-PersonalRelationshipRoleType-cisis (required)
  * code.codeSystem = "2.16.840.1.113883.5.111"
  * code.code 1..1 MS
  * code.displayName MS
  * code.codeSystem 1..1 MS
  * addr MS
  * addr only CISISAddr
  * addr ^short = "Adresse"
  * telecom MS
  * telecom only CISISTelecom
  * telecom ^short = "Télécom"
  * subject MS
  * subject ^short = "Sujet"
  * subject ^definition = "Sujet"
  * subject only FRCDASujetPersonne
