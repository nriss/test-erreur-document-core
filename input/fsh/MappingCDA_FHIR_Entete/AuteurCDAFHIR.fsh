Instance: mappingAuteurCDAFHIR					
InstanceOf: ConceptMap					
Usage: #definition					
Title: "Mapping Métier/CDA/FHIR : \"Auteur\""
Description: """Ce ConceptMap présente deux groupes de mapping : 
 - Mapping 1 : entre le modèle métier \"Auteur\" et l'élément CDA \"author\"
 - Mapping 2 : entre l'élément CDA \"author\" et l'élément FHIR \"Composition.author\" """

* name = "Mapping Métier/CDA/FHIR : \"Auteur\""
* status = #draft
* experimental = false

// Groupe Mapping 1 : modèle métier to CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-auteur"					
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-author"									
* group[=].element[+].code = #FRLMAuteur								
* group[=].element[=].target.code = #author									
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #FRLMAuteur.roleFonctionnel								
* group[=].element[=].target.code = #author.functionCode									
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #FRLMAuteur.horodatageParticipation								
* group[=].element[=].target.code = #author.time								
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #FRLMAuteur.FRLMPersonneStructure								
* group[=].element[=].target.code = #author.assignedAuthor								
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "L'élément PersonneStructure est de type PersonneStructure."
* group[=].element[+].code = #FRLMAuteur.FRLMSystemeStructureAuteur								
* group[=].element[=].target.code = #author.assignedAuthor								
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "L'élément SystemeStructureAuteur est de type Systeme"

// Groupe Mapping 2 : CDA to FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-author"					
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-composition-document"									
* group[=].element[+].code = #author						
* group[=].element[=].target.code = #Composition.author								
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #author.time								
* group[=].element[=].target.code = #Composition.author.extension:time								
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #author.functionCode								
* group[=].element[=].target.code = #Composition.author.PractitionerRole.code									
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Auteur du document est un professionnel et author.ofType(PractitionerRole)"
// Auteur : Professionnel ou Patient
* group[=].element[+].code = #author.assignedAuthor
* group[=].element[=].target.code = #Composition.author.Practitioner
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Composition.author.resolve().ofType(Practitioner)"
* group[=].element[+].code = #author.assignedAuthor
* group[=].element[=].target.code = #Composition.author.Patient
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Composition.author.resolve().ofType(Patient)"
// Auteur : Systeme
* group[=].element[+].code = #author.assignedAuthor								
* group[=].element[=].target.code = #Composition.author.Device
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Composition.author.resolve().ofType(Device)"