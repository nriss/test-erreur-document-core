Instance: mappingValidateurCDAFHIR					
InstanceOf: ConceptMap					
Usage: #definition					
Title: "Mapping Métier/CDA/FHIR : \"Validateur\""
Description: """Ce ConceptMap présente deux groupes de mapping : 
 - Mapping 1 : entre le modèle métier \"validateur\" et l'élément CDA \"authenticator\"
 - Mapping 2 : entre l'élément CDA \"authenticator\" et l'élément FHIR \"Composition.attester\" """

* name = "Mapping Métier/CDA/FHIR : \"Validateur\""
* status = #draft
* experimental = false

// Groupe Mapping 1 : modèle métier to CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-validateur"					
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-authenticator"									
* group[=].element[+].code = #FRLMValidateur							
* group[=].element[=].target.code = #authenticator
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #FRLMValidateur.dateHeureAttestationValidite								
* group[=].element[=].target.code = #authenticator.time
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #FRLMValidateur.validateur								
* group[=].element[=].target.code = #authenticator.assignedEntity
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "L'élément validateur est de type : PersonneStructure"

// Groupe Mapping 2 : CDA to FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-authenticator"					
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-composition-document"									
* group[=].element[+].code = #authenticator				
* group[=].element[=].target.code = #Composition.attester						
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "attester.where(mode='professional')"		
* group[=].element[+].code = #authenticator.time				
* group[=].element[=].target.code = #Composition.attester.time						
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #authenticator.assignedEntity			
* group[=].element[=].target.code = #Composition.attester.party.PractitionerRole					
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "attester.party.resolve().ofType(PractitionerRole)"
* group[=].element[+].code = #authenticator.assignedEntity.id		
* group[=].element[=].target.code = #Composition.attester.party.PractitionerRole.Practitioner.identifier						
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "attester.party.resolve().ofType(PractitionerRole).practitioner.resolve()"
* group[=].element[+].code = #authenticator.assignedEntity.code	
* group[=].element[=].target.code = #Composition.attester.party.PractitionerRole.Practitioner.qualification.code						
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #authenticator.assignedEntity.addr					
* group[=].element[=].target.code = #Composition.attester.party.PractitionerRole.Practitioner.address					
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #authenticator.assignedEntity.telecom					
* group[=].element[=].target.code = #Composition.attester.party.PractitionerRole.Practitioner.telecom					
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #authenticator.assignedEntity.name					
* group[=].element[=].target.code = #Composition.attester.party.PractitionerRole.Practitioner.name					
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #authenticator.assignedEntity.name.family					
* group[=].element[=].target.code = #Composition.attester.party.PractitionerRole.Practitioner.name.family					
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #authenticator.assignedEntity.name.given				
* group[=].element[=].target.code = #Composition.attester.party.PractitionerRole.Practitioner.name.given					
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #authenticator.assignedEntity.name.prefix				
* group[=].element[=].target.code = #Composition.attester.party.PractitionerRole.Practitioner.name.prefix				
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #authenticator.assignedEntity.name.suffix			
* group[=].element[=].target.code = #Composition.attester.party.PractitionerRole.Practitioner.name.suffix				
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #authenticator.assignedEntity.representedOrganization			
* group[=].element[=].target.code = #Composition.attester.party.PractitionerRole.Organization				
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "attester.party.resolve().ofType(PractitionerRole).organization.resolve()"
* group[=].element[+].code = #authenticator.assignedEntity.representedOrganization.id			
* group[=].element[=].target.code = #Composition.attester.party.PractitionerRole.Organization.identifier				
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #authenticator.assignedEntity.representedOrganization.name			
* group[=].element[=].target.code = #Composition.attester.party.PractitionerRole.Organization.name			
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #authenticator.assignedEntity.representedOrganization.telecom			
* group[=].element[=].target.code = #Composition.attester.party.PractitionerRole.Organization.telecom			
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #authenticator.assignedEntity.representedOrganization.addr			
* group[=].element[=].target.code = #Composition.attester.party.PractitionerRole.Organization.address		
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #authenticator.assignedEntity.representedOrganization.standardIndustryClassCode			
* group[=].element[=].target.code = #Composition.attester.party.PractitionerRole.Organization.type		
* group[=].element[=].target.equivalence = #equivalent