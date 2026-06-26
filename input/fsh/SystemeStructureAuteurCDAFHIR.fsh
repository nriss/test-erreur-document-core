Instance: mappingSystemeFHIR					
InstanceOf: ConceptMap					
Usage: #definition					
Title: "Mapping Métier/CDA/FHIR : \"Système / Structure Auteur\""
Description: """Ce ConceptMap de l'élément SystemeStructureAuteur présente deux groupes de mapping : 
 - Mapping 1 : entre le modèle métier \"SystemeStructureAuteur\" et l'élément CDA \"assignedAuthor\"
 - Mapping 2 : entre l'élément CDA \"assignedAuthor\" et le profil FHIR \"FrDeviceDocument\" """

* name = "Mapping Métier/CDA/FHIR : \"Système / Structure Auteur\""
* status = #draft
* experimental = false

// Groupe Mapping 1 : modèle métier to CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-systeme"					
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-assigned-author"									
* group[=].element[+].code = #FRLMSysteme.identificationAuteur							
* group[=].element[=].target.code = #assignedAuthor
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #FRLMSysteme.identificationAuteur.identifiantAuteur							
* group[=].element[=].target.code = #assignedAuthor.id
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #FRLMSysteme.identificationAuteur.professionSavoirFaireRole							
* group[=].element[=].target.code = #assignedAuthor.code
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #FRLMSysteme.identificationAuteur.systeme							
* group[=].element[=].target.code = #assignedAuthor.assignedAuthoringDevice
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #FRLMSysteme.identificationAuteur.systeme.nomModeleSysteme							
* group[=].element[=].target.code = #assignedAuthor.assignedAuthoringDevice.manufacturerModelName
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #FRLMSysteme.identificationAuteur.systeme.nomSysteme							
* group[=].element[=].target.code = #assignedAuthor.assignedAuthoringDevice.softwareName
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #FRLMSysteme.identificationAuteur.structure						
* group[=].element[=].target.code = #assignedAuthor.representedOrganization
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #FRLMSysteme.identificationAuteur.structure.identifiantStructure							
* group[=].element[=].target.code = #assignedAuthor.representedOrganization.id
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #FRLMSysteme.identificationAuteur.structure.nomStructure						
* group[=].element[=].target.code = #assignedAuthor.representedOrganization.name
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #FRLMSysteme.identificationAuteur.structure.adresse						
* group[=].element[=].target.code = #assignedAuthor.representedOrganization.addr
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #FRLMSysteme.identificationAuteur.structure.coordonneesTelecom						
* group[=].element[=].target.code = #assignedAuthor.representedOrganization.telecom
* group[=].element[=].target.equivalence = #equivalent

// Groupe Mapping 2 : CDA to FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-assigned-author"					
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-device-document"									
* group[=].element[+].code = #assignedAuthor							
* group[=].element[=].target.code = #Device
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #assignedAuthor.id							
* group[=].element[=].target.code = #Device.identifier
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #assignedAuthor.code							
* group[=].element[=].target.code = #Device.type
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #assignedAuthor.assignedAuthoringDevice.manufacturerModelName						
* group[=].element[=].target.code = #Device.deviceName.name
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #assignedAuthor.assignedAuthoringDevice.softwareName							
* group[=].element[=].target.code = #Device.deviceName.type
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #assignedAuthor.representedOrganization						
* group[=].element[=].target.code = #Device.owner.organization
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Device.owner.organization.resolve().ofType(Organization)"
* group[=].element[+].code = #assignedAuthor.representedOrganization.id							
* group[=].element[=].target.code = #Device.owner.organization.identifier
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #assignedAuthor.representedOrganization.name						
* group[=].element[=].target.code = #Device.owner.organization.name
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #assignedAuthor.representedOrganization.addr						
* group[=].element[=].target.code = #Device.owner.organization.address
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #assignedAuthor.representedOrganization.telecomm						
* group[=].element[=].target.code = #Device.owner.organization.telecom
* group[=].element[=].target.equivalence = #equivalent