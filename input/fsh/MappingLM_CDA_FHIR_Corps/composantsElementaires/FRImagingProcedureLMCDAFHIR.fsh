Instance: FRImagingProcedureLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMTechniqueImagerie → FRCDADICOMTechniqueImagerie → FRProcedureImagingDocument"
Description: "Mapping des éléments du modèle métier FRLMTechniqueImagerie vers le profil CDA FRCDADICOMTechniqueImagerie, puis vers le profil FHIR FRProcedureImagingDocument."
* title = "Mapping Métier/CDA/FHIR : \"Technique imagerie\""
* status = #draft

// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-technique-imagerie"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-dicom-technique-imagerie"
// Élément racine
* group[=].element[+].code = #FRLMTechniqueImagerie
* group[=].element[=].target.code = #FRCDADICOMTechniqueImagerie
* group[=].element[=].target.equivalence = #equivalent
// Identifiant de l'observation
* group[=].element[+].code = #FRLMTechniqueImagerie.identifiant
* group[=].element[=].target.code = #FRCDADICOMTechniqueImagerie.id
* group[=].element[=].target.equivalence = #equivalent
// Code de l'acte d'imagerie
* group[=].element[+].code = #FRLMTechniqueImagerie.codeActe
* group[=].element[=].target.code = #FRCDADICOMTechniqueImagerie.code
* group[=].element[=].target.equivalence = #equivalent
// Partie narrative de l'observation
* group[=].element[+].code = #FRLMTechniqueImagerie.description
* group[=].element[=].target.code = #FRCDADICOMTechniqueImagerie.text
* group[=].element[=].target.equivalence = #equivalent
// Date de l'acte
* group[=].element[+].code = #FRLMTechniqueImagerie.date
* group[=].element[=].target.code = #FRCDADICOMTechniqueImagerie.effectiveTime
* group[=].element[=].target.equivalence = #equivalent
// Modalité d’acquisition
* group[=].element[+].code = #FRLMTechniqueImagerie.modaliteAcquisition
* group[=].element[=].target.code = #FRCDADICOMTechniqueImagerie.methodCode
* group[=].element[=].target.equivalence = #equivalent
// Latéralité et topographie
* group[=].element[+].code = #FRLMTechniqueImagerie.lateralite
* group[=].element[=].target.code = #FRCDADICOMTechniqueImagerie.targetSiteCode
* group[=].element[=].target.equivalence = #equivalent
// Précision topographique
* group[=].element[+].code = #FRLMTechniqueImagerie.lateralite.precisionTopographique
* group[=].element[=].target.code = #FRCDADICOMTechniqueImagerie.targetSiteCode.qualifier
* group[=].element[=].target.equivalence = #equivalent
// Participant
* group[=].element[+].code = #FRLMTechniqueImagerie.participant
* group[=].element[=].target.code = #FRCDADICOMTechniqueImagerie.participant
* group[=].element[=].target.equivalence = #equivalent

// Groupe Mapping 3 : CDA → FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-dicom-technique-imagerie"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-procedure-imaging-document"
// Élément racine
* group[=].element[+].code = #FRCDADICOMTechniqueImagerie
* group[=].element[=].target.code = #FRProcedureImagingDocument
* group[=].element[=].target.equivalence = #equivalent
// Identifiant de l'observation
* group[=].element[+].code = #FRCDADICOMTechniqueImagerie.id
* group[=].element[=].target.code = #FRProcedureImagingDocument.identifier
* group[=].element[=].target.equivalence = #equivalent
// Code de l'acte d'imagerie
* group[=].element[+].code = #FRCDADICOMTechniqueImagerie.code
* group[=].element[=].target.code = #FRProcedureImagingDocument.code
* group[=].element[=].target.equivalence = #equivalent
// Partie narrative de l'observation
* group[=].element[+].code = #FRCDADICOMTechniqueImagerie.text
* group[=].element[=].target.code = #FRProcedureImagingDocument.note
* group[=].element[=].target.equivalence = #equivalent
// Date de l'acte
* group[=].element[+].code = #FRCDADICOMTechniqueImagerie.effectiveTime
* group[=].element[=].target.code = #FRProcedureImagingDocument.performed[x]
* group[=].element[=].target.equivalence = #equivalent
// Modalité d’acquisition
* group[=].element[+].code = #FRCDADICOMTechniqueImagerie.methodCode
* group[=].element[=].target.equivalence = #unmatched
* group[=].element[=].target.comment = "Pas de correspondance directe dans FRProcedureImagingDocument pour la modalité d’acquisition. Cette donnée est incluse dans le profil FRImagingStudyDocument.modality."
// Latéralité et topographie
* group[=].element[+].code = #FRCDADICOMTechniqueImagerie.targetSiteCode
* group[=].element[=].target.code = #FRProcedureImagingDocument.bodySite
* group[=].element[=].target.equivalence = #equivalent
// Précision topographique
* group[=].element[+].code = #FRCDADICOMTechniqueImagerie.targetSiteCode.qualifier
* group[=].element[=].target.equivalence = #FRProcedureImagingDocument.bodySite.extension:precisionTopographique
* group[=].element[=].target.equivalence = #equivalent
// Participant
* group[=].element[+].code = #FRCDADICOMTechniqueImagerie.participant
* group[=].element[=].target.equivalence = #FRProcedureImagingDocument.performer:participant.actor
* group[=].element[=].target.equivalence = #equivalent