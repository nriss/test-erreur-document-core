Instance: FRLaboratoryResultClinicalElementLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMResultatExamensBiologieElementCliniquePertinent → Profile: FRCDAResultatExamensDeBiologieElementCliniquePertinent
 → FRObservationLaboratoryReportResultsDocument"
Description: "Mapping des éléments du modèle métier FRLMResultatExamensBiologieElementCliniquePertinent vers le profil CDA FRCDAResultatExamensDeBiologieElementCliniquePertinent, puis vers le profil FHIR FRObservationLaboratoryReportResultsDocument."
* title = "Mapping Métier/CDA/FHIR : \"Résultat d'examens de biologie - Élément clinique pertinent\""
* status = #draft

// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-resultat-examens-biologie-element-clinique-pertinent"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-resultat-examens-de-biologie-element-clinique-pertinent"
// Élément racine
* group[=].element[+].code = #FRLMResultatExamensBiologieElementCliniquePertinent
* group[=].element[=].target.code = #FRCDAResultatExamensDeBiologieElementCliniquePertinent
* group[=].element[=].target.equivalence = #equivalent
// identifiant
* group[=].element[+].code = #FRLMResultatExamensBiologieElementCliniquePertinent.identifiant
* group[=].element[=].target.code = #FRCDAResultatExamensDeBiologieElementCliniquePertinent.id
* group[=].element[=].target.equivalence = #equivalent
// code de l'analyse ou de l'observation
* group[=].element[+].code = #FRLMResultatExamensBiologieElementCliniquePertinent.codeAnalyseObservation
* group[=].element[=].target.code = #FRCDAResultatExamensDeBiologieElementCliniquePertinent.code
* group[=].element[=].target.equivalence = #equivalent
// date et heure de ce résultat
* group[=].element[+].code = #FRLMResultatExamensBiologieElementCliniquePertinent.dateHeureResultat
* group[=].element[=].target.code = #FRCDAResultatExamensDeBiologieElementCliniquePertinent.effectiveTime
* group[=].element[=].target.equivalence = #equivalent
// valeur du résultat
* group[=].element[+].code = #FRLMResultatExamensBiologieElementCliniquePertinent.valeurResultat
* group[=].element[=].target.code = #FRCDAResultatExamensDeBiologieElementCliniquePertinent.value
* group[=].element[=].target.equivalence = #equivalent
// interprétation du résultat
* group[=].element[+].code = #FRLMResultatExamensBiologieElementCliniquePertinent.interpretation
* group[=].element[=].target.code = #FRCDAResultatExamensDeBiologieElementCliniquePertinent.interpretationCode.code
* group[=].element[=].target.equivalence = #equivalent
// méthode ou technique utilisée
* group[=].element[+].code = #FRLMResultatExamensBiologieElementCliniquePertinent.methode
* group[=].element[=].target.code = #FRCDAResultatExamensDeBiologieElementCliniquePertinent.methodCode
* group[=].element[=].target.equivalence = #equivalent
// Sujet non humain
* group[=].element[+].code = #FRLMResultatExamensBiologieElementCliniquePertinent.choice:FRLMSujetNonHumain
* group[=].element[=].target.code = #FRCDAResultatExamensDeBiologieElementCliniquePertinent.subject
* group[=].element[=].target.equivalence = #equivalent
// Patient avec sujet non humain
* group[=].element[+].code = #FRLMResultatExamensBiologieElementCliniquePertinent.choice:FRLMPatientSujetNonHumain
* group[=].element[=].target.code = #FRCDAResultatExamensDeBiologieElementCliniquePertinent.subject
* group[=].element[=].target.equivalence = #equivalent
// laboratoireExecutant
* group[=].element[+].code = #FRLMResultatExamensBiologieElementCliniquePertinent.laboratoireExecutant
* group[=].element[=].target.code = #FRCDAResultatExamensDeBiologieElementCliniquePertinent.performer
* group[=].element[=].target.equivalence = #equivalent
// auteur
* group[=].element[+].code = #FRLMResultatExamensBiologieElementCliniquePertinent.auteur
* group[=].element[=].target.code = #FRCDAResultatExamensDeBiologieElementCliniquePertinent.author
* group[=].element[=].target.equivalence = #equivalent
// valideur
* group[=].element[+].code = #FRLMResultatExamensBiologieElementCliniquePertinent.valideur
* group[=].element[=].target.code = #FRCDAResultatExamensDeBiologieElementCliniquePertinent.participant
* group[=].element[=].target.display =  "Authenticator (CDA participant) : participant/@typeCode='AUTHEN'"
* group[=].element[=].target.equivalence = #equivalent
// responsable
* group[=].element[+].code = #FRLMResultatExamensBiologieElementCliniquePertinent.responsable
* group[=].element[=].target.code = #FRCDAResultatExamensDeBiologieElementCliniquePertinent.participant
* group[=].element[=].target.display =  "Responsible Party (CDA participant) : participant/@typeCode='RESP'"
* group[=].element[=].target.equivalence = #equivalent
// dispositifAutomatique
* group[=].element[+].code = #FRLMResultatExamensBiologieElementCliniquePertinent.dispositifAutomatique
* group[=].element[=].target.code = #FRCDAResultatExamensDeBiologieElementCliniquePertinent.participant
* group[=].element[=].target.display =  "Device (CDA participant) : participant/@typeCode='DEV'"
* group[=].element[=].target.equivalence = #equivalent
// commentaire (entryRelationship)
* group[=].element[+].code = #FRLMResultatExamensBiologieElementCliniquePertinent.commentaire
* group[=].element[=].target.code = #FRCDAResultatExamensDeBiologieElementCliniquePertinent.entryRelationship:frCommentaireER
* group[=].element[=].target.equivalence = #equivalent
// prélèvement (entryRelationship)
* group[=].element[+].code = #FRLMResultatExamensBiologieElementCliniquePertinent.prelevement
* group[=].element[=].target.code = #FRCDAResultatExamensDeBiologieElementCliniquePertinent.entryRelationship:frPrelevement
* group[=].element[=].target.equivalence = #equivalent
// Résultats antérieurs
* group[=].element[+].code = #FRLMResultatExamensBiologieElementCliniquePertinent.resultatsAnterieurs
* group[=].element[=].target.code = #FRCDAResultatExamensDeBiologieElementCliniquePertinent.entryRelationship.observation
* group[=].element[=].target.equivalence = #equivalent
// Intervalles de référence
* group[=].element[+].code = #FRLMResultatExamensBiologieElementCliniquePertinent.intervallesReference
* group[=].element[=].target.code = #FRCDAResultatExamensDeBiologieElementCliniquePertinent.referenceRange.observationRange
* group[=].element[=].target.equivalence = #equivalent

