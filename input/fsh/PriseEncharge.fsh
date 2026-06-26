Instance: mappingPriseEnchargeCDAFHIR					
InstanceOf: ConceptMap					
Usage: #definition						
Title: "Mapping Métier/CDA/FHIR : \"Prise en charge\""
Description: """Ce ConceptMap présente deux groupes de mapping : 
 - Mapping 1 : entre le modèle métier \"prise en charge\" et l'élément CDA \"componentOf\"
 - Mapping 2 : entre l'élément CDA \"componentOf\" et l'élément FHIR \"Composition.encounter(Encounter)\" """

* name = "Mapping Métier/CDA/FHIR : \"Prise en charge\""
* status = #draft
* experimental = false

// Groupe Mapping 1 : modèle métier to CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-prise-en-charge"					
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-component-of"									
* group[=].element[+].code = #FRLMPriseEncharge								
* group[=].element[=].target.code = #componentOf
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #FRLMPriseEncharge.identifiantPriseEnCharge							
* group[=].element[=].target.code = #componentOf.encompassingEncounter.id
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #FRLMPriseEncharge.typePriseEnCharge							
* group[=].element[=].target.code = #componentOf.encompassingEncounter.code
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #FRLMPriseEncharge.dateDebutFinPriseEnCharge							
* group[=].element[=].target.code = #componentOf.encompassingEncounter.effectiveTime
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #FRLMPriseEncharge.typeSortie							
* group[=].element[=].target.code = #componentOf.encompassingEncounter.dischargeDispositionCode
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #FRLMPriseEncharge.responsablePriseEnCharge							
* group[=].element[=].target.code = #componentOf.encompassingEncounter.responsibleParty.assignedEntity
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "L'élément responsablePriseEnCharge est de type PersonneStructure."
* group[=].element[+].code = #FRLMPriseEncharge.personneImpliqueePriseEnCharge								
* group[=].element[=].target.code = #componentOf.encompassingEncounter.encounterParticipant
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #FRLMPriseEncharge.personneImpliqueePriseEnCharge.typeParticipation								
* group[=].element[=].target.code = #componentOf.encompassingEncounter.encounterParticipant@typeCode
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #FRLMPriseEncharge.personneImpliqueePriseEnCharge.dateDebutFinParticipation							
* group[=].element[=].target.code = #componentOf.encompassingEncounter.encounterParticipant.time
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #FRLMPriseEncharge.personneImpliqueePriseEnCharge.professionnelImplique							
* group[=].element[=].target.code = #componentOf.encompassingEncounter.encounterParticipant.assignedEntity
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "L'élément personneImpliqueePriseEnCharge est de type PersonneStructure. "
* group[=].element[+].code = #FRLMPriseEncharge.lieuPriseEnCharge							
* group[=].element[=].target.code = #componentOf.encompassingEncounter.location
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #FRLMPriseEncharge.lieuPriseEnCharge.structure							
* group[=].element[=].target.code = #componentOf.encompassingEncounter.location.healthcareFacility
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #FRLMPriseEncharge.lieuPriseEnCharge.structure.secteurActivite				
* group[=].element[=].target.code = #componentOf.encompassingEncounter.location.healthcareFacility.code
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #FRLMPriseEncharge.lieuPriseEnCharge.structure.secteurActivite.categorieEtablissement			
* group[=].element[=].target.code = #componentOf.encompassingEncounter.location.healthcareFacility.code.translation
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #FRLMPriseEncharge.lieuPriseEnCharge.structure.nomStructure							
* group[=].element[=].target.code = #componentOf.encompassingEncounter.location.healthcareFacility.location.name
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #FRLMPriseEncharge.lieuPriseEnCharge.structure.adresse						
* group[=].element[=].target.code = #componentOf.encompassingEncounter.location.healthcareFacility.location.addr
* group[=].element[=].target.equivalence = #equivalent

// Groupe Mapping 2 : CDA to FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-component-of"					
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-encounter-document"
* group[=].element[+].code = #componentOf							
* group[=].element[=].target.code = #Composition.encounter.Encounter
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Composition.encounter.resolve().ofType(Encounter)"	
* group[=].element[+].code = #componentOf.encompassingEncounter.id						
* group[=].element[=].target.code = #Encounter.identifier
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #componentOf.encompassingEncounter.code							
* group[=].element[=].target.code = #Encounter.type
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #componentOf.encompassingEncounter.effectiveTime							
* group[=].element[=].target.code = #Encounter.period
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #componentOf.encompassingEncounter.dischargeDispositionCode							
* group[=].element[=].target.code = #Encounter.hospitalization.dischargeDisposition
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #componentOf.encompassingEncounter.responsibleParty.assignedEntity							
* group[=].element[=].target.code = #Encounter.participant.type="DIS".individual 
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Encounter.participant.individual.resolve().ofType(PractitionerRole)"	
* group[=].element[+].code = #componentOf.encompassingEncounter.encounterParticipant								
* group[=].element[=].target.code = #Encounter.participant
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #componentOf.encompassingEncounter.encounterParticipant@typeCode								
* group[=].element[=].target.code = #Encounter.participant.type
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #componentOf.encompassingEncounter.encounterParticipant.time							
* group[=].element[=].target.code = #Encounter.participant.period
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #componentOf.encompassingEncounter.encounterParticipant.assignedEntity						
* group[=].element[=].target.code = #Encounter.participant.individual
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Encounter.participant.individual.resolve().ofType(PractitionerRole)"
* group[=].element[+].code = #componentOf.encompassingEncounter.location							
* group[=].element[=].target.code = #Encounter.location
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Encounter.location.resolve().ofType(Location)"
* group[=].element[+].code = #componentOf.encompassingEncounter.location.healthcareFacility							
* group[=].element[=].target.code = #Encounter.location.Location
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #componentOf.encompassingEncounter.location.healthcareFacility.code				
* group[=].element[=].target.code = #Encounter.location.Location.type
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.code = #componentOf.encompassingEncounter.location.healthcareFacility.code.translation
* group[=].element[=].target.code = #Encounter.location.Location.type
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #componentOf.encompassingEncounter.location.healthcareFacility.location.name							
* group[=].element[=].target.code = #Encounter.location.Location.name
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #componentOf.encompassingEncounter.location.healthcareFacility.location.addr						
* group[=].element[=].target.code = #Encounter.location.Location.address
* group[=].element[=].target.equivalence = #equivalent