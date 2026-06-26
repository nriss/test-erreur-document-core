Instance: FRLaboratoryIsolateResultsLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMIsolatMicrobiologique → FRCDAIsolatMicrobiologique → FRObservationLaboratoryReportResultsDocument"
Description: "Mapping des éléments du modèle métier FRLMIsolatMicrobiologique vers le profil CDA FRCDAIsolatMicrobiologique, puis vers le profil FHIR FRObservationLaboratoryReportResultsDocument."
* title = "Mapping Métier/CDA/FHIR : \"Isolat microbiologique\""
* status = #draft

// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-isolat-microbiologique"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-isolat-microbiologique"
// Élément racine
* group[=].element[+].code = #FRLMIsolatMicrobiologique
* group[=].element[=].target.code = #FRCDAIsolatMicrobiologique
* group[=].element[=].target.equivalence = #equivalent
// identifiant
* group[=].element[+].code = #FRLMIsolatMicrobiologique.identifiant
* group[=].element[=].target.code = #FRCDAIsolatMicrobiologique.id
* group[=].element[=].target.equivalence = #equivalent
// codeIsolat
* group[=].element[+].code = #FRLMIsolatMicrobiologique.codeIsolat
* group[=].element[=].target.code = #FRCDAIsolatMicrobiologique.code
* group[=].element[=].target.equivalence = #equivalent
// statut
* group[=].element[+].code = #FRLMIsolatMicrobiologique.statut
* group[=].element[=].target.code = #FRCDAIsolatMicrobiologique.statusCode
* group[=].element[=].target.equivalence = #equivalent
// dateateResultat
* group[=].element[+].code = #FRLMIsolatMicrobiologique.dateResultat
* group[=].element[=].target.code = #FRCDAIsolatMicrobiologique.effectiveTime
* group[=].element[=].target.equivalence = #equivalent
// sujet non humain
* group[=].element[+].code = #FRLMIsolatMicrobiologique.choice:SujetNonHumain
* group[=].element[=].target.code = #FRCDAIsolatMicrobiologique.subject
* group[=].element[=].target.equivalence = #equivalent
// patient avec sujet non humain
* group[=].element[+].code = #FRLMIsolatMicrobiologique.choice:PatientSujetNonHumain
* group[=].element[=].target.code = #FRCDAIsolatMicrobiologique.subject
* group[=].element[=].target.equivalence = #equivalent
// isolatMicrobiologique
* group[=].element[+].code = #FRLMIsolatMicrobiologique.isolatMicrobiologique
* group[=].element[=].target.code = #FRCDAIsolatMicrobiologique.specimen
* group[=].element[=].target.equivalence = #equivalent
// isolat
* group[=].element[+].code = #FRLMIsolatMicrobiologique.isolatMicrobiologique.isolat
* group[=].element[=].target.code = #FRCDAIsolatMicrobiologique.specimen.specimenRole
* group[=].element[=].target.equivalence = #equivalent
// identifiant de l'isolat
* group[=].element[+].code = #FRLMIsolatMicrobiologique.isolatMicrobiologique.isolat.identifiant
* group[=].element[=].target.code = #FRCDAIsolatMicrobiologique.specimen.specimenRole.id
* group[=].element[=].target.equivalence = #equivalent
// agent
* group[=].element[+].code = #FRLMIsolatMicrobiologique.isolatMicrobiologique.isolat.agent
* group[=].element[=].target.code = #FRCDAIsolatMicrobiologique.specimen.specimenRole.specimenPlayingEntity
* group[=].element[=].target.equivalence = #equivalent
// code de l'agent
* group[=].element[+].code = #FRLMIsolatMicrobiologique.isolatMicrobiologique.isolat.agent.code
* group[=].element[=].target.code = #FRCDAIsolatMicrobiologique.specimen.specimenRole.specimenPlayingEntity.code
* group[=].element[=].target.equivalence = #equivalent
// laboratoireExecutant
* group[=].element[+].code = #FRLMIsolatMicrobiologique.laboratoireExecutant
* group[=].element[=].target.code = #FRCDAIsolatMicrobiologique.performer
* group[=].element[=].target.equivalence = #equivalent
// auteur
* group[=].element[+].code = #FRLMIsolatMicrobiologique.auteur
* group[=].element[=].target.code = #FRCDAIsolatMicrobiologique.author
* group[=].element[=].target.equivalence = #equivalent
// valideur
* group[=].element[+].code = #FRLMIsolatMicrobiologique.valideur
* group[=].element[=].target.code = #FRCDAIsolatMicrobiologique.participant
* group[=].element[=].target.display =  "Authenticator (CDA participant) : participant/@typeCode='AUTHEN'"
* group[=].element[=].target.equivalence = #equivalent
// responsable
* group[=].element[+].code = #FRLMIsolatMicrobiologique.responsable
* group[=].element[=].target.code = #FRCDAIsolatMicrobiologique.participant
* group[=].element[=].target.display =  "Responsible Party (CDA participant) : participant/@typeCode='RESP'"
* group[=].element[=].target.equivalence = #equivalent
// dispositifAutomatique
* group[=].element[+].code = #FRLMIsolatMicrobiologique.dispositifAutomatique
* group[=].element[=].target.code = #FRCDAIsolatMicrobiologique.participant
* group[=].element[=].target.display =  "Device (CDA participant) : participant/@typeCode='DEV'"
* group[=].element[=].target.equivalence = #equivalent  
// batterieExamensDeBiologieMedicale
* group[=].element[+].code = #FRLMIsolatMicrobiologique.batterieExamensDeBiologieMedicale
* group[=].element[=].target.code = #FRCDAIsolatMicrobiologique.component:frBatterieExamensDeBiologieMedicale
* group[=].element[=].target.equivalence = #equivalent
// resultatElementCliniquePertinent
* group[=].element[+].code = #FRLMIsolatMicrobiologique.resultatElementCliniquePertinent
* group[=].element[=].target.code = #FRCDAIsolatMicrobiologique.component:frResultatExamensDeBiologieElementCliniquePertinent
* group[=].element[=].target.equivalence = #equivalent
// imageIllustrative
* group[=].element[+].code = #FRLMIsolatMicrobiologique.imageIllustrative
* group[=].element[=].target.code = #FRCDAIsolatMicrobiologique.component:frImageIllustrative
* group[=].element[=].target.equivalence = #equivalent
// commentaire
* group[=].element[+].code = #FRLMIsolatMicrobiologique.commentaire
* group[=].element[=].target.code = #FRCDAIsolatMicrobiologique.component:frCommentaireER
* group[=].element[=].target.equivalence = #equivalent  

