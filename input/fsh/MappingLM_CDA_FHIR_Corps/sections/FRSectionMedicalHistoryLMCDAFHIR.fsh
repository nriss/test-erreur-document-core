Instance: FRSectionMedicalHistoryLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping Métier/CDA/FHIR : Antécédents médicaux"
Description: "Mapping des éléments du modèle métier FRLMAntecedentsMedicaux vers la section CDA FRCDAAntecedentsMedicaux, puis vers le profil FHIR FRCompositionDocument.section:MedicalHistory."
* title = "Mapping Métier/CDA/FHIR : \"Antécédents médicaux\""
* status = #draft

// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-antecedents-medicaux"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-antecedents-medicaux"
// Élément racine
* group[=].element[+].code = #FRLMAntecedentsMedicaux
* group[=].element[=].target.code = #FRCDAAntecedentsMedicaux
* group[=].element[=].target.equivalence = #equivalent  
// Code de la section
* group[=].element[+].code = #FRLMAntecedentsMedicaux.codeSection
* group[=].element[=].target.code = #FRCDAAntecedentsMedicaux.code
* group[=].element[=].target.equivalence = #equivalent
// Titre de la section
* group[=].element[+].code = #FRLMAntecedentsMedicaux.titreSection
* group[=].element[=].target.code = #FRCDAAntecedentsMedicaux.title
* group[=].element[=].target.equivalence = #equivalent
// Description narrative de la section
* group[=].element[+].code = #FRLMAntecedentsMedicaux.blocNarratif
* group[=].element[=].target.code = #FRCDAAntecedentsMedicaux.text
* group[=].element[=].target.equivalence = #equivalent
// Entrée : Antécédent médical
* group[=].element[+].code = #FRLMAntecedentsMedicaux.entree.problemes
* group[=].element[=].target.code = #FRCDAAntecedentsMedicaux.entry.FRCDAListeDesProblemes
* group[=].element[=].target.equivalence = #equivalent

// Groupe Mapping 2 : CDA → FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-antecedents-medicaux"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-composition-document"
// Élément racine
* group[=].element[+].code = #FRCDAAntecedentsMedicaux
* group[=].element[=].target.code = #FRCompositionDocument.section:MedicalHistory
* group[=].element[=].target.equivalence = #equivalent
// Code de la section
* group[=].element[+].code = #FRCDAAntecedentsMedicaux.code
* group[=].element[=].target.code = #FRCompositionDocument.section:MedicalHistory.code
* group[=].element[=].target.equivalence = #equivalent  
// Titre de la section
* group[=].element[+].code = #FRCDAAntecedentsMedicaux.title
* group[=].element[=].target.code = #FRCompositionDocument.section:MedicalHistory.title
* group[=].element[=].target.equivalence = #equivalent
// Description narrative de la section
* group[=].element[+].code = #FRCDAAntecedentsMedicaux.text
* group[=].element[=].target.code = #FRCompositionDocument.section:MedicalHistory.text
* group[=].element[=].target.equivalence = #equivalent
// Entrée : Antécédent médical
* group[=].element[+].code = #FRCDAAntecedentsMedicaux.entry.FRCDAListeDesProblemes
* group[=].element[=].target.code = #FRCompositionDocument.section:MedicalHistory.entry:FRConditionDocument
* group[=].element[=].target.equivalence = #equivalent