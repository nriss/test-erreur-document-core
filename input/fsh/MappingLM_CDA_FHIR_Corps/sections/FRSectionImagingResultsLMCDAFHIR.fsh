Instance: FRSectionImagingResultsLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping Métier/CDA/FHIR : Résultats d'imagerie"
Description: "Mapping des éléments du modèle métier FRLMResultatsExamenImagerie vers la section CDA FRCDADICOMResultats puis vers le profil FHIR FRCompositionDocument.section:Findings."
* title = "Mapping Métier/CDA/FHIR : Résultats d'imagerie"
* status = #draft

// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-resultats-examen-imagerie"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-dicom-resultats"
// Élément racine
* group[=].element[+].code = #FRLMResultatsExamenImagerie
* group[=].element[=].target.code = #FRCDADICOMResultats    
* group[=].element[=].target.equivalence = #equivalent
// titreSection
* group[=].element[+].code = #FRLMResultatsExamenImagerie.titreSection
* group[=].element[=].target.code = #FRCDADICOMResultats.title
* group[=].element[=].target.equivalence = #equivalent
// texte narratif
* group[=].element[+].code = #FRLMResultatsExamenImagerie.blocNarratif
* group[=].element[=].target.code = #FRCDADICOMResultats.text
* group[=].element[=].target.equivalence = #equivalent

// Groupe Mapping 2 : CDA → FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-dicom-resultats"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-composition-document"
// Élément racine
* group[=].element[+].code = #FRCDADICOMResultats
* group[=].element[=].target.code = #FRCompositionDocument.section:Findings
* group[=].element[=].target.equivalence = #equivalent
// Titre de la section
* group[=].element[+].code = #FRCDADICOMResultats.title
* group[=].element[=].target.code = #FRCompositionDocument.section:Findings.title
* group[=].element[=].target.equivalence = #equivalent
// Texte narratif
* group[=].element[+].code = #FRCDADICOMResultats.text
* group[=].element[=].target.code = #FRCompositionDocument.section:Findings.text
* group[=].element[=].target.equivalence = #equivalent
// Résultats codés
// entry FHIR sans équivalent dans la source CDA
* group[=].element[=].target.code = #FRCompositionDocument.section:Findings.entry:FRObservationResultDocument
* group[=].element[=].target.equivalence = #unmatched