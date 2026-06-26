Instance: FRSectionFamilyHistoryLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping Métier/CDA/FHIR : Antécédents familiaux"
Description: "Mapping des éléments du modèle métier FRLMAntecedentsFamiliaux vers la section CDA FRCDAAntecedentsFamiliaux, puis vers le profil FHIR FRCompositionDocument.section:FamilyHistory."
* title = "Mapping Métier/CDA/FHIR : \"Antécédents familiaux\""
* status = #draft

// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-antecedents-familiaux"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-antecedents-familiaux"
// Élément racine
* group[=].element[+].code = #FRLMAntecedentsFamiliaux
* group[=].element[=].target.code = #FRCDAAntecedentsFamiliaux
* group[=].element[=].target.equivalence = #equivalent
// Code de la section
* group[=].element[+].code = #FRLMAntecedentsFamiliaux.codeSection
* group[=].element[=].target.code = #FRCDAAntecedentsFamiliaux.code
* group[=].element[=].target.equivalence = #equivalent
// Titre de la section
* group[=].element[+].code = #FRLMAntecedentsFamiliaux.titreSection
* group[=].element[=].target.code = #FRCDAAntecedentsFamiliaux.title
* group[=].element[=].target.equivalence = #equivalent
// Description narrative de la section
* group[=].element[+].code = #FRLMAntecedentsFamiliaux.blocNarratif
* group[=].element[=].target.code = #FRCDAAntecedentsFamiliaux.text
* group[=].element[=].target.equivalence = #equivalent
// Entrée : Antécédent familial
* group[=].element[+].code = #FRLMAntecedentsFamiliaux.entree.antecedentsFamiliaux
* group[=].element[=].target.code = #FRCDAAntecedentsFamiliaux.entry:FRCDAAntecedentsFamiliaux
* group[=].element[=].target.equivalence = #equivalent

// Groupe Mapping 2 : CDA → FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-antecedents-familiaux"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-composition-document"
// Élément racine
* group[=].element[+].code = #FRCDAAntecedentsFamiliaux
* group[=].element[=].target.code = #FRCompositionDocument.section:FamilyHistory
* group[=].element[=].target.equivalence = #equivalent
// Code de la section
* group[=].element[+].code = #FRCDAAntecedentsFamiliaux.code
* group[=].element[=].target.code = #FRCompositionDocument.section:FamilyHistory.code
* group[=].element[=].target.equivalence = #equivalent
// Titre de la section
* group[=].element[+].code = #FRCDAAntecedentsFamiliaux.title
* group[=].element[=].target.code = #FRCompositionDocument.section:FamilyHistory.title
* group[=].element[=].target.equivalence = #equivalent
// Description narrative de la section
* group[=].element[+].code = #FRCDAAntecedentsFamiliaux.text
* group[=].element[=].target.code = #FRCompositionDocument.section:FamilyHistory.text
* group[=].element[=].target.equivalence = #equivalent
// Entrée : Antécédent familial
* group[=].element[+].code = #FRCDAAntecedentsFamiliaux.entry:FRCDAAntecedentsFamiliaux
* group[=].element[=].target.code = #FRCompositionDocument.section:FamilyHistory.entry:FRFamilyMemberHistoryDocument
* group[=].element[=].target.equivalence = #equivalent