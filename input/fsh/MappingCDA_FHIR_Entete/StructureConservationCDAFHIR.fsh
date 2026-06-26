Instance: mappingStructureConservationCDAFHIR					
InstanceOf: ConceptMap					
Usage: #definition					
Title: "Mapping Métier/CDA/FHIR : \"Structure chargée de la conservation du document\""
Description: """Ce ConceptMap présente deux groupes de mapping : 
 - Mapping 1 : entre le modèle métier \"structureConservation\" et l'élément CDA \"custodian\"
 - Mapping 2 : entre l'élément CDA \"custodian\" et l'élément FHIR \"Composition.custodian\" """

* name = "Mapping Métier/CDA/FHIR : \"Structure chargée de la conservation du document\""
* status = #draft
* experimental = false

// Groupe Mapping 1 : modèle métier to CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-structure-conservation"					
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-custodian"									
* group[=].element[+].code = #FRLMStructureConservation								
* group[=].element[=].target.code = #custodian
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #FRLMStructureConservation.structure								
* group[=].element[=].target.code = #custodian.assignedCustodian
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #FRLMStructureConservation.structure.identifiantStructure								
* group[=].element[=].target.code = #custodian.assignedCustodian.representedCustodianOrganization.id
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #FRLMStructureConservation.structure.nomStructure								
* group[=].element[=].target.code = #custodian.assignedCustodian.representedCustodianOrganization.name
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #FRLMStructureConservation.structure.adresse								
* group[=].element[=].target.code = #custodian.assignedCustodian.representedCustodianOrganization.addr
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #FRLMStructureConservation.structure.coordonneesTelecom									
* group[=].element[=].target.code = #custodian.assignedCustodian.representedCustodianOrganization.telecom
* group[=].element[=].target.equivalence = #equivalent

// Groupe Mapping 2 : CDA to FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-custodian"					
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-composition-document"									
* group[=].element[+].code = #custodian							
* group[=].element[=].target.code = #Composition.custodian
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Composition.custodian.resolve().ofType(Organization)"
* group[=].element[+].code = #custodian.assignedCustodian								
* group[=].element[=].target.code = #Composition.custodian.organization
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #custodian.assignedCustodian.representedCustodianOrganization.id								
* group[=].element[=].target.code = #Composition.custodian.organization.identifier
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #custodian.assignedCustodian.representedCustodianOrganization.name								
* group[=].element[=].target.code = #Composition.custodian.organization.name
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #custodian.assignedCustodian.representedCustodianOrganization.addr								
* group[=].element[=].target.code = #Composition.custodian.organization.address
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #custodian.assignedCustodian.representedCustodianOrganization.telecom									
* group[=].element[=].target.code = #Composition.custodian.organization.telecom
* group[=].element[=].target.equivalence = #equivalent