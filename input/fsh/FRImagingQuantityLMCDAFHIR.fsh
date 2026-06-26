Instance: FRImagingQuantityLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping Métier/CDA/FHIR : Quantité d'exposition aux radiations"
Description: "Mapping des éléments du modèle métier FRLMQuantiteExposition vers l'entrée CDA FRCDADICOMQuantite puis vers le composant FHIR FRObservationRadiationExposureDocument.component."
* title = "Mapping Métier/CDA/FHIR : Quantité d'exposition aux radiations"
* status = #draft
// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-quantite-exposition"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-dicom-quantite"
// Élément racine
* group[=].element[+].code = #FRLMQuantiteExposition
* group[=].element[=].target.code = #FRCDADICOMQuantite
* group[=].element[=].target.equivalence = #equivalent
// type de la mesure
* group[=].element[+].code = #FRLMQuantiteExposition.code
* group[=].element[=].target.code = #FRCDADICOMQuantite.code
* group[=].element[=].target.equivalence = #equivalent
// valeur
* group[=].element[+].code = #FRLMQuantiteExposition.valeur
* group[=].element[=].target.code = #FRCDADICOMQuantite.value
* group[=].element[=].target.equivalence = #equivalent
// latéralité
* group[=].element[+].code = #FRLMQuantiteExposition.lateralite
* group[=].element[=].target.code = #FRCDADICOMQuantite.targetSiteCode
* group[=].element[=].target.equivalence = #equivalent
// précision topographique
* group[=].element[+].code = #FRLMQuantiteExposition.lateralite.topographique
* group[=].element[=].target.code = #FRCDADICOMQuantite.targetSiteCode.qualifier
* group[=].element[=].target.equivalence = #equivalent
// valeur de la précision topographique
* group[=].element[+].code = #FRLMQuantiteExposition.lateralite.topographique.valeur
* group[=].element[=].target.code = #FRCDADICOMQuantite.targetSiteCode.qualifier.value
* group[=].element[=].target.equivalence = #equivalent

// Groupe Mapping 2 : CDA → FHIR ObservationRadiationExposureDocument.component
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-dicom-quantite"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-observation-radiation-exposure-document"
// Élément racine
* group[=].element[+].code = #FRCDADICOMQuantite
* group[=].element[=].target.code = #FRObservationRadiationExposureDocument.component
* group[=].element[=].target.equivalence = #equivalent
// type de la mesure de la quantité d'exposition
* group[=].element[+].code = #FRCDADICOMQuantite.code
* group[=].element[=].target.code = #FRCompositionDocument.section:radiationExposure.FRObservationRadiationExposureDocument.component.code
* group[=].element[=].target.equivalence = #equivalent
// valeur de la mesure de la quantité d'exposition
* group[=].element[+].code = #FRCDADICOMQuantite.value
* group[=].element[=].target.code = #FRCompositionDocument.section:radiationExposure.FRObservationRadiationExposureDocument.component.valueQuantity
* group[=].element[=].target.equivalence = #equivalent
// localisation anatomique de l'exposition
* group[=].element[+].code = #FRCDADICOMQuantite.targetSiteCode
* group[=].element[=].target.code = #FRCompositionDocument.section:radiationExposure.FRObservationRadiationExposureDocument.bodySite
* group[=].element[=].target.equivalence = #equivalent
// précision topographique de la localisation anatomique
* group[=].element[+].code = #FRCDADICOMQuantite.targetSiteCode.qualifier
* group[=].element[=].target.code = #FRCompositionDocument.section:radiationExposure.FRObservationRadiationExposureDocument.bodySite.extension:precisionTopographique
* group[=].element[=].target.equivalence = #equivalent
// valeur de la précision topographique
* group[=].element[+].code = #FRCDADICOMQuantite.targetSiteCode.qualifier.value
* group[=].element[=].target.code = #FRCompositionDocument.section:radiationExposure.FRObservationRadiationExposureDocument.bodySite.extension:precisionTopographique.locationQualifier
* group[=].element[=].target.equivalence = #equivalent