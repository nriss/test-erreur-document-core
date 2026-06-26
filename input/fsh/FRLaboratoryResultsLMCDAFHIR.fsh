Instance: FRLaboratoryResultsLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMResultatsExamensBiologieMedicale → FRCDAResultatExamensDeBiologie → FRObservationLaboratoryReportResultsDocument"
Description: "Mapping des éléments du modèle métier FRLMResultatsExamensBiologieMedicale vers le profil CDA FRCDAResultatExamensDeBiologie, puis vers le profil FHIR FRObservationLaboratoryReportResultsDocument."
* title = "Mapping Métier/CDA/FHIR : \"Résultats d'examens de biologie médicale\""
* status = #draft

// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-resultats-examens-biologie-medicale"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-resultat-examens-de-biologie-medicale"
// Élément racine
* group[=].element[+].code = #FRLMResultatsExamensBiologieMedicale
* group[=].element[=].target.code = #FRCDAResultatExamensDeBiologie
* group[=].element[=].target.equivalence = #equivalent
// code
* group[=].element[+].code = #FRLMResultatsExamensBiologieMedicale.code
* group[=].element[=].target.code = #FRCDAResultatExamensDeBiologie.code
* group[=].element[=].target.equivalence = #equivalent
// statut
* group[=].element[+].code = #FRLMResultatsExamensBiologieMedicale.statut
* group[=].element[=].target.code = #FRCDAResultatExamensDeBiologie.statusCode
* group[=].element[=].target.equivalence = #equivalent
// dateResultat
* group[=].element[+].code = #FRLMResultatsExamensBiologieMedicale.dateResultat
* group[=].element[=].target.code = #FRCDAResultatExamensDeBiologie.effectiveTime
* group[=].element[=].target.equivalence = #equivalent
// Sujet non humain
* group[=].element[+].code = #FRLMResultatsExamensBiologieMedicale.choice:FRLMSujetNonHumain
* group[=].element[=].target.code = #FRCDAResultatExamensDeBiologie.subject
* group[=].element[=].target.equivalence = #equivalent
// Patient avec sujet non humain
* group[=].element[+].code = #FRLMResultatsExamensBiologieMedicale.choice:FRLMPatientSujetNonHumain
* group[=].element[=].target.code = #FRCDAResultatExamensDeBiologie.subject
* group[=].element[=].target.equivalence = #equivalent
// laboratoireExecutant
* group[=].element[+].code = #FRLMResultatsExamensBiologieMedicale.laboratoireExecutant
* group[=].element[=].target.code = #FRCDAResultatExamensDeBiologie.performer
* group[=].element[=].target.equivalence = #equivalent
// auteur
* group[=].element[+].code = #FRLMResultatsExamensBiologieMedicale.auteur
* group[=].element[=].target.code = #FRCDAResultatExamensDeBiologie.author
* group[=].element[=].target.equivalence = #equivalent
// valideur
* group[=].element[+].code = #FRLMResultatsExamensBiologieMedicale.valideur
* group[=].element[=].target.code = #FRCDAResultatExamensDeBiologie.participant
* group[=].element[=].target.display =  "Authenticator (CDA participant) : participant/@typeCode='AUTHEN'"
* group[=].element[=].target.equivalence = #equivalent
// responsable
* group[=].element[+].code = #FRLMResultatsExamensBiologieMedicale.responsable
* group[=].element[=].target.code = #FRCDAResultatExamensDeBiologie.participant
* group[=].element[=].target.display =  "Responsible Party (CDA participant) : participant/@typeCode='RESP'"
* group[=].element[=].target.equivalence = #equivalent
// dispositifAutomatique
* group[=].element[+].code = #FRLMResultatsExamensBiologieMedicale.dispositifAutomatique
* group[=].element[=].target.code = #FRCDAResultatExamensDeBiologie.participant
* group[=].element[=].target.display =  "Device (CDA participant) : participant/@typeCode='DEV'"
* group[=].element[=].target.equivalence = #equivalent
// prelevement
* group[=].element[+].code = #FRLMResultatsExamensBiologieMedicale.prelevement
* group[=].element[=].target.code = #FRCDAResultatExamensDeBiologie.entryRelationship:frPrelevement  
* group[=].element[=].target.equivalence = #equivalent
// batterieExamensDeBiologieMedicale
* group[=].element[+].code = #FRLMResultatsExamensBiologieMedicale.batterieExamensDeBiologieMedicale
* group[=].element[=].target.code = #FRCDAResultatExamensDeBiologie.entryRelationship:frBatterieExamensDeBiologieMedicale
* group[=].element[=].target.equivalence = #equivalent
// isolatMicrobiologique
* group[=].element[+].code = #FRLMResultatsExamensBiologieMedicale.isolatMicrobiologique
* group[=].element[=].target.code = #FRCDAResultatExamensDeBiologie.entryRelationship:frIsolatMicrobiologique
* group[=].element[=].target.equivalence = #equivalent
// resultatElementCliniquePertinent
* group[=].element[+].code = #FRLMResultatsExamensBiologieMedicale.resultatElementCliniquePertinent
* group[=].element[=].target.code = #FRCDAResultatExamensDeBiologie.entryRelationship:frResultatExamensDeBiologieElementCliniquePertinent
* group[=].element[=].target.equivalence = #equivalent
// imageIllustrative
* group[=].element[+].code = #FRLMResultatsExamensBiologieMedicale.imageIllustrative
* group[=].element[=].target.code = #FRCDAResultatExamensDeBiologie.entryRelationship:frImageIllustrative
* group[=].element[=].target.equivalence = #equivalent
// commentaire
* group[=].element[+].code = #FRLMResultatsExamensBiologieMedicale.commentaire
* group[=].element[=].target.code = #FRCDAResultatExamensDeBiologie.entryRelationship:frCommentaireER
* group[=].element[=].target.equivalence = #equivalent

