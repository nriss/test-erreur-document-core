Profile: FRCDAClinicalDocument
Parent: http://hl7.org/cda/stds/core/StructureDefinition/ClinicalDocument
Id: fr-cda-clinical-document
Title: "CDA - clinicalDocument"
Description: "L'élément de l'en-tête CDA 'ClinicalDocument' est l’élément racine d’un document médical."
* ^status = #draft
* realmCode 1..1 
  * ^short = "Type de consentement Périmètre d’utilisation : France."
* typeId 1..1 
  * ^short = "Référence au standard CDA R2."
* templateId 3..* 
  * ^short = "Déclarations de conformité."
* id ^short = "Identifiant unique du document."
* code ^short = "Type de document."
* title 1..1 
  * ^short = "Titre du document." 
* effectiveTime ^short = "Date et heure de création du document."
* confidentialityCode ^short = "Niveau de confidentialité du document."
* languageCode 1..1 
  * ^short = "Langue principale du document."
* setId 1..1 
  * ^short = "Identifiant du lot de versions du même document."
* versionNumber 1..1 
  * ^short = "Numéro de version du document."
* copyTime 0..0
* recordTarget 1..1
* recordTarget only fr-cda-record-target
  * ^short = "Patient/Usager concerné par le document."
* author only fr-cda-author
  * ^short = "Professionnel ou patient/usager ou système, auteur du document incluant la structure de rattachement de l'auteur."
* dataEnterer only fr-cda-data-enterer
  * ^short = "Opérateur de saisie."
* informant only FRCDAInformant 
  * ^short = "Informateur (informant), ayant fourni des informations utiles aux actes en rapport avec la production du document." 
* custodian only FRCDACustodian 
  * ^short = "Structure conservant le document et garantissant son cycle de vie." 
* informationRecipient only FRCDAInformationRecipient 
  * ^short = "Destinataire prévu du document." 
* legalAuthenticator 1..1 
* legalAuthenticator only FRCDALegalAuthenticator 
  * ^short = "Professionnel ou patient/usager ou système responsable du document."
* authenticator only FRCDAAuthenticator 
  * ^short = "Professionnel attestant la validité du document" 
* participant only FRCDAParticipantEntete
  * ^short = "Participant, différent de l'auteur, du responsable, de l'opérateur de saisie, de l'informateur ou du destinataire."
* inFulfillmentOf only FRCDAInFulfillmentOf 
  * ^short = "Prescription" 
* documentationOf 1..* 
* documentationOf only FRCDADocumentationOf 
  * ^short = "Evènement documenté et notamment le cadre d'exercice." 
* relatedDocument 0..1 
* relatedDocument only FRCDARelatedDocument 
  * ^short = "Document de référence (à remplacer, transformé, …)." 
* authorization only FRCDAAuthorization 
  * ^short = "Consentement associé au document." 
* componentOf 1..1 
  * ^short = "Prise en charge du patient/usager et notamment la date et le secteur d'activité."
* obeys FRCDAPerformerRequire
