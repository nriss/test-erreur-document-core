Instance: FRLaboratoryBatteryResultsLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMBatterieExamensBiologieMedicale → FRCDABatterieExamensDeBiologieMedicale → FRObservationLaboratoryReportResultsDocument"
Description: "Mapping des éléments du modèle métier FRLMBatterieExamensBiologieMedicale vers le profil CDA FRCDABatterieExamensDeBiologieMedicale, puis vers le profil FHIR FRObservationLaboratoryReportResultsDocument."
* title = "Mapping Métier/CDA/FHIR : \"Batterie d'examens de biologie médicale\""
* status = #draft

// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-batterie-examens-biologie-medicale"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-batterie-examens-de-biologie-medicale"
// Élément racine
* group[=].element[+].code = #FRLMBatterieExamensBiologieMedicale
* group[=].element[=].target.code = #FRCDABatterieExamensDeBiologieMedicale
* group[=].element[=].target.equivalence = #equivalent
// identifiant
* group[=].element[+].code = #FRLMBatterieExamensBiologieMedicale.identifiant
* group[=].element[=].target.code = #FRCDABatterieExamensDeBiologieMedicale.id
* group[=].element[=].target.equivalence = #equivalent
// code de la batterie d'examen
* group[=].element[+].code = #FRLMBatterieExamensBiologieMedicale.codeBatterieExamen
* group[=].element[=].target.code = #FRCDABatterieExamensDeBiologieMedicale.code
* group[=].element[=].target.equivalence = #equivalent
// statut
* group[=].element[+].code = #FRLMBatterieExamensBiologieMedicale.statut
* group[=].element[=].target.code = #FRCDABatterieExamensDeBiologieMedicale.statusCode
* group[=].element[=].target.equivalence = #equivalent
// date de l'examen
* group[=].element[+].code = #FRLMBatterieExamensBiologieMedicale.dateExamen
* group[=].element[=].target.code = #FRCDABatterieExamensDeBiologieMedicale.effectiveTime
* group[=].element[=].target.equivalence = #equivalent
// sujet non humain
* group[=].element[+].code = #FRLMBatterieExamensBiologieMedicale.choice:FRLMSujetNonHumain
* group[=].element[=].target.code = #FRCDABatterieExamensDeBiologieMedicale.subject
* group[=].element[=].target.equivalence = #equivalent
// patient avec sujet non humain
* group[=].element[+].code = #FRLMBatterieExamensBiologieMedicale.choice:FRLMPatientSujetNonHumain
* group[=].element[=].target.code = #FRCDABatterieExamensDeBiologieMedicale.subject
* group[=].element[=].target.equivalence = #equivalent
// laboratoire exécutant
* group[=].element[+].code = #FRLMBatterieExamensBiologieMedicale.laboratoireExecutant
* group[=].element[=].target.code = #FRCDABatterieExamensDeBiologieMedicale.performer
* group[=].element[=].target.equivalence = #equivalent  
// auteur
* group[=].element[+].code = #FRLMBatterieExamensBiologieMedicale.auteur
* group[=].element[=].target.code = #FRCDABatterieExamensDeBiologieMedicale.author
* group[=].element[=].target.equivalence = #equivalent
// participant
* group[=].element[+].code = #FRLMBatterieExamensBiologieMedicale.participant
* group[=].element[=].target.code = #FRCDABatterieExamensDeBiologieMedicale.participant
* group[=].element[=].target.equivalence = #equivalent
// prélèvement
* group[=].element[+].code = #FRLMBatterieExamensBiologieMedicale.prelevement
* group[=].element[=].target.code = #FRCDABatterieExamensDeBiologieMedicale.component:frPrelevement
* group[=].element[=].target.equivalence = #equivalent
// résultat d'examen de biologie / élément clinique pertinent
* group[=].element[+].code = #FRLMBatterieExamensBiologieMedicale.resultatElementCliniquePertinent
* group[=].element[=].target.code = #FRCDABatterieExamensDeBiologieMedicale.component:frResultatExamensDeBiologieElementCliniquePertinent 
* group[=].element[=].target.equivalence = #equivalent
// image illustrative
* group[=].element[+].code = #FRLMBatterieExamensBiologieMedicale.imageIllustrative
* group[=].element[=].target.code = #FRCDABatterieExamensDeBiologieMedicale.component:frImageIllustrative
* group[=].element[=].target.equivalence = #equivalent
// commentaire
* group[=].element[+].code = #FRLMBatterieExamensBiologieMedicale.commentaire
* group[=].element[=].target.code = #FRCDABatterieExamensDeBiologieMedicale.component:frCommentaireER
* group[=].element[=].target.equivalence = #equivalent

