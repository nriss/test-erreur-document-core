Instance: FRSectionImagingComparisonLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMComparaisonExamensImagerie → FRCDADICOMExamenComparatif → FRCompositionDocument.section:Comparison"
Description: "Mapping des éléments du modèle métier FRLMComparaisonExamensImagerie vers le profil CDA FRCDADICOMExamenComparatif, puis vers la section Comparison du profil FHIR FRCompositionDocument."
* title = "Mapping Métier/CDA/FHIR : \"Comparaison d'examens d'imagerie\""
* status = #draft   

// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-comparaison-examens-imagerie"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-dicom-examen-comparatif"
// Élément racine
* group[=].element[+].code = #FRLMComparaisonExamensImagerie
* group[=].element[=].target.code = #FRCDADICOMExamenComparatif
* group[=].element[=].target.equivalence = #equivalent
// code de la section
* group[=].element[+].code = #FRLMComparaisonExamensImagerie.codeSection
* group[=].element[=].target.code = #FRCDADICOMExamenComparatif.code
* group[=].element[=].target.equivalence = #equivalent
// Titre de la section
* group[=].element[+].code = #FRLMComparaisonExamensImagerie.titreSection
* group[=].element[=].target.code = #FRCDADICOMExamenComparatif.title
* group[=].element[=].target.equivalence = #equivalent
// Description de la section
* group[=].element[+].code = #FRLMComparaisonExamensImagerie.blocNarratif
* group[=].element[=].target.code = #FRCDADICOMExamenComparatif.text
* group[=].element[=].target.equivalence = #equivalent
// la section FRDICOMCDAExamenComparatif est non codée en CDA, il n'y a pas de mapping pour les éléments entrée et sousSection.

// Groupe Mapping 2 : CDA → FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-dicom-examen-comparatif"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-composition-document"
// Élément racine
* group[=].element[+].code = #FRCDADICOMExamenComparatif
* group[=].element[=].target.code = #FRCompositionDocument.section:Comparison
* group[=].element[=].target.equivalence = #equivalent
// code de la section
* group[=].element[+].code = #FRCDADICOMExamenComparatif.code
* group[=].element[=].target.code = #FRCompositionDocument.section:Comparison.code
* group[=].element[=].target.equivalence = #equivalent
// Titre de la section
* group[=].element[+].code = #FRCDADICOMExamenComparatif.title
* group[=].element[=].target.code = #FRCompositionDocument.section:Comparison.title
* group[=].element[=].target.equivalence = #equivalent
// Description de la section
* group[=].element[+].code = #FRCDADICOMExamenComparatif.text
* group[=].element[=].target.code = #FRCompositionDocument.section:Comparison.text
* group[=].element[=].target.equivalence = #equivalent
// Entrée de la section
// La section Comparison peut etre codée ou non codée, il n'y a pas de mapping pour les éléments entrée et sousSection du modèle CDA.
// Si section codéee : entrée = référence à une ressource FHIR codée FRImagingStudyDocument
// Si section non codée : utiliser le champ text de la section pour décrire la comparaison d'examens d'imagerie, et ne pas utiliser "entry" ou la sous-section "section.section".
* group[=].element[+].code = #_noSourceComparison
* group[=].element[=].display = "Pas d'équivalent dans CDA. Si la section Comparison est codée, les examens d'imagerie comparés doivent être référencés en tant qu'entrées de la section, avec des références à des ressources FHIR de type FRImagingStudyDocument. Si la section Comparison est non codée, le champ 'text' de la section doit être utilisé pour décrire la comparaison d'examens d'imagerie"
* group[=].element[=].target.code = #FRCompositionDocument.section:Comparison.entry:FRImagingStudyDocument
* group[=].element[=].target.equivalence = #unmatched
