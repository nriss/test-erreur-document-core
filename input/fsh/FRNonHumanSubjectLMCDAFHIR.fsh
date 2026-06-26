Instance: FRNonHumanSubjectLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMSujetNonHumain -> FRCDASujetNonHumain -> FRObservationLaboratoryReportResultsDocument"
Description: "Mapping des éléments du modele metier FRLMSujetNonHumain vers l'element CDA FRCDASujetNonHumain, puis vers les ressources FHIR Observation/Specimen/Substance."
* title = "Mapping Metier/CDA/FHIR : \"Sujet non humain\""
* status = #draft

// Groupe Mapping 1 : modele metier -> CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-sujet-non-humain"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-sujet-non-humain"
// Element racine
* group[=].element[+].code = #FRLMSujetNonHumain
* group[=].element[=].target.code = #FRCDASujetNonHumain
* group[=].element[=].target.equivalence = #equivalent
// Sujet (non humain)
* group[=].element[+].code = #FRLMSujetNonHumain.sujet
* group[=].element[=].target.code = #FRCDASujetNonHumain.subject.relatedSubject.code
* group[=].element[=].target.equivalence = #equivalent
// Adresse (lieu de provenance)
* group[=].element[+].code = #FRLMSujetNonHumain.adresse
* group[=].element[=].target.code = #FRCDASujetNonHumain.subject.relatedSubject.addr
* group[=].element[=].target.equivalence = #equivalent

// Groupe Mapping 2 : CDA -> FHIR (Sujet non humain CDA --> Specimen FHIR)
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-sujet-non-humain"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-observation-laboratory-report-results-document"
// Sujet non humain (specimen)
* group[=].element[+].code = #FRCDASujetNonHumain
* group[=].element[=].target.code = #FRObservationLaboratoryReportResultsDocument.specimen
* group[=].element[=].target.equivalence = #equivalent
// Substance du sujet non humain
* group[=].element[+].code = #FRCDASujetNonHumain.subject.relatedSubject.code
* group[=].element[=].target.code = #FRObservationLaboratoryReportResultsDocument.specimen.subject:Substance
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "specimen.subject = Reference(Substance)."

// Groupe Mapping 3 : CDA -> FHIR (Sujet non humain CDA --> Substance FHIR)
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-sujet-non-humain"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/substance"
// Sujet non humain (substance.code)
* group[=].element[+].code = #FRCDASujetNonHumain.subject.relatedSubject.code
* group[=].element[=].target.code = #Substance.code
* group[=].element[=].target.equivalence = #equivalent
// Catégorie du sujet non humain (substance.category)
* group[=].element[+].code = #FRCDASujetNonHumain.subject.relatedSubject.code.qualifier.value
* group[=].element[=].target.code = #Substance.category
* group[=].element[=].target.equivalence = #equivalent