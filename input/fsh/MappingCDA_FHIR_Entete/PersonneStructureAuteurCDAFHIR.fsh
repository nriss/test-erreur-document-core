Instance: mappingPersonneStructureAuteurFHIR					
InstanceOf: ConceptMap					
Usage: #definition					
Title: "Mapping Métier/CDA/FHIR : \"Personne / Structure (Auteur)\""
Description: """Ce ConceptMap de l'élément PersonneStructureAuteur présente deux groupes de mapping : 
 - Mapping 1 : entre le modèle métier \"PersonneStructureAuteur\" et l'élément CDA \"assignedAuthor\"
 - Mapping 2 : entre l'élément CDA \"assignedAuthor\" et le profil FHIR \"FrPractitionerRoleDocument\" """

* name = "Mapping Métier/CDA/FHIR : \"Personne / Structure (Auteur)\""
* status = #draft
* experimental = false

// Groupe Mapping 1 : modèle métier to CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-personne-structure-auteur"					
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-assigned-author"									
* group[=].element[+].code = #FRLMPersonneStructureAuteur							
* group[=].element[=].target.code = #assignedAuthor
* group[=].element[=].target.equivalence = #equivalent
// personne
* group[=].element[+].code = #FRLMPersonneStructureAuteur.personne.identifiantPersonne							
* group[=].element[=].target.code = #assignedAuthor.id
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #FRLMPersonneStructureAuteur.personne.professionRole							
* group[=].element[=].target.code = #assignedAuthor.code
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #FRLMPersonneStructureAuteur.personne.adresse						
* group[=].element[=].target.code = #assignedAuthor.addr
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #FRLMPersonneStructureAuteur.personne.coordonneesTelecom						
* group[=].element[=].target.code = #assignedAuthor.telecom
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #FRLMPersonneStructureAuteur.personne.IdentitePersonne					
* group[=].element[=].target.code = #assignedAuthor.assignedPerson
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #FRLMPersonneStructureAuteur.personne.IdentitePersonne.nomPersonne					
* group[=].element[=].target.code = #assignedAuthor.assignedPerson.name.family
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #FRLMPersonneStructureAuteur.personne.IdentitePersonne.prenomPersonne						
* group[=].element[=].target.code = #assignedAuthor.assignedPerson.name.given
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #FRLMPersonneStructureAuteur.personne.IdentitePersonne.civilite						
* group[=].element[=].target.code = #assignedAuthor.assignedPerson.name.prefix
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #FRLMPersonneStructureAuteur.personne.IdentitePersonne.titre						
* group[=].element[=].target.code = #assignedAuthor.assignedPerson.name.suffix
* group[=].element[=].target.equivalence = #equivalent
//Structure
* group[=].element[+].code = #FRLMPersonneStructureAuteur.structure					
* group[=].element[=].target.code = #assignedAuthor.representedOrganization
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #FRLMPersonneStructureAuteur.structure.identifiantStructure					
* group[=].element[=].target.code = #assignedAuthor.representedOrganization.id
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #FRLMPersonneStructureAuteur.structure.nomStructure				
* group[=].element[=].target.code = #assignedAuthor.representedOrganization.name
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #FRLMPersonneStructureAuteur.structure.adresse				
* group[=].element[=].target.code = #assignedAuthor.representedOrganization.addr
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #FRLMPersonneStructureAuteur.structure.coordonneesTelecom					
* group[=].element[=].target.code = #assignedAuthor.representedOrganization.telecom
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #FRLMPersonneStructureAuteur.structure.secteurActivite					
* group[=].element[=].target.code = #assignedAuthor.representedOrganization.standardIndustryClassCode
* group[=].element[=].target.equivalence = #equivalent

* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-assigned-author"					
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-practitionerRole-document"									
* group[=].element[+].code = #assignedAuthor						
* group[=].element[=].target.code = #PractitionerRole.Practitioner
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "PractitionerRole.practitioner.resolve().ofType(Practitioner)"
* group[=].element[+].code = #assignedAuthor.id							
* group[=].element[=].target.code = #PractitionerRole.Practitioner.identifier
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #assignedAuthor.code						
* group[=].element[=].target.code = #PractitionerRole.Practitioner.qualification.code
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #assignedAuthor.addr						
* group[=].element[=].target.code = #PractitionerRole.Practitioner.address
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #assignedAuthor.telecom						
* group[=].element[=].target.code = #PractitionerRole.Practitioner.telecom
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #assignedAuthor.assignedPerson.name				
* group[=].element[=].target.code = #PractitionerRole.Practitioner.name
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #assignedAuthor.assignedPerson.name.family					
* group[=].element[=].target.code = #PractitionerRole.Practitioner.name.family
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #assignedAuthor.assignedPerson.name.given						
* group[=].element[=].target.code = #PractitionerRole.Practitioner.name.given
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #assignedAuthor.assignedPerson.name.prefix					
* group[=].element[=].target.code = #PractitionerRole.Practitioner.name.prefix
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #assignedAuthor.assignedPerson.name.suffix					
* group[=].element[=].target.code = #PractitionerRole.Practitioner.name.suffix
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #assignedAuthor.representedOrganization					
* group[=].element[=].target.code = #PractitionerRole.Organization
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "PractitionerRole.organization.resolve().ofType(Organization)"
* group[=].element[+].code = #assignedAuthor.representedOrganization.id					
* group[=].element[=].target.code = #PractitionerRole.Organization.identifier
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #assignedAuthor.representedOrganization.name				
* group[=].element[=].target.code = #PractitionerRole.Organization.name
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #assignedAuthor.representedOrganization.addr				
* group[=].element[=].target.code = #PractitionerRole.Organization.address
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #assignedAuthor.representedOrganization.telecom					
* group[=].element[=].target.code = #PractitionerRole.Organization.telecom
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #assignedAuthor.representedOrganization.standardIndustryClassCode					
* group[=].element[=].target.code = #PractitionerRole.Organization.type
* group[=].element[=].target.equivalence = #equivalent