// Groupe Mapping 2 : CDA → FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-isolat-microbiologique"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-observation-laboratory-report-results-document"
// Élément racine
* group[=].element[+].code = #FRCDAIsolatMicrobiologique
* group[=].element[=].target.code = #FRObservationLaboratoryReportResultsDocument
* group[=].element[=].target.equivalence = #equivalent
// identifiant
* group[=].element[+].code = #FRCDAIsolatMicrobiologique.id
* group[=].element[=].target.code = #FRObservationLaboratoryReportResultsDocument.identifier
* group[=].element[=].target.equivalence = #equivalent
// code isolat
* group[=].element[+].code = #FRCDAIsolatMicrobiologique.code
* group[=].element[=].target.code = #FRObservationLaboratoryReportResultsDocument.code
* group[=].element[=].target.equivalence = #equivalent  
// statut
* group[=].element[+].code = #FRCDAIsolatMicrobiologique.statusCode
* group[=].element[=].target.code = #FRObservationLaboratoryReportResultsDocument.status
* group[=].element[=].target.equivalence = #equivalent
// effectiveTime
* group[=].element[+].code = #FRCDAIsolatMicrobiologique.effectiveTime
* group[=].element[=].target.code = #FRObservationLaboratoryReportResultsDocument.effectivePeriod
* group[=].element[=].target.equivalence = #equivalent
// subject
* group[=].element[+].code = #FRCDAIsolatMicrobiologique.subject
* group[=].element[=].target.code = #FRObservationLaboratoryReportResultsDocument.subject
* group[=].element[=].target.equivalence = #equivalent
// isolat microbiologique
* group[=].element[+].code = #FRCDAIsolatMicrobiologique.specimen
* group[=].element[=].target.code = #FRObservationLaboratoryReportResultsDocument.specimen
* group[=].element[=].target.equivalence = #equivalent
// laboratoire executant
* group[=].element[+].code = #FRCDAIsolatMicrobiologique.performer
* group[=].element[=].target.code = #FRObservationLaboratoryReportResultsDocument.performer.extension:laboratoireExecutant
* group[=].element[=].target.equivalence = #equivalent
// author
* group[=].element[+].code = #FRCDAIsolatMicrobiologique.author
* group[=].element[=].target.code = #FRObservationLaboratoryReportResultsDocument.performer.extension:author
* group[=].element[=].target.equivalence = #equivalent
// valideur
* group[=].element[+].code = #FRCDAIsolatMicrobiologique.participant
* group[=].element[=].target.code = #FRObservationLaboratoryReportResultsDocument.performer.extension:validateurResultat
* group[=].element[=].target.display =  "Authenticator (CDA participant) : participant/@typeCode='AUTHEN'"
* group[=].element[=].target.equivalence = #equivalent
// responsable
* group[=].element[+].code = #FRCDAIsolatMicrobiologique.participant
* group[=].element[=].target.code = #FRObservationLaboratoryReportResultsDocument.performer.extension:responsableExamen
* group[=].element[=].target.display =  "Responsible Party (CDA participant) : participant/@typeCode='RESP'"
* group[=].element[=].target.equivalence = #equivalent
// dispositifAutomatique
* group[=].element[+].code = #FRCDAIsolatMicrobiologique.participant
* group[=].element[=].target.code = #FRObservationLaboratoryReportResultsDocument.performer.extension:dispositifAuto
* group[=].element[=].target.display =  "Device (CDA participant) : participant/@typeCode='DEV'"
* group[=].element[=].target.equivalence = #equivalent
// batterieExamensDeBiologieMedicale
* group[=].element[+].code = #FRCDAIsolatMicrobiologique.component:frBatterieExamensDeBiologieMedicale
* group[=].element[=].target.code = #FRObservationLaboratoryReportResultsDocument.hasMember:FRObservationLaboratoryReportResultsDocument
* group[=].element[=].target.equivalence = #equivalent
// resultatElementCliniquePertinent
* group[=].element[+].code = #FRCDAIsolatMicrobiologique.component:frResultatExamensDeBiologieElementCliniquePertinent
* group[=].element[=].target.code = #FRObservationLaboratoryReportResultsDocument.hasMember:FRObservationLaboratoryReportResultsDocument
* group[=].element[=].target.equivalence = #equivalent
// imageIllustrative
* group[=].element[+].code = #FRCDAIsolatMicrobiologique.component:frImageIllustrative
* group[=].element[=].target.code = #FRObservationLaboratoryReportResultsDocument.derivedFrom:FRMediaDocument
* group[=].element[=].target.equivalence = #equivalent
// commentaire
* group[=].element[+].code = #FRCDAIsolatMicrobiologique.component:frCommentaireER
* group[=].element[=].target.code = #FRObservationLaboratoryReportResultsDocument.note
* group[=].element[=].target.equivalence = #equivalent