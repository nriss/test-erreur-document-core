Instance: FRSectionLaboratorySecondIntentionResultsLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMResultatsLaboratoireBiologieSecondeIntention → FRCDAResultatsDeLaboratoireDeBiologieDeSecondeIntention → FRCompositionDocument.section:sans-sous-sections"
Description: "Mapping des éléments du modèle métier FRLMResultatsLaboratoireBiologieSecondeIntention vers la section CDA FRCDAResultatsDeLaboratoireDeBiologieDeSecondeIntention, puis vers le profil FHIR FRCompositionDocument.section:LaboratoryResults."
* title = "Mapping Métier/CDA/FHIR : Résultats de laboratoire de biologie de seconde intention"
* status = #draft

// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-resultats-laboratoire-biologie-seconde-intention"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-resultats-de-laboratoire-de-biologie-de-seconde-intention"
// Élément racine
* group[=].element[+].code = #FRLMResultatsLaboratoireBiologieSecondeIntention
* group[=].element[=].target.code = #FRCDAResultatsDeLaboratoireDeBiologieDeSecondeIntention
* group[=].element[=].target.equivalence = #equivalent
// code de la section
* group[=].element[+].code = #FRLMResultatsLaboratoireBiologieSecondeIntention.codeSection
* group[=].element[=].target.code = #FRCDAResultatsDeLaboratoireDeBiologieDeSecondeIntention.code
* group[=].element[=].target.equivalence = #equivalent
// titre de la section
* group[=].element[+].code = #FRLMResultatsLaboratoireBiologieSecondeIntention.titreSection
* group[=].element[=].target.code = #FRCDAResultatsDeLaboratoireDeBiologieDeSecondeIntention.title
* group[=].element[=].target.equivalence = #equivalent
// Description narrative de la section
* group[=].element[+].code = #FRLMResultatsLaboratoireBiologieSecondeIntention.blocNarratif
* group[=].element[=].target.code = #FRCDAResultatsDeLaboratoireDeBiologieDeSecondeIntention.text
* group[=].element[=].target.equivalence = #equivalent
// Entrée Simple observation
* group[=].element[+].code = #FRLMResultatsLaboratoireBiologieSecondeIntention.entree.observation:FRLMObservation
* group[=].element[=].target.code = #FRCDAResultatsDeLaboratoireDeBiologieDeSecondeIntention.entry:FRCDASimpleObservation
* group[=].element[=].target.equivalence = #equivalent
// Entrée Document attaché
* group[=].element[+].code = #FRLMResultatsLaboratoireBiologieSecondeIntention.entree.documentAttache:FRLMDocumentAttache
* group[=].element[=].target.code = #FRCDAResultatsDeLaboratoireDeBiologieDeSecondeIntention.entry:FRCDADocumentAttache
* group[=].element[=].target.equivalence = #equivalent

// Groupe Mapping 2 : CDA → FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-resultats-de-laboratoire-de-biologie-de-seconde-intention"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-composition-document"
// Élément racine
* group[=].element[+].code = #FRCDAResultatsDeLaboratoireDeBiologieDeSecondeIntention
* group[=].element[=].target.code = #FRCompositionDocument.section:sans-sous-sections
* group[=].element[=].target.equivalence = #equivalent
// code de la section
* group[=].element[+].code = #FRCDAResultatsDeLaboratoireDeBiologieDeSecondeIntention.code
* group[=].element[=].target.code = #FRCompositionDocument.section:sans-sous-sections.code
* group[=].element[=].target.equivalence = #equivalent
// titre de la section
* group[=].element[+].code = #FRCDAResultatsDeLaboratoireDeBiologieDeSecondeIntention.title
* group[=].element[=].target.code = #FRCompositionDocument.section:sans-sous-sections.title
* group[=].element[=].target.equivalence = #equivalent
// Description narrative de la section
* group[=].element[+].code = #FRCDAResultatsDeLaboratoireDeBiologieDeSecondeIntention.text
* group[=].element[=].target.code = #FRCompositionDocument.section:sans-sous-sections.text
* group[=].element[=].target.equivalence = #equivalent
// Entrée Simple observation
* group[=].element[+].code = #FRCDAResultatsDeLaboratoireDeBiologieDeSecondeIntention.entry:FRCDASimpleObservation
* group[=].element[=].target.code = #FRCompositionDocument.section:sans-sous-sections.entry:FRObservationLaboratoryReportResultsDocument
* group[=].element[=].target.equivalence = #equivalent
// Entrée Document attaché
* group[=].element[+].code = #FRCDAResultatsDeLaboratoireDeBiologieDeSecondeIntention.entry:FRCDADocumentAttache
* group[=].element[=].target.code = #FRCompositionDocument.section:sans-sous-sections.entry:FRDocumentReferenceDocument
* group[=].element[=].target.equivalence = #equivalent