Instance: FRObservationLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMObservation -> FRCDASimpleObservation -> Observation"
Description: "Mapping des éléments du modele metier FRLMObservation vers le profil CDA FRCDASimpleObservation, puis vers le profil FHIR Observation."
* title = "Mapping Metier/CDA/FHIR : \"Observation\""
* status = #draft

// Groupe Mapping 1 : modele metier -> CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-observation"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-simple-observation"
// Element racine
* group[=].element[+].code = #FRLMObservation
* group[=].element[=].target.code = #FRCDASimpleObservation
* group[=].element[=].target.equivalence = #equivalent
// Identifiant de l'observation
* group[=].element[+].code = #FRLMObservation.observationIdentifiant
* group[=].element[=].target.code = #FRCDASimpleObservation.id
* group[=].element[=].target.equivalence = #equivalent
// Code de l'observation
* group[=].element[+].code = #FRLMObservation.observationCode
* group[=].element[=].target.code = #FRCDASimpleObservation.code
* group[=].element[=].target.equivalence = #equivalent
// Description narrative de l'observation
* group[=].element[+].code = #FRLMObservation.observationDescription
* group[=].element[=].target.code = #FRCDASimpleObservation.text
* group[=].element[=].target.equivalence = #equivalent
// Statut de l'observation
* group[=].element[+].code = #FRLMObservation.observationStatut
* group[=].element[=].target.code = #FRCDASimpleObservation.statusCode
* group[=].element[=].target.equivalence = #equivalent
// Date de l'observation
* group[=].element[+].code = #FRLMObservation.observationDate
* group[=].element[=].target.code = #FRCDASimpleObservation.effectiveTime
* group[=].element[=].target.equivalence = #equivalent
// Valeur de l'observation
* group[=].element[+].code = #FRLMObservation.observationResultat
* group[=].element[=].target.code = #FRCDASimpleObservation.value
* group[=].element[=].target.equivalence = #equivalent
// Interpretation
* group[=].element[+].code = #FRLMObservation.observationInterpretation
* group[=].element[=].target.code = #FRCDASimpleObservation.interpretationCode
* group[=].element[=].target.equivalence = #equivalent
// Methode
* group[=].element[+].code = #FRLMObservation.observationMethode
* group[=].element[=].target.code = #FRCDASimpleObservation.methodCode
* group[=].element[=].target.equivalence = #equivalent
// Localisation anatomique
* group[=].element[+].code = #FRLMObservation.observationLocalisationAnatomique
* group[=].element[=].target.code = #FRCDASimpleObservation.targetSiteCode
* group[=].element[=].target.equivalence = #equivalent
// Auteur
* group[=].element[+].code = #FRLMObservation.observationAuteur
* group[=].element[=].target.code = #FRCDASimpleObservation.author
* group[=].element[=].target.equivalence = #equivalent
// Nombre de renouvellements
* group[=].element[+].code = #FRLMObservation.observationNombreRenouvellements
* group[=].element[=].target.code = #FRCDASimpleObservation.repeatNumber
* group[=].element[=].target.equivalence = #equivalent

// Groupe Mapping 2 : CDA -> FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-simple-observation"
* group[=].target = "http://hl7.org/fhir/R4/StructureDefinition/Observation"
// Element racine
* group[=].element[+].code = #FRCDASimpleObservation
* group[=].element[=].target.code = #Observation
* group[=].element[=].target.equivalence = #equivalent
// Identifiant
* group[=].element[+].code = #FRCDASimpleObservation.id
* group[=].element[=].target.code = #Observation.identifier
* group[=].element[=].target.equivalence = #equivalent
// Code
* group[=].element[+].code = #FRCDASimpleObservation.code
* group[=].element[=].target.code = #Observation.code
* group[=].element[=].target.equivalence = #equivalent
// Description narrative
* group[=].element[+].code = #FRCDASimpleObservation.text
* group[=].element[=].target.code = #Observation.note
* group[=].element[=].target.equivalence = #equivalent
// Statut
* group[=].element[+].code = #FRCDASimpleObservation.statusCode
* group[=].element[=].target.code = #Observation.status
* group[=].element[=].target.equivalence = #equivalent
// Date de l'observation
* group[=].element[+].code = #FRCDASimpleObservation.effectiveTime
* group[=].element[=].target.code = #Observation.effective[x]
* group[=].element[=].target.equivalence = #equivalent
// Valeur de l'observation
* group[=].element[+].code = #FRCDASimpleObservation.value
* group[=].element[=].target.code = #Observation.value[x]
* group[=].element[=].target.equivalence = #equivalent
// Interpretation
* group[=].element[+].code = #FRCDASimpleObservation.interpretationCode
* group[=].element[=].target.code = #Observation.interpretation
* group[=].element[=].target.equivalence = #equivalent
// Methode
* group[=].element[+].code = #FRCDASimpleObservation.methodCode
* group[=].element[=].target.code = #Observation.method
* group[=].element[=].target.equivalence = #equivalent
// Localisation anatomique
* group[=].element[+].code = #FRCDASimpleObservation.targetSiteCode
* group[=].element[=].target.code = #Observation.bodySite
* group[=].element[=].target.equivalence = #equivalent
// Auteur
* group[=].element[+].code = #FRCDASimpleObservation.author
* group[=].element[=].target.code = #Observation.performer
* group[=].element[=].target.equivalence = #equivalent
