Instance: mappingDocumentDeReferenceCDAFHIR					
InstanceOf: ConceptMap					
Usage: #definition					
Title: "Mapping Métier/CDA/FHIR : \"DocumentDeReference\""
Description: """Ce ConceptMap présente deux groupes de mapping : 
 - Mapping 1 : entre le modèle métier \"documentDeReference\" et l'élément CDA \"relatedDocument\"
 - Mapping 2 : entre l'élément CDA \"relatedDocument\" et l'élément FHIR \"Composition.relatesTo\" """

* name = "Mapping Métier/CDA/FHIR : \"DocumentDeReference\""
* status = #draft
* experimental = false

// Groupe Mapping 1 : modèle métier to CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-document-reference"					
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-related-document"									
* group[=].element[+].code = #FRLMDocumentDeReference							
* group[=].element[=].target.code = #relatedDocument
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #FRLMDocumentDeReference.typeReference								
* group[=].element[=].target.code = #relatedDocument@typeCode
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #FRLMDocumentDeReference.identifiantUniqueDocument								
* group[=].element[=].target.code = #relatedDocument.parentDocument.id
* group[=].element[=].target.equivalence = #equivalent

// Groupe Mapping 2 : CDA to FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-related-document"					
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-composition-document"
* group[=].element[+].code = #relatedDocument						
* group[=].element[=].target.code = #Composition.relatesTo
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #relatedDocument@typeCode								
* group[=].element[=].target.code = #Composition.relatesTo.code
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #relatedDocument.parentDocument.id								
* group[=].element[=].target.code = #Composition.relatesTo.targetIdentifier
* group[=].element[=].target.equivalence = #equivalent