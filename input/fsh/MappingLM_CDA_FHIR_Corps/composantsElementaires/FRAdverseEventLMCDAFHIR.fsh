Instance: FRAdverseEventLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMEvenementIndesirable → FRCDAEvenementIndesirable → FRAdverseEventDocument"
Description: "Mapping des éléments du modèle métier FRLMEvenementIndesirable vers le profil CDA FRCDAEvenementIndesirable, puis vers le profil FHIR FRAdverseEvent."    

* title = "Mapping Métier/CDA/FHIR : \"Effet Indésirable\""
* status = #draft

// Groupe Mapping 1 : modèle métier → CDA

* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-effet-indesirable"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-effet-indesirable"

// Élément racine
* group[=].element[+].code = #FRLMEffetIndesirable
* group[=].element[=].target.code = #FRCDAEffetIndesirable
* group[=].element[=].target.equivalence = #equivalent

// Identifiant
* group[=].element[+].code = #FRLMEffetIndesirable.identifiant
* group[=].element[=].target.code = #FRCDAEffetIndesirable.id
* group[=].element[=].target.equivalence = #equivalent

// Code
* group[=].element[+].code = #FRLMEffetIndesirable.typeEffetIndesirable
* group[=].element[=].target.code = #FRCDAEffetIndesirable.code
* group[=].element[=].target.equivalence = #equivalent  

// Description narrative
* group[=].element[+].code = #FRLMEffetIndesirable.description
* group[=].element[=].target.code = #FRCDAEffetIndesirable.text
* group[=].element[=].target.equivalence = #equivalent

// Date de début et de fin de l'effet indésirable
* group[=].element[+].code = #FRLMEffetIndesirable.dateDebut
* group[=].element[=].target.code = #FRCDAEffetIndesirable.effectiveTime.low
* group[=].element[=].target.equivalence = #equivalent 

// Date de fin de l'effet indésirable
* group[=].element[+].code = #FRLMEffetIndesirable.dateFin
* group[=].element[=].target.code = #FRCDAEffetIndesirable.effectiveTime.high
* group[=].element[=].target.equivalence = #equivalent

// Valeur de l'observation
* group[=].element[+].code = #FRLMEffetIndesirable.valeur
* group[=].element[=].target.code = #FRCDAEffetIndesirable.value
* group[=].element[=].target.equivalence = #equivalent

// Traitement
* group[=].element[+].code = #FRLMEffetIndesirable.traitement
* group[=].element[=].target.code = #FRCDAEffetIndesirable.entryRelationship:frTraitement
* group[=].element[=].target.equivalence = #equivalent

// Réaction observée
* group[=].element[+].code = #FRLMEffetIndesirable.probleme
* group[=].element[=].target.code = #FRCDAEffetIndesirable.entryRelationship:frProbleme
* group[=].element[=].target.equivalence = #equivalent

// Imputabilité
* group[=].element[+].code = #FRLMEffetIndesirable.imputabiliteEffetIndesirable
* group[=].element[=].target.code = #FRCDAEffetIndesirable.entryRelationship:frImputabiliteEffetIndesirable
* group[=].element[=].target.equivalence = #equivalent  

// Gravité
* group[=].element[+].code = #FRLMEffetIndesirable.graviteEffetIndesirable
* group[=].element[=].target.code = #FRCDAEffetIndesirable.entryRelationship:frGraviteEffetIndesirable
* group[=].element[=].target.equivalence = #equivalent  

// Évolution
* group[=].element[+].code = #FRLMEffetIndesirable.evolutionEffetIndesirable
* group[=].element[=].target.code = #FRCDAEffetIndesirable.entryRelationship:frEvolutionEffetIndesirable
* group[=].element[=].target.equivalence = #equivalent


// Groupe Mapping 2 : CDA → FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-effet-indesirable"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-adverse-event-document" 

// Élément racine
* group[=].element[+].code = #FRCDAEffetIndesirable
* group[=].element[=].target.code = #FRAdverseEventDocument
* group[=].element[=].target.equivalence = #equivalent  

// Identifiant
* group[=].element[+].code = #FRCDAEffetIndesirable.id
* group[=].element[=].target.code = #FRAdverseEventDocument.identifier
* group[=].element[=].target.equivalence = #equivalent  

// Code
* group[=].element[+].code = #FRCDAEffetIndesirable.code
* group[=].element[=].target.code = #FRAdverseEventDocument.category    
* group[=].element[=].target.equivalence = #equivalent

// Description narrative
* group[=].element[+].code = #FRCDAEffetIndesirable.text
* group[=].element[=].target.code = #FRAdverseEventDocument.category.text
* group[=].element[=].target.equivalence = #equivalent

// Date de début de l'effet indésirable
* group[=].element[+].code = #FRCDAEffetIndesirable.effectiveTime.low
* group[=].element[=].target.code = #FRAdverseEventDocument.date
* group[=].element[=].target.equivalence = #equivalent

// Date de fin de l'effet indésirable
* group[=].element[+].code = #FRCDAEffetIndesirable.effectiveTime.high
* group[=].element[=].target.code = #FRAdverseEventDocument.detected
* group[=].element[=].target.equivalence = #equivalent

// Valeur de l'observation (non renseigné et fixé à value xsi:type='CD')
* group[=].element[+].code = #FRCDAEffetIndesirable.value
* group[=].element[=].target.equivalence = #unmatched

// Traitement
* group[=].element[+].code = #FRCDAEffetIndesirable.entryRelationship:frTraitement
* group[=].element[=].target.code = #FRAdverseEventDocument.suspectEntity.instance
* group[=].element[=].target.equivalence = #equivalent

// Réaction observée
* group[=].element[+].code = #FRCDAEffetIndesirable.entryRelationship:frProbleme
* group[=].element[=].target.code = #FRAdverseEventDocument.resultingCondition
* group[=].element[=].target.equivalence = #equivalent

// Imputabilité
* group[=].element[+].code = #FRCDAEffetIndesirable.entryRelationship:frImputabiliteEffetIndesirable
* group[=].element[=].target.code = #FRAdverseEventDocument.suspectEntity.causality
* group[=].element[=].target.equivalence = #equivalent

// Gravité
* group[=].element[+].code = #FRCDAEffetIndesirable.entryRelationship:frGraviteEffetIndesirable
* group[=].element[=].target.code = #FRAdverseEventDocument.seriousness
* group[=].element[=].target.equivalence = #equivalent  

// Évolution
* group[=].element[+].code = #FRCDAEffetIndesirable.entryRelationship:frEvolutionEffetIndesirable
* group[=].element[=].target.code = #FRAdverseEventDocument.outcome
* group[=].element[=].target.equivalence = #equivalent