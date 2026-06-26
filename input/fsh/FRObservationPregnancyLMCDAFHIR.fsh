Instance: FRObservationPregnancyLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMObservationGrossesse → FRCDAObservationSurLaGrossesse → FRObservationPregnancyDocument"
Description: "Mapping des éléments du modèle métier FRLMObservationGrossesse vers le profil CDA FRCDAObservationSurLaGrossesse, puis vers le profil FHIR FRObservationPregnancyDocument."
* title = "Mapping Métier/CDA/FHIR : \"Observation sur la grossesse\""  
* status = #draft

// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-observation-grossesse"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-observation-sur-la-grossesse"
// Élément racine   
* group[=].element[+].code = #FRLMObservationGrossesse
* group[=].element[=].target.code = #FRCDAObservationSurLaGrossesse
* group[=].element[=].target.equivalence = #equivalent      
// identifiant
* group[=].element[+].code = #FRLMObservationGrossesse.identifiant
* group[=].element[=].target.code = #FRCDAObservationSurLaGrossesse.id
* group[=].element[=].target.equivalence = #equivalent
// code
* group[=].element[+].code = #FRLMObservationGrossesse.code
* group[=].element[=].target.code = #FRCDAObservationSurLaGrossesse.code
* group[=].element[=].target.equivalence = #equivalent
// description
* group[=].element[+].code = #FRLMObservationGrossesse.description
* group[=].element[=].target.code = #FRCDAObservationSurLaGrossesse.text
* group[=].element[=].target.equivalence = #equivalent
// statut
* group[=].element[+].code = #FRLMObservationGrossesse.statut
* group[=].element[=].target.code = #FRCDAObservationSurLaGrossesse.statusCode
* group[=].element[=].target.equivalence = #equivalent
// date
* group[=].element[+].code = #FRLMObservationGrossesse.date
* group[=].element[=].target.code = #FRCDAObservationSurLaGrossesse.effectiveTime
* group[=].element[=].target.equivalence = #equivalent
// resultat
* group[=].element[+].code = #FRLMObservationGrossesse.resultat
* group[=].element[=].target.code = #FRCDAObservationSurLaGrossesse.value
* group[=].element[=].target.equivalence = #equivalent

// Groupe Mapping 2 : CDA → FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-observation-sur-la-grossesse"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-observation-pregnancy-document"
// Identifiant
* group[=].element[+].code = #FRCDAObservationSurLaGrossesse.id
* group[=].element[=].target.code = #FRObservationPregnancyDocument.identifier
* group[=].element[=].target.equivalence = #equivalent
// Code
* group[=].element[+].code = #FRCDAObservationSurLaGrossesse.code
* group[=].element[=].target.code = #FRObservationPregnancyDocument.code
* group[=].element[=].target.equivalence = #equivalent
// Texte narratif
* group[=].element[+].code = #FRCDAObservationSurLaGrossesse.text
* group[=].element[=].target.code = #FRObservationPregnancyDocument.code.text
* group[=].element[=].target.equivalence = #equivalent
// Statut
* group[=].element[+].code = #FRCDAObservationSurLaGrossesse.statusCode
* group[=].element[=].target.code = #FRObservationPregnancyDocument.status
* group[=].element[=].target.equivalence = #equivalent
// effectiveTime
* group[=].element[+].code = #FRCDAObservationSurLaGrossesse.effectiveTime
* group[=].element[=].target.code = #FRObservationPregnancyDocument.effective[x]
* group[=].element[=].target.equivalence = #equivalent
// value
* group[=].element[+].code = #FRCDAObservationSurLaGrossesse.value
* group[=].element[=].target.code = #FRObservationPregnancyDocument.value
* group[=].element[=].target.equivalence = #equivalent