Instance: mappingOperateurSaisieCDAFHIR					
InstanceOf: ConceptMap					
Usage: #definition					
Title: "Mapping Métier/CDA/FHIR : \"Opérateur de saisie\""
Description: """Ce ConceptMap présente deux groupes de mapping :
 - Mapping 1 : entre le modèle métier \"operateurSaisie\" et l'élément CDA \"dataEnterer\"
 - Mapping 2 : entre l'élément CDA \"dataEnterer\" et l'extension FHIR \"DataEntererExtension\" """

* name = "Mapping Métier/CDA/FHIR : \"Opérateur de saisie\""
* status = #draft
* experimental = false

// Groupe Mapping 1 : modèle métier to CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-operateur-saisie"					
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-data-enterer"									
* group[=].element[+].code = #FRLMOperateurSaisie								
* group[=].element[=].target.code = #dataEnterer
* group[=].element[=].target.equivalence = #equivalent	
* group[=].element[+].code = #FRLMOperateurSaisie.dateSaisie								
* group[=].element[=].target.code = #dataEnterer.time
* group[=].element[=].target.equivalence = #equivalent								
* group[=].element[+].code = #FRLMOperateurSaisie.operateurSaisie								
* group[=].element[=].target.code = #dataEnterer.assignedEntity
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "L'élément operateurSaisie est de type PersonneStructure."

// Groupe Mapping 2 : CDA to FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-data-enterer"					
* group[=].target = "http://hl7.org/fhir/uv/fhir-clinical-document/StructureDefinition/data-enterer-extension"									
* group[=].element[+].code = #dataEnterer					
* group[=].element[=].target.code = #DataEntererExtension						
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #dataEnterer.time						
* group[=].element[=].target.code = #DataEntererExtension.extension:time						
* group[=].element[=].target.equivalence = #equivalent								
* group[=].element[+].code = #dataEnterer.assignedEntity						
* group[=].element[=].target.code = #DataEntererExtension.extension:party.ValueReference							
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "extension:party.ValueReference.resolve().ofType(PractitionerRole)"