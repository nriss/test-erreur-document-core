Instance: FRPatientWithNonHumanSubjectLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMPatientSujetNonHumain -> FRCDAPatientAvecSujetNonHumain -> FRObservationLaboratoryReportResultsDocument"
Description: "Mapping des éléments du modele metier FRLMPatientSujetNonHumain vers l'element CDA FRCDAPatientAvecSujetNonHumain, puis vers les ressources FHIR Observation/Specimen/Substance et Observation/subject."
* title = "Mapping Metier/CDA/FHIR : \"Patient avec sujet non humain\""
* status = #draft

// Groupe Mapping 1 : modele metier -> CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-patient-sujet-non-humain"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-patient-avec-sujet-non-humain"
// Element racine
* group[=].element[+].code = #FRLMPatientSujetNonHumain
* group[=].element[=].target.code = #FRCDAPatientAvecSujetNonHumain
* group[=].element[=].target.equivalence = #equivalent
// Sujet (non humain)
* group[=].element[+].code = #FRLMPatientSujetNonHumain.sujet
* group[=].element[=].target.code = #FRCDAPatientAvecSujetNonHumain.subject.relatedSubject.code
* group[=].element[=].target.equivalence = #equivalent
// Adresse
* group[=].element[+].code = #FRLMPatientSujetNonHumain.adresse
* group[=].element[=].target.code = #FRCDAPatientAvecSujetNonHumain.subject.relatedSubject.addr
* group[=].element[=].target.equivalence = #equivalent

// Groupe Mapping 2 : CDA -> FHIR (Patient CDA --> Subject FHIR)
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-record-target"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-observation-laboratory-report-results-document"
// Patient (subject)
* group[=].element[+].code = #FRCDARecordTarget.patientRole
* group[=].element[=].target.code = #FRObservationLaboratoryReportResultsDocument.subject
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Subject = Reference(FRPatientINSDocument)."

// Groupe Mapping 3 : CDA -> FHIR (Sujet non humain CDA --> Specimen FHIR)
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-patient-avec-sujet-non-humain"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-observation-laboratory-report-results-document"
// Sujet non humain (specimen)
* group[=].element[+].code = #FRCDAPatientAvecSujetNonHumain
* group[=].element[=].target.code = #FRObservationLaboratoryReportResultsDocument.specimen
* group[=].element[=].target.equivalence = #equivalent
// Substance du sujet non humain
* group[=].element[+].code = #FRCDAPatientAvecSujetNonHumain.subject.relatedSubject.code
* group[=].element[=].target.code = #FRObservationLaboratoryReportResultsDocument.specimen.subject:Substance
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "specimen.subject = Reference(Substance)."

// Groupe Mapping 4 : CDA -> FHIR (Sujet non humain CDA --> Substance FHIR)
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-patient-avec-sujet-non-humain"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/substance"
// Sujet non humain (substance.code)
* group[=].element[+].code = #FRCDAPatientAvecSujetNonHumain.subject.relatedSubject.code
* group[=].element[=].target.code = #Substance.code
* group[=].element[=].target.equivalence = #equivalent
// Catégorie du sujet non humain (substance.category)
* group[=].element[+].code = #FRCDAPatientAvecSujetNonHumain.subject.relatedSubject.code.qualifier.value
* group[=].element[=].target.code = #Substance.category
* group[=].element[=].target.equivalence = #equivalent
