# CDA - ANS IG document core v0.1.0-snapshot

## CDA

Ce guide présente les spécifications de l'entête CDA applicables à l'ensemble des documents de santé persistants partagés ou échangés au format CDA dans le contexte français.

### Structure générale de l'entête CDA

Les données de l’entête d'un document CDA sont véhiculées dans les éléments XML entre la racine ClinicalDocument et l'élément component (non inclus) comme indiqué dans la figure ci-dessous (extrait du schéma XML CDA R2) :

Le tableau ci-dessous liste, dans l’ordre du schéma CDA, les éléments XML de l’entête avec leurs cardinalités fixées par le CI-SIS et les objets qu'ils contiennent et décrivent.

ClinicalDocument hérite de : [https://hl7.org/cda/stds/core/2.0.1-sd/StructureDefinition-ClinicalDocument.html](https://hl7.org/cda/stds/core/2.0.1-sd/StructureDefinition-ClinicalDocument.html)

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| **ClinicalDocument** |   |   |   |   |
|   | **realmCode** | [1..1] | Périmètre d'utilisation : France | nullFlavor interdit |
|   | **typeId** | [1..1] | Référence au standard CDA R2 | nullFlavor interdit |
|   | **templateId** | [3..*] | Déclarations de conformité | nullFlavor interdit |
|   | **id** | [1..1] | Identifiant unique du document | nullFlavor interdit |
|   | **code** | [1..1] | Type de document | nullFlavor interdit |
|   | **title** | [1..1] | Titre du document | nullFlavor interdit |
|   | **effectiveTime** | [1..1] | Date et heure de création du document | nullFlavor interdit |
|   | **confidentialityCode** | [1..1] | Niveau de confidentialité du document | nullFlavor interdit |
|   | **languageCode** | [1..1] | Langue principale du document | nullFlavor interdit |
|   | **setId** | [1..1] | Identifiant du lot de versions du même document | nullFlavor interdit |
|   | **versionNumber** | [1..1] | Numéro de version du document | nullFlavor interdit |
|   | **copyTime** | [0..1] | **Date et heure de remise - Élément obsolète à ne pas utiliser.** |   |
|   | [recordTarget](StructureDefinition-fr-cda-record-target.md#tabs-snap) | [1..1] | Patient/Usager concerné par le document | nullFlavor interdit |
|   | [author](StructureDefinition-fr-cda-author.md#tabs-snap) | [1..*] | Professionnel patient/usager ou système, auteur du document ou structure de rattachement | nullFlavor interdit |
|   | [dataEnterer](StructureDefinition-fr-cda-data-enterer.md#tabs-snap) | [0..1] | Opérateur de saisie |   |
|   | [informant](StructureDefinition-fr-cda-informant.md#tabs-snap) | [0..*] | Informateur (informant), ayant fourni des informations aux actes en rapport avec le document |   |
|   | [custodian](StructureDefinition-fr-cda-custodian.md) | [1..1] | Structure conservant le document et garantissant son cycle de vie |   |
|   | [informationRecipient](StructureDefinition-fr-cda-information-recipient.md#tabs-snap) | [0..*] | Destinataire prévu du document |   |
|   | [legalAuthenticator](StructureDefinition-fr-cda-legal-authenticator.md#tabs-snap) | [1..1] | Professionnel ou patient/usager ou système responsable du document | nullFlavor interdit |
|   | [authenticator](StructureDefinition-fr-cda-authenticator.md#tabs-snap) | [0..*] | Professionnel attestant la validité du document** | nullFlavor interdit |
|   | [participant](StructureDefinition-fr-cda-participant.md#tabs-snap) | [0..*] | Participant, différent de l'auteur, du responsable, de l'opérateur de saisie, de l'informateur ou du destinataire |   |
|   | [inFulfillmentOf](StructureDefinition-fr-cda-inFulfillment-of.md#tabs-snap) | [0..*] | Prescription |   |
|   | [documentationOf](StructureDefinition-fr-cda-documentation-of.md#tabs-snap) | [1..*] | Événement documenté et notamment le cadre d’exercice | nullFlavor interdit |
|   | [relatedDocument](StructureDefinition-fr-cda-related-document.md#tabs-snap) | [0..1] | Document de référence (à remplacer, transformé, …) |   |
|   | [authorization](StructureDefinition-fr-cda-authorization.md#tabs-snap) | [0..*] | Consentement associé au document |   |
|   | [componentOf](StructureDefinition-fr-cda-component-of.md#tabs-snap) | [1..1] | Prise en charge du patient/usager et notamment la date et le secteur d’activité. | nullFlavor interdit |

(1) L’attribut nullFlavor est utilisé dans un élément requis (card [1..1] ou [1..*]) lorsque le contenu de cet élément ne peut être renseigné. Cet attribut prend alors pour valeur un code donnant la raison de l'impossibilité de renseigner cet élément obligatoire. Le CI-SIS restreint la liste des valeurs possibles de nullFlavor sur les éléments d’entête aux valeurs suivantes :

| | |
| :--- | :--- |
| UNK | Inconnu |
| NASK | Non demandé |
| ASKU | Demandé mais non connu |
| NAV | Temporairement indisponible |
| MSK | Masqué |

Exemple :

```
 <telecom nullFlavor="UNK"/>

```

### Descriptions des sous-éléments transverses

| | |
| :--- | :--- |
| **assignedEntity** | dataEntererinformantlegalAuthenticatorauthenticatordocumentationOf/serviceEvent/performercomponentOf/encompassingEncounter/responsiblePartycomponentOf/encompassingEncounter/encounterParticipant |
| **addr** | recordTarget/patientRole/addrrecordTarget/patientRole/patient/guardian/addrrecordTarget/patientRole/patient/birthPlace/place/addrauthor/assignedAuthor/addrdataEnterer/assignedEntity/addrinformant/assignedEntity/addrinformant/relatedEntity/addrcustodian/assignedCustodian/representedCustodianOrganization/addrinformationRecipient/intendedRecipient/addrinformationRecipient/intendedRecipient/receivedOrganization/addrlegalAuthenticator/assignedEntity/addrlegalAuthenticator/assignedEntity/representedOrganization/addrparticipant/associatedEntity/addrdocumentationOf/serviceEvent/performer/assignedEntity/addrdocumentationOf/serviceEvent/performer/assignedEntity/representedOrganization/addrcomponentOf/encompassingEncounter/location/healthCareFacility/location/addr |
| **telecom** | recordTarget/patientRole/telecomrecordTarget/patientRole/patient/guardian/telecomauthor/assignedAuthor/telecomdataEnterer/assignedEntity/telecominformant/assignedEntity/telecominformant/relatedEntity/telecomcustodian/assignedCustodian/representedCustodianOrganization/telecominformationRecipient/intendedRecipient/telecominformationRecipient/intendedRecipient/receivedOrganization/telecomlegalAuthenticator/assignedEntity/telecomlegalAuthenticator/assignedEntity/representedOrganization/telecomparticipant/associatedEntity/telecomdocumentationOf/serviceEvent/performer/assignedEntity/telecomdocumentationOf/serviceEvent/performer/assignedEntity/representedOrganization/telecom |
| **time** | author/timedataEnterer/timelegalAuthenticator/timeauthenticator/timeparticipant/timedocumentationOf/serviceEvent/performer/timecomponentOf/encompassingEncounter/encounterParticipant/time |
| **effectiveTime** | documentationOf/serviceEvent/effectiveTimecomponentOf/encompassingEncounter/effectiveTime |

