Instance: FRSectionImagingConclusionLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMConclusionExamenImagerie → FRCDADICOMConclusion → FRDiagnosticReportImagingDocument.conclusion"
Description: "Mapping des éléments du modèle métier FRLMConclusionExamenImagerie vers la section CDA FRCDADICOMConclusion, puis vers le champ 'conclusion' du profil FHIR FRDiagnosticReportImagingDocument."
* title = "Mapping Métier/CDA/FHIR : \"Conclusion de l'examen d'imagerie\""
* status = #draft

// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-conclusion-examen-imagerie"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-dicom-conclusion"   
// Élément racine
* group[=].element[+].code = #FRLMConclusionExamenImagerie
* group[=].element[=].target.code = #FRCDADICOMConclusion
* group[=].element[=].target.equivalence = #equivalent
// code de la section
* group[=].element[+].code = #FRLMConclusionExamenImagerie.codeSection
* group[=].element[=].target.code = #FRCDADICOMConclusion.code
* group[=].element[=].target.equivalence = #equivalent
// Description narrative de la conclusion
* group[=].element[+].code = #FRLMConclusionExamenImagerie.blocNarratif
* group[=].element[=].target.code = #FRCDADICOMConclusion.text
* group[=].element[=].target.equivalence = #equivalent
// titre de la section
* group[=].element[+].code = #FRLMConclusionExamenImagerie.titreSection
* group[=].element[=].target.code = #FRCDADICOMConclusion.title
* group[=].element[=].target.equivalence = #equivalent
// la section FRDICOMCDAConclusion est non codée en CDA, il n'y a pas de mapping pour les éléments entrée et sousSection.

// Groupe Mapping 2 : CDA → FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-dicom-conclusion"   
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-diagnostic-report-imaging-document"
// Élément racine
* group[=].element[+].code = #FRCDADICOMConclusion
* group[=].element[=].target.code = #FRDiagnosticReportImagingDocument.conclusion
* group[=].element[=].target.equivalence = #equivalent