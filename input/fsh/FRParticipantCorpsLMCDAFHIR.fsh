Instance: FRParticipantCorpsLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMParticipantCorps -> FRCDAParticipant -> FRActorExtension"
Description: "Mapping des éléments du modele metier FRLMParticipantCorps vers le profil CDA FRCDAParticipant, puis vers l'extension FHIR FRActorExtension."
* title = "Mapping Metier/CDA/FHIR : \"Participant\""
* status = #draft

// Groupe Mapping 1 : modele metier -> CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-participant-corps"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-participant"
// Element racine
* group[=].element[+].code = #FRLMParticipantCorps
* group[=].element[=].target.code = #FRCDAParticipant
* group[=].element[=].target.equivalence = #equivalent
// Date et heure de participation
* group[=].element[+].code = #FRLMParticipantCorps.dateEtHeureParticipation
* group[=].element[=].target.code = #FRCDAParticipant.time
* group[=].element[=].target.equivalence = #equivalent
// Identifiant du participant
* group[=].element[+].code = #FRLMParticipantCorps.participantRole.IdentifiantParticipant
* group[=].element[=].target.code = #FRCDAParticipant.participantRole.id
* group[=].element[=].target.equivalence = #equivalent
// Type de participant
* group[=].element[+].code = #FRLMParticipantCorps.participantRole.typeParticipant
* group[=].element[=].target.code = #FRCDAParticipant.code
* group[=].element[=].target.equivalence = #equivalent
// Adresses du participant
* group[=].element[+].code = #FRLMParticipantCorps.participantRole.adresses
* group[=].element[=].target.code = #FRCDAParticipant.participantRole.addr
* group[=].element[=].target.equivalence = #equivalent
// Coordonnees telecom du participant
* group[=].element[+].code = #FRLMParticipantCorps.participantRole.coordonneesTelecom
* group[=].element[=].target.code = #FRCDAParticipant.participantRole.telecom
* group[=].element[=].target.equivalence = #equivalent
// nom du participant
* group[=].element[+].code = #FRLMParticipantCorps.participantRole.identiteParticipant.nom
* group[=].element[=].target.code = #FRCDAParticipant.participantRole.playingEntity.name
* group[=].element[=].target.equivalence = #equivalent
// Profession / specialite
* group[=].element[+].code = #FRLMParticipantCorps.participantRole.identiteParticipant.ProfessionSpecialite
* group[=].element[=].target.code = #FRCDAParticipant.participantRole.playingEntity.code
* group[=].element[=].target.equivalence = #equivalent
// Description
* group[=].element[+].code = #FRLMParticipantCorps.participantRole.identiteParticipant.description
* group[=].element[=].target.code = #FRCDAParticipant.participantRole.playingEntity.desc
* group[=].element[=].target.equivalence = #equivalent
// Organisation
* group[=].element[+].code = #FRLMParticipantCorps.participantRole.Organisation
* group[=].element[=].target.code = #FRCDAParticipant.participantRole.scopingEntity
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #FRLMParticipantCorps.participantRole.Organisation.identifiant
* group[=].element[=].target.code = #FRCDAParticipant.participantRole.scopingEntity.id
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #FRLMParticipantCorps.participantRole.Organisation.code
* group[=].element[=].target.code = #FRCDAParticipant.participantRole.scopingEntity.code
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #FRLMParticipantCorps.participantRole.Organisation.description
* group[=].element[=].target.code = #FRCDAParticipant.participantRole.scopingEntity.desc
* group[=].element[=].target.equivalence = #equivalent
// Dispositif automatique
* group[=].element[+].code = #FRLMParticipantCorps.participantRole.dispositifAutomatique
* group[=].element[=].target.code = #FRCDAParticipant.participantRole.playingDevice
* group[=].element[=].target.equivalence = #equivalent
// categorie du dispositif automatique
* group[=].element[+].code = #FRLMParticipantCorps.participantRole.categorie
* group[=].element[=].target.code = #FRCDAParticipant.participantRole.playingDevice.code
* group[=].element[=].target.equivalence = #equivalent
// nom du modele du dispositif automatique
* group[=].element[+].code = #FRLMParticipantCorps.participantRole.nomModele
* group[=].element[=].target.code = #FRCDAParticipant.participantRole.playingDevice.manufacturerModelName   
* group[=].element[=].target.equivalence = #equivalent
// nom du logiciel du dispositif automatique
* group[=].element[+].code = #FRLMParticipantCorps.participantRole.nomLogiciel
* group[=].element[=].target.code = #FRCDAParticipant.participantRole.playingDevice.softwareName
* group[=].element[=].target.equivalence = #equivalent

