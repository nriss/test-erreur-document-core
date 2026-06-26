Instance: FRSectionImagingServiceRequestLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMDemandeExamenImagerie → FRCDADICOMDemandeExamen → FRServiceRequestDocument"
Description: "Mapping des éléments du modèle métier FRLMDemandeExamenImagerie vers la section CDA FRCDADICOMDemandeExamen puis vers le profil FHIR FRCompositionDocument.section:serviceRequest."
* title = "Mapping Métier/CDA/FHIR : Demande d'examen d'imagerie"
* status = #draft

// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-demande-examen-imagerie"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-dicom-demande-examen"
// élément racine (section Demande d'examen d'imagerie non codée)
* group[=].element[+].code = #FRLMDemandeExamenImagerie
* group[=].element[=].target.code = #FRCDADICOMDemandeExamen
* group[=].element[=].target.equivalence = #equivalent
// titre de la section non codée
* group[=].element[+].code = #FRLMDemandeExamenImagerie.titreSection
* group[=].element[=].target.code = #FRCDADICOMDemandeExamen.title
* group[=].element[=].target.equivalence = #equivalent
// bloc narratif :  finalité d'examen et justification de la demande 
* group[=].element[+].code = #FRLMDemandeExamenImagerie.blocNarratif
* group[=].element[=].target.code = #FRCDADICOMDemandeExamen.text
* group[=].element[=].target.equivalence = #equivalent

// Groupe Mapping 2 : CDA → FHIR ServiceRequestDocument
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-dicom-demande-examen"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-composition-document"
// Élément racine
// le slicing sur la section section:serviceRequest sera fait dans l'IG spécifique au volet imagerie
* group[=].element[+].code = #FRCDADICOMDemandeExamen
* group[=].element[=].target.code = #FRCompositionDocument.section:serviceRequest.FRServiceRequestDocument
* group[=].element[=].target.equivalence = #equivalent
// Titre de la section
* group[=].element[+].code = #FRCDADICOMDemandeExamen.title
* group[=].element[=].target.code = #FRCompositionDocument.section:serviceRequest.title
* group[=].element[=].target.equivalence = #equivalent
// finalité d'examen
* group[=].element[+].code = #FRCDADICOMDemandeExamen.text
* group[=].element[=].target.code = #FRCompositionDocument.section:serviceRequest.FRServiceRequestDocument.note:finaliteExamen
* group[=].element[=].target.equivalence = #equivalent
// justification de la demande
* group[=].element[+].code = #FRCDADICOMDemandeExamen.text
* group[=].element[=].target.code = #FRCompositionDocument.section:serviceRequest.FRServiceRequestDocument.note:justificationDemande
* group[=].element[=].target.equivalence = #equivalent