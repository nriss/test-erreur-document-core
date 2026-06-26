Instance: FRProcedureLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMActe → FRCDAActe → FRProcedureDocument"
Description: "Mapping des éléments du modèle métier FRLMActe vers le profil CDA FRCDAActe, puis vers le profil FHIR FRProcedureDocument."

* title = "Mapping Métier/CDA/FHIR : \"Acte\""
* status = #draft

// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-acte"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-acte"

* group[=].element[+].code = #FRLMActe
* group[=].element[=].target.code = #FRCDAActe
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #FRLMActe.identifiant
* group[=].element[=].target.code = #FRCDAActe.id
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #FRLMActe.description
* group[=].element[=].target.code = #FRCDAActe.text
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #FRLMActe.code
* group[=].element[=].target.code = #FRCDAActe.code
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #FRLMActe.titre
* group[=].element[=].target.equivalence = #unmatched
* group[=].element[=].target.comment = "Le titre métier n’a pas d’équivalent structuré en CDA."

* group[=].element[+].code = #FRLMActe.statut
* group[=].element[=].target.code = #FRCDAActe.statusCode
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #FRLMActe.date
* group[=].element[=].target.code = #FRCDAActe.effectiveTime
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #FRLMActe.priorite
* group[=].element[=].target.code = #FRCDAActe.priorityCode
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #FRLMActe.localisationAnatomique
* group[=].element[=].target.code = #FRCDAActe.targetSiteCode
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #FRLMActe.voieDAbord
* group[=].element[=].target.code = #FRCDAActe.approachSiteCode
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #FRLMActe.perfomer
* group[=].element[=].target.code = #FRCDAActe.performer
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #FRLMActe.auteur
* group[=].element[=].target.code = #FRCDAActe.author
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #FRLMActe.informateur
* group[=].element[=].target.code = #FRCDAActe.informant
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #FRLMActe.participant
* group[=].element[=].target.code = #FRCDAActe.participant
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #FRLMActe.circonstances
* group[=].element[=].target.code = #FRCDAActe.entryRelationship:frReferenceInterneCirconstances
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #FRLMActe.reason
* group[=].element[=].target.code = #FRCDAActe.entryRelationship:frReferenceInterneMotifActe
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #FRLMActe.dispositifMedical
* group[=].element[=].target.code = #FRCDAActe.entryRelationship:frReferenceInterneDM
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #FRLMActe.difficulte
* group[=].element[=].target.code = #FRCDAActe.entryRelationship:frSimpleObservationDifficulte
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #FRLMActe.scores
* group[=].element[=].target.code = #FRCDAActe.entryRelationship:frSimpleObservationScores
* group[=].element[=].target.equivalence = #equivalent


// Groupe Mapping 2 : CDA → FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-acte"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-procedure-document"

/* Element racine */
* group[=].element[+].code = #FRCDAActe
* group[=].element[=].target.code = #FRProcedureDocument
* group[=].element[=].target.equivalence = #equivalent

/* Identifiant */
* group[=].element[+].code = #FRCDAActe.id
* group[=].element[=].target.code = #FRProcedureDocument.identifier
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "L'élément id en CDA devient identifier en FHIR."

/* Code de l'acte */
* group[=].element[+].code = #FRCDAActe.code
* group[=].element[=].target.code = #FRProcedureDocument.code
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Le code CDA correspond au code FHIR."

/* Date effectiveTime */
* group[=].element[+].code = #FRCDAActe.effectiveTime
* group[=].element[=].target.code = #FRProcedureDocument.performed[x]
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "effectiveTime → performedDateTime ou performedPeriod."

/* Texte narratif */
* group[=].element[+].code = #FRCDAActe.text
* group[=].element[=].target.code = #FRProcedureDocument.note
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "text CDA devient note/annotation FHIR."

/* Statut */
* group[=].element[+].code = #FRCDAActe.statusCode
* group[=].element[=].target.code = #FRProcedureDocument.status
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "statusCode CDA → status FHIR."

/* Référence interne DM */
* group[=].element[+].code = #FRCDAActe.entryRelationship:frReferenceInterneDM
* group[=].element[=].target.code = #FRProcedureDocument.usedReference
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "DM référencé dans usedReference."

/* Observations liées aux scores */
* group[=].element[+].code = #FRCDAActe.entryRelationship:frSimpleObservationScores
* group[=].element[=].target.code = #FRProcedureDocument.partOf
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Les observations liées aux scores deviennent partOf."

/* Performers / Informant / Participant */
* group[=].element[+].code = #FRCDAActe.performer
* group[=].element[=].target.code = #FRProcedureDocument.performer.actor.extension:Intervenant
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #FRCDAActe.informant
* group[=].element[=].target.code = #FRProcedureDocument.performer.actor.extension:Informateur
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #FRCDAActe.participant
* group[=].element[=].target.code = #FRProcedureDocument.performer.actor.extension:Participant
* group[=].element[=].target.equivalence = #equivalent

/* Motif de l'acte */
* group[=].element[+].code = #FRCDAActe.entryRelationship:frReferenceInterneMotifActe
* group[=].element[=].target.code = #FRProcedureDocument.reasonReference
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Motif de l'acte en CDA correspond à reasonReference en FHIR."

/* Rencontre associée */
* group[=].element[+].code = #FRCDAActe.entryRelationship:frReferenceInterneCirconstances
* group[=].element[=].target.code = #FRProcedureDocument.encounter
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Référence de contexte CDA → Encounter FHIR."

/* Difficulté */
* group[=].element[+].code = #FRCDAActe.entryRelationship:frSimpleObservationDifficulte
* group[=].element[=].target.code = #FRProcedureDocument.extension:difficulte
* group[=].element[=].target.equivalence = #equivalent

/* author → recorder */
* group[=].element[+].code = #FRCDAActe.author
* group[=].element[=].target.code = #FRProcedureDocument.recorder.extension:author
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "author CDA → recorder FHIR."

/* Priorité */
* group[=].element[+].code = #FRCDAActe.priorityCode
* group[=].element[=].target.code = #FRProcedureDocument.extension:priority
* group[=].element[=].target.equivalence = #equivalent

/* Localisation anatomique */
* group[=].element[+].code = #FRCDAActe.targetSiteCode
* group[=].element[=].target.code = #FRProcedureDocument.bodySite.TargetSiteCode
* group[=].element[=].target.equivalence = #equivalent

/* Voie d'abord */
* group[=].element[+].code = #FRCDAActe.approachSiteCode
* group[=].element[=].target.code = #FRProcedureDocument.bodySite.ApproachSiteCode
* group[=].element[=].target.equivalence = #equivalent