// Groupe Mapping 2 : CDA -> FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-participant"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-actor-extension"
// Element racine
* group[=].element[+].code = #FRCDAParticipant
* group[=].element[=].target.code = #FRActorExtension
* group[=].element[=].target.equivalence = #equivalent
// Type de participation
* group[=].element[+].code = #FRCDAParticipant.code
* group[=].element[=].target.code = #FRActorExtension.extension[typeCode].value[x]
* group[=].element[=].target.equivalence = #equivalent
// Identifiant du participant
* group[=].element[+].code = #FRCDAParticipant.participantRole.id
* group[=].element[=].target.code = #FRActorExtension.extension[actor].value[x]:FRPractitionerRoleDocument.identifier
* group[=].element[=].target.equivalence = #equivalent
// Adresses du participant
* group[=].element[+].code = #FRCDAParticipant.participantRole.addr
* group[=].element[=].target.code = #FRActorExtension.extension[actor].value[x]:FRPractitionerRoleDocument.address
* group[=].element[=].target.equivalence = #equivalent
// Coordonnees telecom du participant
* group[=].element[+].code = #FRCDAParticipant.participantRole.telecom
* group[=].element[=].target.code = #FRActorExtension.extension[actor].value[x]:FRPractitionerRoleDocument.telecom
* group[=].element[=].target.equivalence = #equivalent
// nom du participant
* group[=].element[+].code = #FRCDAParticipant.participantRole.playingEntity.name
* group[=].element[=].target.code = #FRActorExtension.extension[actor].value[x]:FRPractitionerRoleDocument.name
* group[=].element[=].target.equivalence = #equivalent
// Profession / specialite
* group[=].element[+].code = #FRCDAParticipant.participantRole.playingEntity.code
* group[=].element[=].target.code = #FRActorExtension.extension[actor].value[x]:FRPractitionerRoleDocument.practitioner.qualification
* group[=].element[=].target.equivalence = #equivalent
// Description
* group[=].element[+].code = #FRCDAParticipant.participantRole.playingEntity.desc
* group[=].element[=].target.equivalence = #unmatched
// Organisation
* group[=].element[+].code = #FRCDAParticipant.participantRole.scopingEntity
* group[=].element[=].target.code = #FRActorExtension.extension[actor].value[x]:FROrganizationDocument
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #FRCDAParticipant.participantRole.scopingEntity.id
* group[=].element[=].target.code = #FRActorExtension.extension[actor].value[x]:FROrganizationDocument.identifier
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #FRCDAParticipant.participantRole.scopingEntity.code
* group[=].element[=].target.code = #FRActorExtension.extension[actor].value[x]:FROrganizationDocument.type
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #FRCDAParticipant.participantRole.scopingEntity.desc
* group[=].element[=].target.code = #FRActorExtension.extension[actor].value[x]:FROrganizationDocument.extension:description
* group[=].element[=].target.equivalence = #equivalent
// Dispositif automatique
* group[=].element[+].code = #FRCDAParticipant.participantRole.playingDevice
* group[=].element[=].target.code = #FRActorExtension.extension[actor].value[x]:Device
* group[=].element[=].target.equivalence = #equivalent
// categorie du dispositif automatique
* group[=].element[+].code = #FRCDAParticipant.participantRole.playingDevice.code
* group[=].element[=].target.code = #FRActorExtension.extension[actor].value[x]:Device.type
* group[=].element[=].target.equivalence = #equivalent
// nom du modele du dispositif automatique
* group[=].element[+].code = #FRCDAParticipant.participantRole.playingDevice.manufacturerModelName   
* group[=].element[=].target.code = #FRActorExtension.extension[actor].value[x]:Device.manufacturer
* group[=].element[=].target.equivalence = #equivalent
// nom du logiciel du dispositif automatique
* group[=].element[+].code = #FRCDAParticipant.participantRole.playingDevice.softwareName
* group[=].element[=].target.code = #FRActorExtension.extension[actor].value[x]:Device.deviceName.name
* group[=].element[=].target.equivalence = #equivalent