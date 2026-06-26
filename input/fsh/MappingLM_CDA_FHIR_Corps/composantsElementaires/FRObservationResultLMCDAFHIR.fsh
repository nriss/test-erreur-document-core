Instance: FRObservationResultLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMObservationResult → FRCDAResultat → FRObservationResultDocument"
Description: "Mapping des éléments du modèle métier FRLMObservationResult vers le profil CDA FRCDAResultat, puis vers le profil FHIR FRObservationResultDocument."
* title = "Mapping Métier/CDA/FHIR : \"Résultat d'observation\""
* status = #draft

// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-observation-result"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-resultat"
// Élément racine
* group[=].element[+].code = #FRLMObservationResult
* group[=].element[=].target.code = #FRCDAResultat
* group[=].element[=].target.equivalence = #equivalent
// Identifiant de l'observation
* group[=].element[+].code = #FRLMObservationResult.identifiant
* group[=].element[=].target.code = #FRCDAResultat.id
* group[=].element[=].target.equivalence = #equivalent
// Code de l'observation
* group[=].element[+].code = #FRLMObservationResult.code
* group[=].element[=].target.code = #FRCDAResultat.code
* group[=].element[=].target.equivalence = #equivalent
// Texte narratif
* group[=].element[+].code = #FRLMObservationResult.description
* group[=].element[=].target.code = #FRCDAResultat.text
* group[=].element[=].target.equivalence = #equivalent
// Statut de l'observation
* group[=].element[+].code = #FRLMObservationResult.statut
* group[=].element[=].target.code = #FRCDAResultat.statusCode
* group[=].element[=].target.equivalence = #equivalent
// Date/heure de l'observation
* group[=].element[+].code = #FRLMObservationResult.date
* group[=].element[=].target.code = #FRCDAResultat.effectiveTime
* group[=].element[=].target.equivalence = #equivalent
// Valeur observée
* group[=].element[+].code = #FRLMObservationResult.valeur
* group[=].element[=].target.code = #FRCDAResultat.value
* group[=].element[=].target.equivalence = #equivalent
// Interprétation de la valeur
* group[=].element[+].code = #FRLMObservationResult.interpretation
* group[=].element[=].target.code = #FRCDAResultat.interpretationCode
* group[=].element[=].target.equivalence = #equivalent
// Site de l'observation
* group[=].element[+].code = #FRLMObservationResult.site
* group[=].element[=].target.code = #FRCDAResultat.targetSiteCode
* group[=].element[=].target.equivalence = #equivalent
// Auteur
* group[=].element[+].code = #FRLMObservationResult.auteur
* group[=].element[=].target.code = #FRCDAResultat.author
* group[=].element[=].target.equivalence = #equivalent
// Intervalle de référence
* group[=].element[+].code = #FRLMObservationResult.intervalleReference
* group[=].element[=].target.code = #FRCDAResultat.referenceRange
* group[=].element[=].target.equivalence = #equivalent
// Commentaires
* group[=].element[+].code = #FRLMObservationResult.commentaires
* group[=].element[=].target.code = #FRCDAResultat.entryRelationship:frCommentaireER
* group[=].element[=].target.equivalence = #equivalent
// Demande d'examen associée
* group[=].element[+].code = #FRLMObservationResult.demandeExamen
* group[=].element[=].target.equivalence = #unmatched
* group[=].element[=].target.comment = "Pas de correspondance directe dans FRCDAResultat pour la demande d'examen associée."

// Groupe Mapping 2 : CDA FRCDAResultat → FHIR FRObservationResultDocument
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-resultat"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-observation-result-document"
// élément racine
* group[=].element[+].code = #FRCDAResultat
* group[=].element[=].target.code = #FRObservationResultDocument
* group[=].element[=].target.equivalence = #equivalent
// Identifiant
* group[=].element[+].code = #FRCDAResultat.id
* group[=].element[=].target.code = #FRObservationResultDocument.identifier
* group[=].element[=].target.equivalence = #equivalent
// Code
* group[=].element[+].code = #FRCDAResultat.code
* group[=].element[=].target.code = #FRObservationResultDocument.code
* group[=].element[=].target.equivalence = #equivalent
// Texte
* group[=].element[+].code = #FRCDAResultat.text
* group[=].element[=].target.code = #FRObservationResultDocument.note
* group[=].element[=].target.equivalence = #equivalent
// Statut
* group[=].element[+].code = #FRCDAResultat.statusCode
* group[=].element[=].target.code = #FRObservationResultDocument.status
* group[=].element[=].target.equivalence = #equivalent
// Date/heure (effectiveTime)
* group[=].element[+].code = #FRCDAResultat.effectiveTime
* group[=].element[=].target.code = #FRObservationResultDocument.effective[x]
* group[=].element[=].target.equivalence = #equivalent
// Valeur (value)
* group[=].element[+].code = #FRCDAResultat.value
* group[=].element[=].target.code = #FRObservationResultDocument.value[x]
* group[=].element[=].target.equivalence = #equivalent
// Interprétation (interpretationCode)
* group[=].element[+].code = #FRCDAResultat.interpretationCode
* group[=].element[=].target.code = #FRObservationResultDocument.interpretation
* group[=].element[=].target.equivalence = #equivalent
// Site (targetSiteCode)
* group[=].element[+].code = #FRCDAResultat.targetSiteCode
* group[=].element[=].target.code = #FRObservationResultDocument.bodySite
* group[=].element[=].target.equivalence = #equivalent
// Auteur (author)
* group[=].element[+].code = #FRCDAResultat.author
* group[=].element[=].target.code = #FRObservationResultDocument.performer.extension:author
* group[=].element[=].target.equivalence = #equivalent
// Intervalle de référence (referenceRange)
* group[=].element[+].code = #FRCDAResultat.referenceRange
* group[=].element[=].target.code = #FRObservationResultDocument.referenceRange
* group[=].element[=].target.equivalence = #equivalent
// Commentaires (entryRelationship:frCommentaireER)
* group[=].element[+].code = #FRCDAResultat.entryRelationship:frCommentaireER
* group[=].element[=].target.code = #FRObservationResultDocument.note
* group[=].element[=].target.equivalence = #equivalent
// Demande d'examen associée
* group[=].element[=].target.code = #FRObservationResultDocument.basedOn:serviceRequestAccessionNumber
* group[=].element[=].target.equivalence = #unmatched