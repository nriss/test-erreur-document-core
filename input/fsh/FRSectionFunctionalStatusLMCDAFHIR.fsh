Instance: FRSectionFunctionalStatusLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMStatutFonctionnel → FRCDAStatutFonctionnel → FRCompositionDocument.section:FRFunctionalStatus"
Description: "Mapping des éléments du modèle métier FRLMStatutFonctionnel vers la section CDA FRCDAStatutFonctionnel, puis vers la section FHIR FRCompositionDocument.section:FRFunctionalStatus."
* title = "Mapping Métier/CDA/FHIR : \"Statut fonctionnel\""
* status = #draft
// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-statut-fonctionnel"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-statut-fonctionnel"
// Élément racine
* group[=].element[+].code = #FRLMStatutFonctionnel
* group[=].element[=].target.code = #FRCDAStatutFonctionnel
* group[=].element[=].target.equivalence = #equivalent
// code de la section
* group[=].element[+].code = #FRLMStatutFonctionnel.codeSection
* group[=].element[=].target.code = #FRCDAStatutFonctionnel.code
* group[=].element[=].target.equivalence = #equivalent
// Titre de la section
* group[=].element[+].code = #FRLMStatutFonctionnel.titreSection
* group[=].element[=].target.code = #FRCDAStatutFonctionnel.title
* group[=].element[=].target.equivalence = #equivalent
// bloc narratif
* group[=].element[+].code = #FRLMStatutFonctionnel.blocNarratif
* group[=].element[=].target.code = #FRCDAStatutFonctionnel.text
* group[=].element[=].target.equivalence = #equivalent
// auteur
* group[=].element[+].code = #FRLMStatutFonctionnel.auteur
* group[=].element[=].target.code = #FRCDAStatutFonctionnel.author
* group[=].element[=].target.equivalence = #equivalent
// informateur
* group[=].element[+].code = #FRLMStatutFonctionnel.informateur
* group[=].element[=].target.code = #FRCDAStatutFonctionnel.informant
* group[=].element[=].target.equivalence = #equivalent
// entree - groupeQuestionnairesEvaluation
* group[=].element[+].code = #FRLMStatutFonctionnel.entree.groupeQuestionnairesEvaluation
* group[=].element[=].target.code = #FRCDAStatutFonctionnel.entry:FRCDAGroupDeQuestionnairesDEvaluation
* group[=].element[=].target.equivalence = #equivalent

// Groupe Mapping 2 : CDA → FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-statut-fonctionnel"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-composition-document"
// Élément racine
* group[=].element[+].code = #FRCDAStatutFonctionnel
* group[=].element[=].target.code = #FRCompositionDocument.section:FRFunctionalStatus
* group[=].element[=].target.equivalence = #equivalent
// code de la section
* group[=].element[+].code = #FRCDAStatutFonctionnel.code
* group[=].element[=].target.code = #FRCompositionDocument.section:FRFunctionalStatus.code
* group[=].element[=].target.equivalence = #equivalent
// Titre de la section
* group[=].element[+].code = #FRCDAStatutFonctionnel.title
* group[=].element[=].target.code = #FRCompositionDocument.section:FRFunctionalStatus.title
* group[=].element[=].target.equivalence = #equivalent
// bloc narratif
* group[=].element[+].code = #FRCDAStatutFonctionnel.text
* group[=].element[=].target.code = #FRCompositionDocument.section:FRFunctionalStatus.text
* group[=].element[=].target.equivalence = #equivalent
// auteur
* group[=].element[+].code = #FRCDAStatutFonctionnel.author
* group[=].element[=].target.code = #FRCompositionDocument.author
* group[=].element[=].target.equivalence = #equivalent
// informateur
* group[=].element[+].code = #FRCDAStatutFonctionnel.informant
* group[=].element[=].target.code = #FRCompositionDocument.extension:informant
* group[=].element[=].target.equivalence = #equivalent
// entree - groupe questionnaires d'évaluation
* group[=].element[+].code = #FRCDAStatutFonctionnel.entry:FRCDAGroupDeQuestionnairesDEvaluation
* group[=].element[=].target.code = #FRCompositionDocument.section:FRFunctionalStatus.entry:FRObservationSurveyPannelDocument
* group[=].element[=].target.equivalence = #equivalent