// Groupe Mapping 2 : CDA → FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-batterie-examens-de-biologie-medicale"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-observation-laboratory-report-results-document"
// Élément racine
* group[=].element[+].code = #FRCDABatterieExamensDeBiologieMedicale
* group[=].element[=].target.code = #FRObservationLaboratoryReportResultsDocument
* group[=].element[=].target.equivalence = #equivalent
// identifiant
* group[=].element[+].code = #FRCDABatterieExamensDeBiologieMedicale.id
* group[=].element[=].target.code = #FRObservationLaboratoryReportResultsDocument.identifier
* group[=].element[=].target.equivalence = #equivalent
// code
* group[=].element[+].code = #FRCDABatterieExamensDeBiologieMedicale.code
* group[=].element[=].target.code = #FRObservationLaboratoryReportResultsDocument.code
* group[=].element[=].target.equivalence = #equivalent
// statusCode
* group[=].element[+].code = #FRCDABatterieExamensDeBiologieMedicale.statusCode
* group[=].element[=].target.code = #FRObservationLaboratoryReportResultsDocument.status
* group[=].element[=].target.equivalence = #equivalent
// effectiveTime
* group[=].element[+].code = #FRCDABatterieExamensDeBiologieMedicale.effectiveTime
* group[=].element[=].target.code = #FRObservationLaboratoryReportResultsDocument.effectivePeriod
* group[=].element[=].target.equivalence = #equivalent
// subject
* group[=].element[+].code = #FRCDABatterieExamensDeBiologieMedicale.subject
* group[=].element[=].target.code = #FRObservationLaboratoryReportResultsDocument.subject
* group[=].element[=].target.equivalence = #equivalent
// laboratoire exécutant
* group[=].element[+].code = #FRCDABatterieExamensDeBiologieMedicale.performer
* group[=].element[=].target.code = #FRObservationLaboratoryReportResultsDocument.performer.extension:laboratoireExecutant
* group[=].element[=].target.equivalence = #equivalent
// author
* group[=].element[+].code = #FRCDABatterieExamensDeBiologieMedicale.author
* group[=].element[=].target.code = #FRObservationLaboratoryReportResultsDocument.author
* group[=].element[=].target.equivalence = #equivalent
// valideur des résultats
* group[=].element[+].code = #FRCDABatterieExamensDeBiologieMedicale.participant
* group[=].element[=].target.code = #FRObservationLaboratoryReportResultsDocument.performer.extension:validateurResultat
* group[=].element[=].target.display =  "Authenticator (CDA participant) : participant/@typeCode='AUTHEN'"
* group[=].element[=].target.equivalence = #equivalent
// responsable de l'examen
* group[=].element[+].code = #FRCDABatterieExamensDeBiologieMedicale.participant
* group[=].element[=].target.code = #FRObservationLaboratoryReportResultsDocument.performer.extension:responsableExamen
* group[=].element[=].target.display =  "Responsible Party (CDA participant) : participant/@typeCode='RESP'"
* group[=].element[=].target.equivalence = #equivalent
// dispositif automatique
* group[=].element[+].code = #FRCDABatterieExamensDeBiologieMedicale.participant
* group[=].element[=].target.code = #FRObservationLaboratoryReportResultsDocument.performer.extension:dispositifAuto
* group[=].element[=].target.display =  "Device (CDA participant) : participant/@typeCode='DEV'"
* group[=].element[=].target.equivalence = #equivalent
// component:frPrelevement
* group[=].element[+].code = #FRCDABatterieExamensDeBiologieMedicale.component:frPrelevement
* group[=].element[=].target.code = #FRObservationLaboratoryReportResultsDocument.specimen
* group[=].element[=].target.equivalence = #equivalent
// component:frResultatExamensDeBiologieElementCliniquePertinent
* group[=].element[+].code = #FRCDABatterieExamensDeBiologieMedicale.component:frResultatExamensDeBiologieElementCliniquePertinent
* group[=].element[=].target.code = #FRObservationLaboratoryReportResultsDocument.hasMember:FRObservationLaboratoryReportResultsDocument
* group[=].element[=].target.equivalence = #equivalent
// component:frImageIllustrative
* group[=].element[+].code = #FRCDABatterieExamensDeBiologieMedicale.component:frImageIllustrative
* group[=].element[=].target.code = #FRObservationLaboratoryReportResultsDocument.derivedFrom:FRMediaDocument
* group[=].element[=].target.equivalence = #equivalent
// component:frCommentaireER
* group[=].element[+].code = #FRCDABatterieExamensDeBiologieMedicale.component:frCommentaireER
* group[=].element[=].target.code = #FRObservationLaboratoryReportResultsDocument.note
* group[=].element[=].target.equivalence = #equivalent