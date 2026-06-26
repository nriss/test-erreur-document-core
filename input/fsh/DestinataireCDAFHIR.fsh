Instance: mappingDestinatairePrevuCDAFHIR					
InstanceOf: ConceptMap					
Usage: #definition					
Title: "Mapping Métier/CDA/FHIR : \"Destinataire prévu\""
Description: """Ce ConceptMap présente deux groupes de mapping : 
 - Mapping 1 : entre le modèle métier \"destinataire\" et l'élément CDA \"informationRecipient\"
 - Mapping 2 : entre l'élément CDA \"informationRecipient\" et l'extension FHIR \"InformationRecipientExtension\" """

* name = "Mapping Métier/CDA/FHIR : \"Destinataire prévu\""
* status = #draft
* experimental = false

// Groupe Mapping 1 : modèle métier to CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-destinataire-prevu"					
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-information-recipient"									
* group[=].element[+].code = #FRLMDestinatairePrevu							
* group[=].element[=].target.code = #informationRecipient 
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #FRLMDestinatairePrevu.destinataire								
* group[=].element[=].target.code = #informationRecipient.intendedRecipient
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "L'élément destinataire est de type PersonneStructure."

// Groupe Mapping 2 : CDA to FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-information-recipient"					
* group[=].target = "http://hl7.org/fhir/uv/fhir-clinical-document/StructureDefinition/information-recipient-extension"									
* group[=].element[+].code = #informationRecipient				
* group[=].element[=].target.code = #extension:InformationRecipientExtension						
* group[=].element[=].target.equivalence = #equivalent									
* group[=].element[+].code = #informationRecipient.intendedRecipient						
* group[=].element[=].target.code = #extension:InformationRecipientExtension.extension:party.PractitionerRole							
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #informationRecipient.intendedRecipient.id						
* group[=].element[=].target.code = #extension:party.PractitionerRole.Practitioner.identifier						
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #informationRecipient.intendedRecipient.addr					
* group[=].element[=].target.code = #extension:party.PractitionerRole.Practitioner.address					
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #informationRecipient.intendedRecipient.telecom					
* group[=].element[=].target.code = #extension:party.PractitionerRole.Practitioner.telecom					
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #informationRecipient.intendedRecipient.informationRecipient.name					
* group[=].element[=].target.code = #extension:party.PractitionerRole.Practitioner.name					
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #informationRecipient.intendedRecipient.informationRecipient.name.family					
* group[=].element[=].target.code = #extension:party.PractitionerRole.Practitioner.name.family					
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #informationRecipient.intendedRecipient.informationRecipient.name.given				
* group[=].element[=].target.code = #extension:party.PractitionerRole.Practitioner.name.given					
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #informationRecipient.intendedRecipient.informationRecipient.name.prefix				
* group[=].element[=].target.code = #extension:party.PractitionerRole.Practitioner.name.prefix				
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #informationRecipient.intendedRecipient.informationRecipient.name.suffix			
* group[=].element[=].target.code = #extension:party.PractitionerRole.Practitioner.name.suffix				
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #informationRecipient.intendedRecipient.informationRecipient.receivedOrganization			
* group[=].element[=].target.code = #extension:party.PractitionerRole.Organization				
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #informationRecipient.intendedRecipient.informationRecipient.receivedOrganization.id			
* group[=].element[=].target.code = #extension:party.PractitionerRole.Organization.identifier				
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #informationRecipient.intendedRecipient.informationRecipient.receivedOrganization.name			
* group[=].element[=].target.code = #extension:party.PractitionerRole.Organization.name			
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #informationRecipient.intendedRecipient.informationRecipient.receivedOrganization.telecom			
* group[=].element[=].target.code = #extension:party.PractitionerRole.Organization.telecom			
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #informationRecipient.intendedRecipient.informationRecipient.receivedOrganization.addr			
* group[=].element[=].target.code = #extension:party.PractitionerRole.Organization.address		
* group[=].element[=].target.equivalence = #equivalent