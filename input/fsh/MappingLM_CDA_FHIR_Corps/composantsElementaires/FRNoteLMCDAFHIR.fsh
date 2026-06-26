Instance: FRNoteLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMCommentaireER -> FRCDACommentaireER -> Annotation"
Description: "Mapping des éléments du modele metier FRLMCommentaireER vers l'element CDA FRCDACommentaireER, puis vers l'element FHIR Annotation."
* title = "Mapping Metier/CDA/FHIR : \"Commentaire ER\""
* status = #draft

// Groupe Mapping 1 : modele metier -> CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-commentaire-er"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-commentaire-er"
// Element racine
* group[=].element[+].code = #FRLMCommentaireER
* group[=].element[=].target.code = #FRCDACommentaireER
* group[=].element[=].target.equivalence = #equivalent
// Code de l'entree
* group[=].element[+].code = #FRLMCommentaireER.codeCommentaireER
* group[=].element[=].target.code = #FRCDACommentaireER.code
* group[=].element[=].target.equivalence = #equivalent
// Texte du commentaire
* group[=].element[+].code = #FRLMCommentaireER.texteCommentaireER
* group[=].element[=].target.code = #FRCDACommentaireER.text
* group[=].element[=].target.equivalence = #equivalent
// Statut
* group[=].element[+].code = #FRLMCommentaireER.statutCommentaireER
* group[=].element[=].target.code = #FRCDACommentaireER.statusCode
* group[=].element[=].target.equivalence = #equivalent
// Auteur
* group[=].element[+].code = #FRLMCommentaireER.auteurCommentaireER
* group[=].element[=].target.code = #FRCDACommentaireER.author
* group[=].element[=].target.equivalence = #equivalent

// Groupe Mapping 2 : CDA -> FHIR (Annotation)
// Pas d’équivalent direct FHIR pour FRCDACommentaireER ; mapping vers Annotation, réutilisée dans plusieurs ressources FHIR (Observation, Condition, etc.) via l’élément note.
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-commentaire-er"
* group[=].target = "http://hl7.org/fhir/StructureDefinition/Annotation"
// Element racine
* group[=].element[+].code = #FRCDACommentaireER
* group[=].element[=].target.code = #Annotation
* group[=].element[=].target.equivalence = #equivalent
// Texte
* group[=].element[+].code = #FRCDACommentaireER.text
* group[=].element[=].target.code = #Annotation.text
* group[=].element[=].target.equivalence = #equivalent
// Auteur
* group[=].element[+].code = #FRCDACommentaireER.author
* group[=].element[=].target.code = #Annotation.author[x]
* group[=].element[=].target.equivalence = #equivalent
// Code
* group[=].element[+].code = #FRCDACommentaireER.code
* group[=].element[=].target.equivalence = #unmatched
* group[=].element[=].target.comment = "Pas de correspondance directe dans Annotation."
// Statut
* group[=].element[+].code = #FRCDACommentaireER.statusCode
* group[=].element[=].target.equivalence = #unmatched
* group[=].element[=].target.comment = "Pas de correspondance directe dans Annotation."