// Groupe Mapping 2 : CDA → FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-resultat-examens-de-biologie-medicale"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-observation-laboratory-report-results-document"
// Élément racine
* group[=].element[+].code = #FRCDAResultatExamensDeBiologie
* group[=].element[=].target.code = #FRObservationLaboratoryReportResultsDocument
* group[=].element[=].target.equivalence = #equivalent
// code
* group[=].element[+].code = #FRCDAResultatExamensDeBiologie.code
* group[=].element[=].target.code = #FRObservationLaboratoryReportResultsDocument.code
* group[=].element[=].target.equivalence = #equivalent
// statusCode
* group[=].element[+].code = #FRCDAResultatExamensDeBiologie.statusCode
* group[=].element[=].target.code = #FRObservationLaboratoryReportResultsDocument.status
* group[=].element[=].target.equivalence = #equivalent
// effectiveTime
* group[=].element[+].code = #FRCDAResultatExamensDeBiologie.effectiveTime
* group[=].element[=].target.code = #FRObservationLaboratoryReportResultsDocument.effectivePeriod
* group[=].element[=].target.equivalence = #equivalent
// subject
* group[=].element[+].code = #FRCDAResultatExamensDeBiologie.subject
* group[=].element[=].target.code = #FRObservationLaboratoryReportResultsDocument.subject
* group[=].element[=].target.equivalence = #equivalent
// laboratoireExecutant
* group[=].element[+].code = #FRCDAResultatExamensDeBiologie.performer
* group[=].element[=].target.code = #FRObservationLaboratoryReportResultsDocument.performer.extension:laboratoireExecutant
* group[=].element[=].target.equivalence = #equivalent
// author
* group[=].element[+].code = #FRCDAResultatExamensDeBiologie.author
* group[=].element[=].target.code = #FRObservationLaboratoryReportResultsDocument.performer.extension:author
* group[=].element[=].target.equivalence = #equivalent
// valideur
* group[=].element[+].code = #FRCDAResultatExamensDeBiologie.participant
* group[=].element[=].target.code = #FRObservationLaboratoryReportResultsDocument.performer.extension:validateurResultat
* group[=].element[=].target.display =  "Authenticator (CDA participant) : participant/@typeCode='AUTHEN'"
* group[=].element[=].target.equivalence = #equivalent
// responsable
* group[=].element[+].code = #FRCDAResultatExamensDeBiologie.participant
* group[=].element[=].target.code = #FRObservationLaboratoryReportResultsDocument.performer.extension:responsableExamen
* group[=].element[=].target.display =  "Responsible Party (CDA participant) : participant/@typeCode='RESP'"
* group[=].element[=].target.equivalence = #equivalent
// dispositifAutomatique
* group[=].element[+].code = #FRCDAResultatExamensDeBiologie.participant
* group[=].element[=].target.code = #FRObservationLaboratoryReportResultsDocument.performer.extension:dispositifAuto
* group[=].element[=].target.display =  "Device (CDA participant) : participant/@typeCode='DEV'"
* group[=].element[=].target.equivalence = #equivalent
// prelevement
* group[=].element[+].code = #FRCDAResultatExamensDeBiologie.entryRelationship:frPrelevement  
* group[=].element[=].target.code = #FRObservationLaboratoryReportResultsDocument.specimen
* group[=].element[=].target.equivalence = #equivalent
// commentaire
* group[=].element[+].code = #FRCDAResultatExamensDeBiologie.entryRelationship:frCommentaireER
* group[=].element[=].target.code = #FRObservationLaboratoryReportResultsDocument.note
* group[=].element[=].target.equivalence = #equivalent
// batterie examens de biologie médicale
* group[=].element[+].code = #FRCDAResultatExamensDeBiologie.entryRelationship:frBatterieExamensDeBiologieMedicale
* group[=].element[=].target.code = #FRObservationLaboratoryReportResultsDocument.hasMember:FRObservationLaboratoryReportResultsDocument
* group[=].element[=].target.equivalence = #equivalent
// isolat microbiologique
* group[=].element[+].code = #FRCDAResultatExamensDeBiologie.entryRelationship:frIsolatMicrobiologique
* group[=].element[=].target.code = #FRObservationLaboratoryReportResultsDocument.hasMember:FRObservationLaboratoryReportResultsDocument
* group[=].element[=].target.equivalence = #equivalent
// resultat element clinique pertinent
* group[=].element[+].code = #FRCDAResultatExamensDeBiologie.entryRelationship:frResultatExamensDeBiologieElementCliniquePertinent
* group[=].element[=].target.code = #FRObservationLaboratoryReportResultsDocument.hasMember:FRObservationLaboratoryReportResultsDocument
* group[=].element[=].target.equivalence = #equivalent
// image illustrative
* group[=].element[+].code = #FRCDAResultatExamensDeBiologie.entryRelationship:frImageIllustrative
* group[=].element[=].target.code = #FRObservationLaboratoryReportResultsDocument.derivedFrom:FRMediaDocument
* group[=].element[=].target.equivalence = #equivalent