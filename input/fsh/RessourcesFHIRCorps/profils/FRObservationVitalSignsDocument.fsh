// Une étude sera à faire pour aligner les profils de signes vitaux avec mesures de santé - https://interop.esante.gouv.fr/ig/fhir/mesures/


Profile: FRObservationVitalSignsDocument
Parent: http://hl7.org/fhir/StructureDefinition/vitalsigns
Id: fr-observation-vital-signs-document
Title: "Observation - FR Observation Vital Signs Document"
Description: "
 - FRObservationVitalSignsDocument permet d'indiquer les informations détaillées relatives à une mesure clinique spécifique.
 - Il est basée sur la ressource Observation qu'elle spécialise en portant des contraintes sur les vocabulaires des éléments 'code' et 'value'."

//* ^extension[$imposeProfile].valueCanonical = Canonical()
* identifier 1..1  MS
* identifier ^short = "Identifiant"
* code MS 
* code ^short = "Signe vital observé"
* code from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-signe-vital-cisis
* status MS
* status ^short = "Statut de l'observation"
* status = #final
* effective[x] only dateTime
* effectiveDateTime MS
  * ^short = "Date de l'observation"
* interpretation MS 
  * ^short = "Interprétation"
* interpretation from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-hl7-v3-ObservationInterpretation-cisis
* method MS 
  * ^short = "Méthode utilisée pour l'observation"
* bodySite ^short = "Site de l'observation"
* bodySite from http://hl7.org/fhir/ValueSet/body-site (extensible)
* performer 0..1 MS
* performer.extension contains FRActorExtension named author 0..*
* performer.extension[author] ^short = "Auteur de l’observation"
* performer.extension[author].extension[type].valueCode = #AUT
* performer.extension[author].extension[actor].valueReference only Reference(
    FRPractitionerRoleDocument
    or FROrganizationDocument
    or FRPractitionerRoleDocument
    or FRPatientINSDocument
    )
    
* component.value[x] only Quantity
* component.valueQuantity 1..1 MS
* component.valueQuantity from  http://terminology.hl7.org/ValueSet/ucum-units (required)
  * ^short = "Valeur quantitative du signe vital"