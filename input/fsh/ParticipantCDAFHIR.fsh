Instance: mappingParticipantCDAFHIR					
InstanceOf: ConceptMap					
Usage: #definition					
Title: "Mapping Métier/CDA/FHIR : \"Participant\""
Description: """Ce ConceptMap présente deux groupes de mapping : 
 - Mapping 1 : entre le modèle métier \"participant\" et l'élément CDA \"participant\"
 - Mapping 2 : entre l'élément CDA \"participant\" et l'extension FHIR \"ParticipantExtension\" """

* name = "Mapping Métier/CDA/FHIR : \"Participant\""
* status = #draft
* experimental = false

// Groupe Mapping 1 : modèle métier to CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-participant"					
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-participant"									
* group[=].element[+].code = #FRLMParticipant							
* group[=].element[=].target.code = #participant
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #FRLMParticipant.typeParticipation								
* group[=].element[=].target.code = #participant@typeCode 
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #FRLMParticipant.roleFonctionnel								
* group[=].element[=].target.code = #participant.functionCode 
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #FRLMParticipant.dateDebutEtOuFinParticipation							
* group[=].element[=].target.code = #participant.time
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #FRLMParticipant.participant					
* group[=].element[=].target.code = #participant.associatedEntity
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "L'élément participant est de type PersonneStructure"

// Groupe Mapping 2 : CDA to FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-participant"					
* group[=].target = "http://hl7.org/fhir/uv/fhir-clinical-document/StructureDefinition/ParticipantExtension"									
* group[=].element[+].code = #participant				
* group[=].element[=].target.code = #extension:ParticipantExtension						
* group[=].element[=].target.equivalence = #equivalent	
* group[=].element[+].code = #participant@typeCode				
* group[=].element[=].target.code = #extension:ParticipantExtension.extention:type					
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #participant.functionCode				
* group[=].element[=].target.code = #extension:ParticipantExtension.extention:function.coding 					
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #participant.time				
* group[=].element[=].target.code = #extension:ParticipantExtension.extention:time						
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #participant.associatedEntity			
* group[=].element[=].target.code = #extension:ParticipantExtension.party						
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "extension:party.ValueReference.resolve().ofType(PractitionerRole)"
* group[=].element[+].code = #participant.associatedEntity@classCode
* group[=].element[=].target.code = #extension:ParticipantExtension.party.PractitionerRole.qualification.code	
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[+].code = #participant.associatedEntity.id		
* group[=].element[=].target.code = #extension:ParticipantExtension.party.PractitionerRole.Practitioner.identifier						
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "extension:party.ValueReference.resolve().ofType(PractitionerRole).practitioner.resolve()"
* group[=].element[+].code = #participant.associatedEntity.code	
* group[=].element[=].target.code = #extension:ParticipantExtension.party.PractitionerRole.Practitioner.qualification.code						
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #participant.associatedEntity.addr					
* group[=].element[=].target.code = #extension:ParticipantExtension.party.PractitionerRole.Practitioner.address					
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #participant.associatedEntity.telecom					
* group[=].element[=].target.code = #extension:ParticipantExtension.party.PractitionerRole.Practitioner.telecom					
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #participant.associatedEntity.name					
* group[=].element[=].target.code = #extension:ParticipantExtension.party.PractitionerRole.Practitioner.name					
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #participant.associatedEntity.name.family					
* group[=].element[=].target.code = #extension:ParticipantExtension.party.PractitionerRole.Practitioner.name.family					
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #participant.associatedEntity.name.given				
* group[=].element[=].target.code = #extension:ParticipantExtension.party.PractitionerRole.Practitioner.name.given					
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #participant.associatedEntity.name.prefix				
* group[=].element[=].target.code = #extension:ParticipantExtension.party.PractitionerRole.Practitioner.name.prefix				
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #participant.associatedEntity.name.suffix			
* group[=].element[=].target.code = #extension:ParticipantExtension.party.PractitionerRole.Practitioner.name.suffix				
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #participant.associatedEntity.scopingOrganization			
* group[=].element[=].target.code = #extension:ParticipantExtension.party.PractitionerRole.Organization				
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "extension:party.ValueReference.resolve().ofType(PractitionerRole).organization.resolve()"
* group[=].element[+].code = #participant.associatedEntity.scopingOrganization.id			
* group[=].element[=].target.code = #extension:ParticipantExtension.party.PractitionerRole.Organization.identifier				
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #participant.associatedEntity.scopingOrganization.name			
* group[=].element[=].target.code = #extension:ParticipantExtension.party.PractitionerRole.Organization.name			
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #participant.associatedEntity.scopingOrganization.telecom			
* group[=].element[=].target.code = #extension:ParticipantExtension.party.PractitionerRole.Organization.telecom			
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #participant.associatedEntity.scopingOrganization.addr			
* group[=].element[=].target.code = #extension:ParticipantExtension.party.PractitionerRole.Organization.address		
* group[=].element[=].target.equivalence = #equivalent