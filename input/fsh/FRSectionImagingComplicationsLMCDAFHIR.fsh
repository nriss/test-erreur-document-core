Instance: FRSectionImagingComplicationsLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMComplicationsActe → FRCDADICOMComplications → FRProcedureImagingDocument.complication.text"
Description: "Mapping des éléments du modèle métier FRLMComplicationsActe vers la section CDA FRCDADICOMComplications, puis vers le champ 'complication.text' du profil FHIR FRProcedureImagingDocument."
* title = "Mapping Métier/CDA/FHIR : \"Complications survenues au cours de l'acte d'imagerie\""
* status = #draft

// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-complications-acte"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-dicom-complications"
// Élément racine
* group[=].element[+].code = #FRLMComplicationsActe
* group[=].element[=].target.code = #FRCDADICOMComplications
* group[=].element[=].target.equivalence = #equivalent
// code de la section
* group[=].element[+].code = #FRLMComplicationsActe.codeSection
* group[=].element[=].target.code = #FRCDADICOMComplications.code
* group[=].element[=].target.equivalence = #equivalent
// Description narrative des complications
* group[=].element[+].code = #FRLMComplicationsActe.blocNarratif
* group[=].element[=].target.code = #FRCDADICOMComplications.text
* group[=].element[=].target.equivalence = #equivalent
// titre de la section
* group[=].element[+].code = #FRLMComplicationsActe.titreSection
* group[=].element[=].target.code = #FRCDADICOMComplications.title
* group[=].element[=].target.equivalence = #equivalent
// la section FRDICOMCDAComplications est non codée en CDA, il n'y a pas de mapping pour les éléments entrée et sousSection.

// Groupe Mapping 2 : CDA → FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-dicom-complications"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-procedure-imaging-document"
// Élément racine
* group[=].element[+].code = #FRCDADICOMComplications
* group[=].element[=].target.code = #FRProcedureImagingDocument.complication.text
* group[=].element[=].target.equivalence = #equivalent