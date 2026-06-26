Profile: FRCDAOrganismeAssuranceMaladie
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Act
Id: fr-cda-organisme-assurance-maladie
Title: "CDA - FR Organisme assurance maladie"
Description: "Entrée FR-Organisme-assurance-maladie: IHE-PCC - Payers-entry. L'entrée Organisme d'assurance maladie est une entrée permettant de décrire un organisme d'assurance maladie."
* classCode MS
* classCode = #ACT
* moodCode MS
* moodCode = #EVN
* id 1..* MS
* id ^short = "Identifiant de l'entrée"
* id ^definition = "Identifiant de l'entrée"
* templateId 1..3
* templateId ^slicing.discriminator.type = #value
* templateId ^slicing.discriminator.path = "root"
* templateId ^slicing.rules = #open
* templateId contains ihePayerEntry 1..1
and ccdPolicyActivity 1..1
and frOrganismeAssuranceMaladie 1..1
* templateId[ihePayerEntry].root 1..1
* templateId[ihePayerEntry].root = "1.3.6.1.4.1.19376.1.5.3.1.4.18"
* templateId[ihePayerEntry] ^short = "Conformité Payer Entry (IHE PCC)"
* templateId[ihePayerEntry] ^definition = "Conformité Payer Entry (IHE PCC)"
* templateId[ccdPolicyActivity].root 1..1
* templateId[ccdPolicyActivity].root = "2.16.840.1.113883.10.20.1.26"
* templateId[ccdPolicyActivity] ^short = "Conformité Policy activity (CCD)"
* templateId[ccdPolicyActivity] ^definition = "Conformité Policy activity (CCD)"
* templateId[frOrganismeAssuranceMaladie].root 1..1
* templateId[frOrganismeAssuranceMaladie].root = "1.2.250.1.213.1.1.3.94"
* templateId[frOrganismeAssuranceMaladie] ^short = "Conformité FR-Organisme-assurance-maladie (CI-SIS)"
* templateId[frOrganismeAssuranceMaladie] ^definition = "Conformité FR-Organisme-assurance-maladie (CI-SIS)"
* code MS
* code ^short = "Type de couverture sociale"
* code ^definition = "Type de couverture sociale"
* code from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-couverture-sociale-cisis (required)
* code.code 1..1 MS
* code.displayName MS
* code.codeSystem 1..1 MS
* statusCode MS
* statusCode 1..1
* statusCode ^short = "Statut de l'entrée"
* statusCode ^definition = "Statut de l'entrée"
* statusCode.code = #completed
* performer ^short = "Organisme de couverture sociale"
* performer ^definition = "Organisme de couverture sociale"
* performer 1..1 MS
* performer.assignedEntity MS
* performer.assignedEntity.classCode MS
* performer.assignedEntity.id ^short = "Identifiant de l'organisme"
* performer.assignedEntity.id ^definition = "Identifiant de l'organisme"
* performer.assignedEntity.code 1..1 MS
* performer.assignedEntity.code ^short = "Rôle de l'organisme"
* performer.assignedEntity.code ^definition = "Rôle de l'organisme"
* performer.assignedEntity.addr 1..* MS
* performer.assignedEntity.addr ^short = "Adresse de l'organisme"
* performer.assignedEntity.addr ^definition = "Adresse de l'organisme"
* performer.assignedEntity.telecom 1..* MS
* performer.assignedEntity.telecom ^short = "Coordonnées télécom de l'organisme"
* performer.assignedEntity.telecom ^definition = "Coordonnées télécom de l'organisme"
* performer.assignedEntity.assignedPerson MS
* performer.assignedEntity.assignedPerson ^short = "Contact"
* performer.assignedEntity.assignedPerson ^definition = "Contact"
* performer.assignedEntity.representedOrganization 1..1 MS
* performer.assignedEntity.representedOrganization ^short = "Nom de l'organisme"
* performer.assignedEntity.representedOrganization ^definition = "Nom de l'organisme"
* performer.assignedEntity.representedOrganization.name 1..1 MS
* participant ^slicing.discriminator.type = #value
* participant ^slicing.discriminator.path = "typeCode"
* participant ^slicing.rules = #open
* participant MS
* participant contains 
frParticipantBeneficiaire 0..1 MS  and 
frParticipantAssure 0..1 MS 
* participant[frParticipantBeneficiaire] ^short = "Bénéficiaire de la couverture"
* participant[frParticipantBeneficiaire] ^definition = "Bénéficiaire de la couverture"
  * typeCode = #COV
  * participantRole MS
    * classCode = #PAT
    * id MS
    * id ^short = "Identifiant du bénéficiaire"
    * id ^definition = "Identifiant du bénéficiaire"
    * code ^short = "Lien Bénéficiaire - Assuré"
    * code from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-lien-assure-beneficiaire-cisis (required)
    * addr ^short = "Adresse du bénéficiaire"
    * addr ^definition = "Adresse du bénéficiaire"
    * telecom ^short = "Coordonnées télécom du bénéficiaire"
    * telecom ^definition = "Coordonnées télécom du bénéficiaire"
    * playingEntity.name 1..1 MS
    * playingEntity.name ^short = "Nom du bénéficiaire"

* participant[frParticipantAssure] ^short = "Assuré"
* participant[frParticipantAssure] ^definition = "Assuré"
  * typeCode = #HLD
  * participantRole MS
    * classCode = #INDIV
    * id 1..* MS
    * id ^short = "Identifiant de l'assuré"
    * id ^definition = "Identifiant de l'assuré"
    * addr 1..*
    * addr ^short = "Adresse de l'assuré"
    * addr ^definition = "Adresse de l'assuré"
    * telecom 1..*
    * telecom ^short = "Coordonnées télécom de l'assuré"
    * telecom ^definition = "Coordonnées télécom de l'assuré"
    * playingEntity.name 1..1 MS
    * playingEntity.name ^short = "Nom de l'assuré"
* entryRelationship MS
* entryRelationship ^short = "Informations sur le plan de soins"
* entryRelationship ^definition = "Informations sur le plan de soins"
  * typeCode = #REFR
  * act 1..1
    * classCode MS
    * classCode = #ACT
    * id 1..* MS
    * id ^short = "Identifiant du plan de soins"
    * id ^definition = "Identifiant du plan de soins"
    * text MS
    * text ^short = "Plan de soins"
    * text ^definition = "Plan de soins"
    * text.reference 1..1 MS 
    * text.reference ^short = "Référence vers la partie narrative contenant le texte."