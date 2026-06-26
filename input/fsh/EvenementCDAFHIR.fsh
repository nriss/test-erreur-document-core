Instance: mappingEvenementCDAFHIR					
InstanceOf: ConceptMap					
Usage: #definition					
Title: "Mapping Métier/CDA/FHIR : \"Evènement documenté\""
Description: """Ce ConceptMap présente deux groupes de mapping : 
 - Mapping 1 :entre le modèle métier \"evenement\" et l'élément CDA \"documentationOf\"
 - Mapping 2 : entre l'élément CDA \"documentationOf\" et l'élément FHIR \"Composition.event\" """

* name = "Mapping Métier/CDA/FHIR : \"Evènement documenté\""
* status = #draft
* experimental = false

// Groupe Mapping 1 : modèle métier to CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-evenement"					
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-documentation-of"									
* group[=].element[+].code = #FRLMEvenement								
* group[=].element[=].target.code = #documentationOf
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #FRLMEvenement.identifiantEvenement						
* group[=].element[=].target.code = #documentationOf.serviceEvent.id
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #FRLMEvenement.codeEvenement							
* group[=].element[=].target.code = #documentationOf.serviceEvent.code
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #FRLMEvenement.dateHeureEvenement							
* group[=].element[=].target.code = #documentationOf.serviceEvent.effectiveTime
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #FRLMEvenement.executantEvenement							
* group[=].element[=].target.code = #documentationOf.serviceEvent.performer@typeCode="PRF"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #FRLMEvenement.executantEvenement.roleFonctionnel							
* group[=].element[=].target.code = #documentationOf.serviceEvent.performer.functionCode
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #FRLMEvenement.executantEvenement.dateHeureParticipation								
* group[=].element[=].target.code = #documentationOf.serviceEvent.performer.time
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #FRLMEvenement.executantEvenement.executant							
* group[=].element[=].target.code = #documentationOf.serviceEvent.performer.assignedEntity
* group[=].element[=].target.equivalence = #equivalent

// Groupe Mapping 2 : CDA to FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-documentation-of"					
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-composition-document"									
* group[=].element[+].code = #documentationOf								
* group[=].element[=].target.code = #Composition.event
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #documentationOf.serviceEvent.id										
* group[=].element[=].target.equivalence = #unmatched					
* group[=].element[=].target.comment = "Cette donnée est fournie dans un autre élément : Composition.relatesTo"		
* group[=].element[+].code = #documentationOf.serviceEvent.code							
* group[=].element[=].target.code = #Composition.event.code
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #documentationOf.serviceEvent.effectiveTime						
* group[=].element[=].target.code = #Composition.event.period
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #documentationOf.serviceEvent.performer@typeCode="PRF"							
* group[=].element[=].target.code = #Composition.event.extension:perfomer.PractitionerRole
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Composition.event.extension:perfomer.ValueReference.resolve().ofType(FrPractitionerRoleDocument)"
* group[=].element[+].code = #documentationOf.serviceEvent.performer.functionCode							
* group[=].element[=].target.code = #Composition.event.extension:perfomer.PractitionerRole.code
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #documentationOf.serviceEvent.performer.time								
* group[=].element[=].target.equivalence = #unmatched					
* group[=].element[=].target.comment = "Mapped in Composition.event.period "	
* group[=].element[+].code = #documentationOf.serviceEvent.performer.assignedEntity							
* group[=].element[=].target.code = #Composition.event.extension:perfomer.PractitionerRole.Practitioner
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Composition.event.extension:perfomer.ValueReference.resolve().ofType(FrPractitionerRoleDocument).Practitioner.resolve()"