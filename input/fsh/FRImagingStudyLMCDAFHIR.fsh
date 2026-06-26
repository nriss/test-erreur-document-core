Instance: FRImagingStudyLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMExamenImagerie → FRCDADICOMExamenImagerie → FRImagingStudyDocument"
Description: "Mapping des éléments du modèle métier FRLMExamenImagerie vers le profil CDA FRCDADICOMExamenImagerie, puis vers le profil FHIR FRImagingStudyDocument."
* title = "Mapping Métier/CDA/FHIR : \"Examen d'imagerie\""
* status = #draft

// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-examen-imagerie"    
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-dicom-examen-imagerie"

// Élément racine
* group[=].element[+].code = #FRLMExamenImagerie
* group[=].element[=].target.code = #FRCDADICOMExamenImagerie
* group[=].element[=].target.equivalence = #equivalent
// Identifiant
* group[=].element[+].code = #FRLMExamenImagerie.uuidInstanceExamen
* group[=].element[=].target.code = #FRCDADICOMExamenImagerie.id
* group[=].element[=].target.equivalence = #equivalent
// Code de l'acte
* group[=].element[+].code = #FRLMExamenImagerie.codeActe
* group[=].element[=].target.code = #FRCDADICOMExamenImagerie.code
* group[=].element[=].target.equivalence = #equivalent
// Description narrative de l'entrée
* group[=].element[+].code = #FRLMExamenImagerie.description
* group[=].element[=].target.code = #FRCDADICOMExamenImagerie.text
* group[=].element[=].target.equivalence = #equivalent
// Date de l'acte
* group[=].element[+].code = #FRLMExamenImagerie.dateActe
* group[=].element[=].target.code = #FRCDADICOMExamenImagerie.effectiveTime
* group[=].element[=].target.equivalence = #equivalent
// Série d'imagerie
* group[=].element[+].code = #FRLMExamenImagerie.serieImagerie
* group[=].element[=].target.code = #FRCDADICOMExamenImagerie.entryRelationship:frDICOMSerieImagerie
* group[=].element[=].target.equivalence = #equivalent
// Objectifs de référence
* group[=].element[+].code = #FRLMExamenImagerie.objectifsReferences
* group[=].element[=].target.code = #FRCDADICOMExamenImagerie.entryRelationship:frDICOMSerieImagerie.entryRelationship:frDICOMSOPInstanceObservation.entryRelationship:frDICOMObjectifsDeReference
* group[=].element[=].target.equivalence = #equivalent

// Groupe Mapping 2 : CDA → FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-dicom-examen-imagerie"    
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-imaging-study-document"
// Élément racine
* group[=].element[+].code = #FRCDADICOMExamenImagerie
* group[=].element[=].target.code = #FRImagingStudyDocument
* group[=].element[=].target.equivalence = #equivalent
// Identifiant
* group[=].element[+].code = #FRCDADICOMExamenImagerie.id
* group[=].element[=].target.code = #FRImagingStudyDocument.identifier:studyInstanceUid
* group[=].element[=].target.equivalence = #equivalent
// Code de l'examen (pas de mapping possible car FRImagingStudyDocument.code n'existe pas)
* group[=].element[+].code = #FRCDADICOMExamenImagerie.code
* group[=].element[=].target.equivalence = #unmatched
* group[=].element[=].target.comment = "FRImagingStudyDocument ne possède pas d'élément 'code' pour mapper cette donnée."

// Description narrative de l'examen
* group[=].element[+].code = #FRCDADICOMExamenImagerie.text
* group[=].element[=].target.code = #FRImagingStudyDocument.description
* group[=].element[=].target.equivalence = #equivalent
// Date de l'examen
* group[=].element[+].code = #FRCDADICOMExamenImagerie.effectiveTime
* group[=].element[=].target.code = #FRImagingStudyDocument.started
* group[=].element[=].target.equivalence = #equivalent
// série
* group[=].element[+].code = #FRCDADICOMExamenImagerie.entryRelationship:frDICOMSerieImagerie
* group[=].element[=].target.code = #FRImagingStudyDocument.series
* group[=].element[=].target.equivalence = #equivalent
// Objectifs de référence
* group[=].element[+].code = #FRCDADICOMExamenImagerie.entryRelationship:frDICOMSerieImagerie.entryRelationship:frDICOMSOPInstanceObservation.entryRelationship:frDICOMObjectifsDeReference
* group[=].element[=].target.code = #FRImagingStudyDocument.reasonCode
* group[=].element[=].target.equivalence = #equivalent