// Groupe Mapping 2 : CDA → FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-resultat-examens-de-biologie-element-clinique-pertinent"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-observation-laboratory-report-results-document"
// identifiant
* group[=].element[+].code = #FRCDAResultatExamensDeBiologieElementCliniquePertinent.id
* group[=].element[=].target.code = #FRObservationLaboratoryReportResultsDocument.identifier
* group[=].element[=].target.equivalence = #equivalent  
// code de l'analyse ou de l'observation
* group[=].element[+].code = #FRCDAResultatExamensDeBiologieElementCliniquePertinent.code
* group[=].element[=].target.code = #FRObservationLaboratoryReportResultsDocument.code
* group[=].element[=].target.equivalence = #equivalent
// date et heure de ce résultat
* group[=].element[+].code = #FRCDAResultatExamensDeBiologieElementCliniquePertinent.effectiveTime
* group[=].element[=].target.code = #FRObservationLaboratoryReportResultsDocument.effectivePeriod
* group[=].element[=].target.equivalence = #equivalent
// valeur du résultat
* group[=].element[+].code = #FRCDAResultatExamensDeBiologieElementCliniquePertinent.value
* group[=].element[=].target.code = #FRObservationLaboratoryReportResultsDocument.value[x]
* group[=].element[=].target.equivalence = #equivalent
// interprétation du résultat
* group[=].element[+].code = #FRCDAResultatExamensDeBiologieElementCliniquePertinent.interpretationCode
* group[=].element[=].target.code = #FRObservationLaboratoryReportResultsDocument.interpretation
* group[=].element[=].target.equivalence = #equivalent
// méthode ou technique utilisée
* group[=].element[+].code = #FRCDAResultatExamensDeBiologieElementCliniquePertinent.methodCode
* group[=].element[=].target.code = #FRObservationLaboratoryReportResultsDocument.method
* group[=].element[=].target.equivalence = #equivalent
// subject
* group[=].element[+].code = #FRCDAResultatExamensDeBiologieElementCliniquePertinent.subject
* group[=].element[=].target.code = #FRObservationLaboratoryReportResultsDocument.subject
* group[=].element[=].target.equivalence = #equivalent
// laboratoireExecutant
* group[=].element[+].code = #FRCDAResultatExamensDeBiologieElementCliniquePertinent.performer
* group[=].element[=].target.code = #FRObservationLaboratoryReportResultsDocument.performer.extension:laboratoireExecutant
* group[=].element[=].target.equivalence = #equivalent
// author
* group[=].element[+].code = #FRCDAResultatExamensDeBiologieElementCliniquePertinent.author
* group[=].element[=].target.code = #FRObservationLaboratoryReportResultsDocument.performer.extension:author
* group[=].element[=].target.equivalence = #equivalent
// valideur
* group[=].element[+].code = #FRCDAResultatExamensDeBiologieElementCliniquePertinent.participant
* group[=].element[=].target.code = #FRObservationLaboratoryReportResultsDocument.performer.extension:validateurResultat
* group[=].element[=].target.equivalence = #equivalent
// responsable
* group[=].element[+].code = #FRCDAResultatExamensDeBiologieElementCliniquePertinent.participant
* group[=].element[=].target.code = #FRObservationLaboratoryReportResultsDocument.performer.extension:responsableExamen
* group[=].element[=].target.equivalence = #equivalent
// dispositifAutomatique
* group[=].element[+].code = #FRCDAResultatExamensDeBiologieElementCliniquePertinent.participant
* group[=].element[=].target.code = #FRObservationLaboratoryReportResultsDocument.performer.extension:dispositifAuto
* group[=].element[=].target.equivalence = #equivalent
// prelevement
* group[=].element[+].code = #FRCDAResultatExamensDeBiologieElementCliniquePertinent.entryRelationship:frPrelevement  
* group[=].element[=].target.code = #FRObservationLaboratoryReportResultsDocument.specimen
* group[=].element[=].target.equivalence = #equivalent
// commentaire
* group[=].element[+].code = #FRCDAResultatExamensDeBiologieElementCliniquePertinent.entryRelationship:frCommentaireER
* group[=].element[=].target.code = #FRObservationLaboratoryReportResultsDocument.note
* group[=].element[=].target.equivalence = #equivalent
// resultatsAnterieurs
* group[=].element[+].code = #FRCDAResultatExamensDeBiologieElementCliniquePertinent.entryRelationship.observation
* group[=].element[=].target.code = #FRObservationLaboratoryReportResultsDocument.extension:workflow-supportingInfo
* group[=].element[=].target.equivalence = #equivalent
// intervallesReference
* group[=].element[+].code = #FRCDAResultatExamensDeBiologieElementCliniquePertinent.referenceRange.observationRange
* group[=].element[=].target.code = #FRObservationLaboratoryReportResultsDocument.valueRange
* group[=].element[=].target.equivalence = #equivalent