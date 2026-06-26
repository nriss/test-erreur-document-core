Instance: FRServiceRequestLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMDemandeExamenOuSuivi → FRCDADemandeDExamenOuDeSuivi → FRServiceRequestDocument"
Description: "Mapping des éléments du modèle métier FRLMDemandeExamenOuSuivi vers le profil CDA FRCDADemandeDExamenOuDeSuivi, puis vers le profil FHIR FRServiceRequestDocument."
* title = "Mapping Métier/CDA/FHIR : \"Demande d'examen ou de suivi\""
* status = #draft

// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-demande-examen-ou-suivi"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-demande-d-examen-ou-de-suivi"
// Élément racine   
* group[=].element[+].code = #FRLMDemandeExamenOuSuivi
* group[=].element[=].target.code = #FRCDADemandeDExamenOuDeSuivi
* group[=].element[=].target.equivalence = #equivalent
// Identifiant de l'entrée
* group[=].element[+].code = #FRLMDemandeExamenOuSuivi.identifiant
* group[=].element[=].target.code = #FRCDADemandeDExamenOuDeSuivi.id
* group[=].element[=].target.equivalence = #equivalent  
// Type de la demande
* group[=].element[+].code = #FRLMDemandeExamenOuSuivi.typeDemande
* group[=].element[=].target.code = #FRCDADemandeDExamenOuDeSuivi.code
* group[=].element[=].target.equivalence = #equivalent
// Description narrative de l'entrée
* group[=].element[+].code = #FRLMDemandeExamenOuSuivi.description
* group[=].element[=].target.code = #FRCDADemandeDExamenOuDeSuivi.text
* group[=].element[=].target.equivalence = #equivalent
// Statut de la demande
* group[=].element[+].code = #FRLMDemandeExamenOuSuivi.statutDemande
* group[=].element[=].target.code = #FRCDADemandeDExamenOuDeSuivi.statusCode
* group[=].element[=].target.equivalence = #equivalent  
// Date prévisionnelle de l'examen, du suivi, de l'objectif
* group[=].element[+].code = #FRLMDemandeExamenOuSuivi.date
* group[=].element[=].target.code = #FRCDADemandeDExamenOuDeSuivi.effectiveTime
* group[=].element[=].target.equivalence = #equivalent
// Résultat de la demande
* group[=].element[+].code = #FRLMDemandeExamenOuSuivi.resultat
* group[=].element[=].target.code = #FRCDADemandeDExamenOuDeSuivi.value
* group[=].element[=].target.equivalence = #equivalent
// Interprétation
* group[=].element[+].code = #FRLMDemandeExamenOuSuivi.interpretation
* group[=].element[=].target.code = #FRCDADemandeDExamenOuDeSuivi.interpretationCode
* group[=].element[=].target.equivalence = #equivalent
// Méthode
* group[=].element[+].code = #FRLMDemandeExamenOuSuivi.methode
* group[=].element[=].target.code = #FRCDADemandeDExamenOuDeSuivi.methodCode
* group[=].element[=].target.equivalence = #equivalent
// Cible
* group[=].element[+].code = #FRLMDemandeExamenOuSuivi.cible
* group[=].element[=].target.code = #FRCDADemandeDExamenOuDeSuivi.targetSiteCode
* group[=].element[=].target.equivalence = #equivalent
// Auteur de la demande
* group[=].element[+].code = #FRLMDemandeExamenOuSuivi.auteur
* group[=].element[=].target.code = #FRCDADemandeDExamenOuDeSuivi.author
* group[=].element[=].target.equivalence = #equivalent

// Groupe Mapping 2 : CDA → FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-demande-d-examen-ou-de-suivi"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-service-request-document"
// Élément racine
* group[=].element[+].code = #FRCDADemandeDExamenOuDeSuivi
* group[=].element[=].target.code = #FRServiceRequestDocument
* group[=].element[=].target.equivalence = #equivalent
// intent de la demande (moodCode en CDA)
* group[=].element[+].code = #FRCDADemandeDExamenOuDeSuivi.moodCode
* group[=].element[=].target.code = #FRServiceRequestDocument.intent    
* group[=].element[=].target.equivalence = #equivalent
// Identifiant de l'entrée
* group[=].element[+].code = #FRCDADemandeDExamenOuDeSuivi.id
* group[=].element[=].target.code = #FRServiceRequestDocument.identifier
* group[=].element[=].target.equivalence = #equivalent
// Type de la demande
* group[=].element[+].code = #FRCDADemandeDExamenOuDeSuivi.code
* group[=].element[=].target.code = #FRServiceRequestDocument.code
* group[=].element[=].target.equivalence = #equivalent
// Description narrative de l'entrée
* group[=].element[+].code = #FRCDADemandeDExamenOuDeSuivi.text
* group[=].element[=].target.code = #FRServiceRequestDocument.note
* group[=].element[=].target.equivalence = #equivalent
// Statut de la demande
* group[=].element[+].code = #FRCDADemandeDExamenOuDeSuivi.statusCode
* group[=].element[=].target.code = #FRServiceRequestDocument.status
* group[=].element[=].target.equivalence = #equivalent
// Date prévisionnelle de l'examen, du suivi, de l'objectif
* group[=].element[+].code = #FRCDADemandeDExamenOuDeSuivi.effectiveTime
* group[=].element[=].target.code = #FRServiceRequestDocument.occurrence[x]
* group[=].element[=].target.equivalence = #equivalent
// Résultat de la demande
* group[=].element[+].code = #FRCDADemandeDExamenOuDeSuivi.value
* group[=].element[=].target.code = #FRServiceRequestDocument.orderDetail.coding
* group[=].element[=].target.equivalence = #equivalent
// Interprétation
* group[=].element[+].code = #FRCDADemandeDExamenOuDeSuivi.interpretationCode
* group[=].element[=].target.code = #FRServiceRequestDocument.extension:interpretation
* group[=].element[=].target.equivalence = #equivalent
// Méthode
* group[=].element[+].code = #FRCDADemandeDExamenOuDeSuivi.methodCode
* group[=].element[=].target.code = #FRServiceRequestDocument.extension:method
* group[=].element[=].target.equivalence = #equivalent
// Cible
* group[=].element[+].code = #FRCDADemandeDExamenOuDeSuivi.targetSiteCode
* group[=].element[=].target.code = #FRServiceRequestDocument.bodySite
* group[=].element[=].target.equivalence = #equivalent
// Auteur de la demande
* group[=].element[+].code = #FRCDADemandeDExamenOuDeSuivi.author
* group[=].element[=].target.code = #FRServiceRequestDocument.requester.extension:author
* group[=].element[=].target.equivalence = #equivalent