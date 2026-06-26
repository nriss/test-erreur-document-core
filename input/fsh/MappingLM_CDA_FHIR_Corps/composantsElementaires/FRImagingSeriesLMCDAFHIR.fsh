Instance: FRImagingSeriesLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMSerieImagerie → FRCDADICOMSerieImagerie → FRImagingStudyDocument"
Description: "Mapping des éléments du modèle métier FRLMSerieImagerie vers le profil CDA FRCDADICOMSerieImagerie, puis vers le profil FHIR FRImagingStudyDocument."
* title = "Mapping Métier/CDA/FHIR : \"Série d'imagerie\""
* status = #draft

// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-serie-imagerie"    
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-dicom-serie-imagerie"
// Élément racine
* group[=].element[+].code = #FRLMSerieImagerie
* group[=].element[=].target.code = #FRCDADICOMSerieImagerie
* group[=].element[=].target.equivalence = #equivalent
// Identifiant de la série
* group[=].element[+].code = #FRLMSerieImagerie.uuidSerie
* group[=].element[=].target.code = #FRCDADICOMSerieImagerie.id
* group[=].element[=].target.equivalence = #equivalent
// Code de la série
* group[=].element[+].code = #FRLMSerieImagerie.code
* group[=].element[=].target.code = #FRCDADICOMSerieImagerie.code
* group[=].element[=].target.equivalence = #equivalent
// Description de la série
* group[=].element[+].code = #FRLMSerieImagerie.description
* group[=].element[=].target.code = #FRCDADICOMSerieImagerie.text
* group[=].element[=].target.equivalence = #equivalent
// Date de la série d'actes
* group[=].element[+].code = #FRLMSerieImagerie.date
* group[=].element[=].target.code = #FRCDADICOMSerieImagerie.effectiveTime
* group[=].element[=].target.equivalence = #equivalent
// SOP instance
* group[=].element[+].code = #FRLMSerieImagerie.instanceSOP
* group[=].element[=].target.code = #FRCDADICOMSerieImagerie.entryRelationship:frDICOMSOPInstanceObservation
* group[=].element[=].target.equivalence = #equivalent
// Référence WADO
* group[=].element[+].code = #FRLMSerieImagerie.referenceWado
* group[=].element[=].target.code = #FRCDADICOMSerieImagerie.entryRelationship:frDICOMSOPInstanceObservation.text
* group[=].element[=].target.equivalence = #equivalent
// IHE Invoke Image Display
* group[=].element[+].code = #FRLMSerieImagerie.referenceWado.iHEInvokeImage
* group[=].element[=].target.code = #FRCDADICOMSerieImagerie.entryRelationship:frDICOMSOPInstanceObservation.text.reference
* group[=].element[=].target.equivalence = #equivalent
// Référence WADO URI
* group[=].element[+].code = #FRLMSerieImagerie.referenceWado.reference
* group[=].element[=].target.code = #FRCDADICOMSerieImagerie.entryRelationship:frDICOMSOPInstanceObservation.text.reference
* group[=].element[=].target.equivalence = #equivalent
// Type de media
* group[=].element[+].code = #FRLMSerieImagerie.referenceWado.typeMedia
* group[=].element[=].target.code = #FRCDADICOMSerieImagerie.entryRelationship:frDICOMSOPInstanceObservation.text.mediaType
* group[=].element[=].target.equivalence = #equivalent

// Groupe Mapping 2 : CDA → FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-dicom-serie-imagerie"    
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-imaging-study-document"
// Élément racine
* group[=].element[+].code = #FRCDADICOMSerieImagerie
* group[=].element[=].target.code = #FRImagingStudyDocument.series
* group[=].element[=].target.equivalence = #equivalent
// identifiant de la série
* group[=].element[+].code = #FRCDADICOMSerieImagerie.id
* group[=].element[=].target.code = #FRImagingStudyDocument.series.uid
* group[=].element[=].target.equivalence = #equivalent
// Code de la série (pas de mapping possible car FRImagingStudyDocument.series.code n'existe pas)
* group[=].element[+].code = #FRCDADICOMSerieImagerie.code
* group[=].element[=].target.equivalence = #unmatched
* group[=].element[=].target.comment = "FRImagingStudyDocument.series ne possède pas d'élément 'code' pour mapper cette donnée."
// Description de la série
* group[=].element[+].code = #FRCDADICOMSerieImagerie.text
* group[=].element[=].target.code = #FRImagingStudyDocument.series.description
* group[=].element[=].target.equivalence = #equivalent
// Date de la série d'actes
* group[=].element[+].code = #FRCDADICOMSerieImagerie.effectiveTime
* group[=].element[=].target.code = #FRImagingStudyDocument.series.started
* group[=].element[=].target.equivalence = #equivalent
// SOP instance
* group[=].element[+].code = #FRCDADICOMSerieImagerie.entryRelationship:frDICOMSOPInstanceObservation
* group[=].element[=].target.code = #FRImagingStudyDocument.series.instance
* group[=].element[=].target.equivalence = #equivalent
// Référence WADO
* group[=].element[+].code = #FRCDADICOMSerieImagerie.entryRelationship:frDICOMSOPInstanceObservation.text
* group[=].element[=].target.code = #FRImagingStudyDocument.series.endpoint
* group[=].element[=].target.equivalence = #equivalent
// IHE Invoke Image Display
* group[=].element[+].code = #FRCDADICOMSerieImagerie.entryRelationship:frDICOMSOPInstanceObservation.text.reference
* group[=].element[=].target.code = #FRImagingStudyDocument.series.endpoint.connectionType
* group[=].element[=].target.equivalence = #equivalent
// Référence WADO URI
* group[=].element[+].code = #FRCDADICOMSerieImagerie.entryRelationship:frDICOMSOPInstanceObservation.text.reference
* group[=].element[=].target.code = #FRImagingStudyDocument.series.endpoint.address
* group[=].element[=].target.equivalence = #equivalent
// Type de media
* group[=].element[+].code = #FRCDADICOMSerieImagerie.entryRelationship:frDICOMSOPInstanceObservation.text.mediaType
* group[=].element[=].target.code = #FRImagingStudyDocument.series.endpoint.payloadMimeType
* group[=].element[=].target.equivalence = #equivalent
