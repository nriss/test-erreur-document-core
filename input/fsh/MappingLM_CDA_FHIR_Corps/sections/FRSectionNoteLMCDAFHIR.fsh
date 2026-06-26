Instance: FRSectionNoteLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping Métier/CDA/FHIR : Commentaire ER"
Description: "Mapping des éléments du modèle métier FRLMCommentaireNonCode vers la section CDA FRCDACommentaireNonCode, puis vers le profil FHIR FRCompositionDocument.section:note."
* title = "Mapping Métier/CDA/FHIR : \"Commentaire non codé\""
* status = #draft

// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-commentaire-non-code"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-commentaire-non-code"
// Élément racine
* group[=].element[+].code = #FRLMCommentaireNonCode
* group[=].element[=].target.code = #FRCDACommentaireNonCode
* group[=].element[=].target.equivalence = #equivalent
// code de la section
* group[=].element[+].code = #FRLMCommentaireNonCode.codeSection
* group[=].element[=].target.code = #FRCDACommentaireNonCode.code
* group[=].element[=].target.equivalence = #equivalent
// titre de la section
* group[=].element[+].code = #FRLMCommentaireNonCode.titreSection
* group[=].element[=].target.code = #FRCDACommentaireNonCode.title
* group[=].element[=].target.equivalence = #equivalent
// Commentaire non codé
* group[=].element[+].code = #FRLMCommentaireNonCode.blocNarratif
* group[=].element[=].target.code = #FRCDACommentaireNonCode.text
* group[=].element[=].target.equivalence = #equivalent


// Groupe Mapping 2 : CDA → FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-commentaire-non-code"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-composition-document"
// Élément racine
* group[=].element[+].code = #FRCDACommentaireNonCode
* group[=].element[=].target.code = #FRCompositionDocument.section:note
* group[=].element[=].target.equivalence = #equivalent
// code de la section
* group[=].element[+].code = #FRCDACommentaireNonCode.code
* group[=].element[=].target.code = #FRCompositionDocument.section:note.code
* group[=].element[=].target.equivalence = #equivalent  
// Titre de la section
* group[=].element[+].code = #FRCDACommentaireNonCode.title
* group[=].element[=].target.code = #FRCompositionDocument.section:note.title
* group[=].element[=].target.equivalence = #equivalent
// Commentaire non codé
* group[=].element[+].code = #FRCDACommentaireNonCode.text
* group[=].element[=].target.code = #FRCompositionDocument.section:note.text
* group[=].element[=].target.equivalence = #equivalent