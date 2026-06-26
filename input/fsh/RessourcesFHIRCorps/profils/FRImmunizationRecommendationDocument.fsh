Profile: FRImmunizationRecommendationDocument
Parent: ImmunizationRecommendation
Id: fr-immunization-recommendation-document
Title: "ImmunizationRecommendation - FR Immunization Recommendation Document"
Description: "FRImmunizationRecommendationDocument permet de décrire une vaccination prévue ou proposée.
 - Une vaccination proposée est une proposition qui est utilisée dans la prise de décisions (elle peut apparaître comme une contribution ou un résultat provenant de l'aide à la décision clinique). 
 - Une vaccination prévue dépend d'un plan accepté et à venir.
 - Ce profil hérite de la structuration, des contraintes et des vocabulaires définis dans le profil FRVaccinationDocument."

//* ^extension[$imposeProfile].valueCanonical = Canonical()
* identifier 1..1 MS
* identifier ^short = "Identifiant"

* recommendation 1..1
  * forecastStatus = #complete
  * dateCriterion 1..1 
    * value ^short = "Période de vaccination souhaitable"
  // produit de santé
  * vaccineCode.coding ^slicing.discriminator.type = #value
  * vaccineCode.coding ^slicing.discriminator.path = "system"
  * vaccineCode.coding ^slicing.rules = #open
  * vaccineCode.coding ^slicing.description = "Slice CIS et autres codifications"

  * vaccineCode MS
  * vaccineCode ^short = "Vaccin. Code du produit de santé"
  // Slice CIS obligatoire
  * vaccineCode.coding contains cis 1..1
  * vaccineCode.coding[cis] from FRValueSetVaccineCodeCISDocument (required)

  // Slice (autres codifications)
  * vaccineCode.coding contains translation 0..*
  * vaccineCode.coding[translation] from FRValueSetMedicationTranslationDocument (required)
  * vaccineCode.coding[translation].system 1..1

 // Référence vers le profil FRVaccinationDocument
  * supportingImmunization only Reference(FRImmunizationDocument)
  // Rang de la vaccination
  * seriesDosesPositiveInt MS
  // ou utilisation de l'extesion FHIR : Note  http://hl7.org/fhir/StructureDefinition/note?
  * description MS
    * ^short = "Commentaire"

  * supportingPatientInformation only Reference(FRMedicationRequestDocument)
  * supportingPatientInformation ^short = "Prescription"