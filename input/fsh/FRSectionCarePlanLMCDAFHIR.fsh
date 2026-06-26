Instance: FRSectionCarePlanLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMPlanSoins → FRCDAPlanDeSoins → FRCompositionDocument.section:planOfCare"
Description: "Mapping des éléments du modèle métier FRLMPlanSoins vers la section CDA FRCDAPlanDeSoins, puis vers la section FHIR FRCompositionDocument.section:planOfCare."
* title = "Mapping Métier/CDA/FHIR : \"Plan de soins\""
* status = #draft
// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-plan-soins"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-plan-de-soins"
// élément racine
* group[=].element[+].code = #FRLMPlanSoins
* group[=].element[=].target[+].code = #FRCDAPlanDeSoins
* group[=].element[=].target[=].equivalence = #equivalent
// code de la section
* group[=].element[+].code = #FRLMPlanSoins.codeSection
* group[=].element[=].target[+].code = #FRCDAPlanDeSoins.code
* group[=].element[=].target[=].equivalence = #equivalent
// titre de la section
* group[=].element[+].code = #FRLMPlanSoins.titreSection
* group[=].element[=].target[+].code = #FRCDAPlanDeSoins.title
* group[=].element[=].target[=].equivalence = #equivalent
// bloc narratif de la section
* group[=].element[+].code = #FRLMPlanSoins.blocNarratif
* group[=].element[=].target[+].code = #FRCDAPlanDeSoins.text
* group[=].element[=].target[=].equivalence = #equivalent
// Entrée Plan de soins
* group[=].element[+].code = #FRLMPlanSoins.entree.actes
* group[=].element[=].target[+].code = #FRCDAPlanDeSoins.entry:FRCDAActe
* group[=].element[=].target[=].equivalence = #equivalent
// Entrée Demande d'examen ou de suivi
* group[=].element[+].code = #FRLMPlanSoins.entree.demandeExamenOuSuivi
* group[=].element[=].target[+].code = #FRCDAPlanDeSoins.entry:FRCDADemandeDExamenOuDeSuivi
* group[=].element[=].target[=].equivalence = #equivalent
// Entrée Traitement
* group[=].element[+].code = #FRLMPlanSoins.entree.traitement
* group[=].element[=].target[+].code = #FRCDAPlanDeSoins.entry:FRCDATraitement
* group[=].element[=].target[=].equivalence = #equivalent
// Entrée Vaccin recommandé
* group[=].element[+].code = #FRLMPlanSoins.entree.vaccinRecommande
* group[=].element[=].target[+].code = #FRCDAPlanDeSoins.entry:FRCDAVaccinRecommande
* group[=].element[=].target[=].equivalence = #equivalent
// Entrée Rencontre
* group[=].element[+].code = #FRLMPlanSoins.entree.rencontre
* group[=].element[=].target[+].code = #FRCDAPlanDeSoins.entry:FRCDARencontre
* group[=].element[=].target[=].equivalence = #equivalent

// Groupe Mapping 2 : CDA → FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-plan-de-soins"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-composition-document"
// élément racine
* group[=].element[+].code = #FRCDAPlanDeSoins
* group[=].element[=].target[+].code = #FRCompositionDocument.section:planOfCare
* group[=].element[=].target[=].equivalence = #equivalent
// code de la section
* group[=].element[+].code = #FRCDAPlanDeSoins.code
* group[=].element[=].target[+].code = #FRCompositionDocument.section:planOfCare.code
* group[=].element[=].target[=].equivalence = #equivalent
// titre de la section
* group[=].element[+].code = #FRCDAPlanDeSoins.title
* group[=].element[=].target[+].code = #FRCompositionDocument.section:planOfCare.title
* group[=].element[=].target[=].equivalence = #equivalent
// bloc narratif de la section
* group[=].element[+].code = #FRCDAPlanDeSoins.text
* group[=].element[=].target[+].code = #FRCompositionDocument.section:planOfCare.text
* group[=].element[=].target[=].equivalence = #equivalent
// Entrée Plan de soins
* group[=].element[+].code = #FRCDAPlanDeSoins.entry:FRCDAActe
* group[=].element[=].target[+].code = #FRCompositionDocument.section:planOfCare.entry:FRProcedureActDocument
* group[=].element[=].target[=].equivalence = #equivalent
// Entrée Demande d'examen ou de suivi
* group[=].element[+].code = #FRCDAPlanDeSoins.entry:FRCDADemandeDExamenOuDeSuivi
* group[=].element[=].target[+].code = #FRCompositionDocument.section:planOfCare.entry:FRServiceRequestDocument
* group[=].element[=].target[=].equivalence = #equivalent
// Entrée Traitement
* group[=].element[+].code = #FRCDAPlanDeSoins.entry:FRCDATraitement
* group[=].element[=].target[+].code = #FRCompositionDocument.section:planOfCare.entry:FRMedicationAdministrationDocument
* group[=].element[=].target[=].equivalence = #equivalent
// Entrée Vaccin recommandé
* group[=].element[+].code = #FRCDAPlanDeSoins.entry:FRCDAVaccinRecommande
* group[=].element[=].target[+].code = #FRCompositionDocument.section:planOfCare.entry:FRImmunizationRecommendationDocument
* group[=].element[=].target[=].equivalence = #equivalent
// Entrée Rencontre
* group[=].element[+].code = #FRCDAPlanDeSoins.entry:FRCDARencontre
* group[=].element[=].target[+].code = #FRCompositionDocument.section:planOfCare.entry:FREncounterDocument
* group[=].element[=].target[=].equivalence = #equivalent