Instance: FRSectionBarCodesLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping Métier/CDA/FHIR : Codes-barres"
Description: "Mapping des éléments du modèle métier FRLMCodesAbarres vers la section CDA FRCDACodeABarres, puis vers la section FHIR FRCompositionDocument.section:barCodes."
* title = "Mapping Métier/CDA/FHIR : \"Code à barres\""
* status = #draft

// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-codes-a-barres"    
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-code-a-barres"
// Élément racine
* group[=].element[+].code = #FRLMCodesAbarres
* group[=].element[=].target.code = #FRCDACodeABarres
* group[=].element[=].target.equivalence = #equivalent
// Code de la section
* group[=].element[+].code = #FRLMCodesAbarres.codeSection
* group[=].element[=].target.code = #FRCDACodeABarres.code
* group[=].element[=].target.equivalence = #equivalent
// Titre de la section
* group[=].element[+].code = #FRLMCodesAbarres.titreSection
* group[=].element[=].target.code = #FRCDACodeABarres.title
* group[=].element[=].target.equivalence = #equivalent
// Description narrative de la section
* group[=].element[+].code = #FRLMCodesAbarres.blocNarratif
* group[=].element[=].target.code = #FRCDACodeABarres.text
* group[=].element[=].target.equivalence = #equivalent
// Code à barres
* group[=].element[+].code = #FRLMCodesAbarres.entree.imageIllustrative
* group[=].element[=].target.code = #FRCDACodeABarres.entry.FRCDACodeABarres
* group[=].element[=].target.equivalence = #equivalent

// Groupe Mapping 2 : CDA → FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-code-a-barres"    
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-composition-document"
// Élément racine
* group[=].element[+].code = #FRCDACodeABarres
* group[=].element[=].target.code = #FRCompositionDocument.section:barCodes
* group[=].element[=].target.equivalence = #equivalent
// Code de la section
* group[=].element[+].code = #FRCDACodeABarres.code
* group[=].element[=].target.code = #FRCompositionDocument.section:barCodes.code
* group[=].element[=].target.equivalence = #equivalent
// Titre de la section
* group[=].element[+].code = #FRCDACodeABarres.title
* group[=].element[=].target.code = #FRCompositionDocument.section:barCodes.title
* group[=].element[=].target.equivalence = #equivalent
// Description narrative de la section
* group[=].element[+].code = #FRCDACodeABarres.text
* group[=].element[=].target.code = #FRCompositionDocument.section:barCodes.text
* group[=].element[=].target.equivalence = #equivalent
// Code à barres
* group[=].element[+].code = #FRCDACodeABarres.entry.FRCDACodeABarres
* group[=].element[=].target.code = #FRCompositionDocument.section:barCodes.entry:FRCDAMediaDocument
* group[=].element[=].target.equivalence = #equivalent