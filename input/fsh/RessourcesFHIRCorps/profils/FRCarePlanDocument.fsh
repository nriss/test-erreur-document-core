Profile: FRCarePlanDocument
Parent: CarePlan
Id: fr-care-plan-document
Title: "CarePlan - FR Care Plan Document"
Description: "FRCarePlanDocument est un profil permettant d’enregistrer une référence à un traitement dans un plan de traitement."

//* ^extension[$imposeProfile].valueCanonical = Canonical()

* identifier 1..* MS
  * ^short = "Identifiant de la ligne de traitement dans un plan de traitement."
* category 1..1 MS
  * ^short = "Code indiquant que la référence est une ligne de traitement dans un plan de traitement."
// Utilisation de l'OID IHE (urn:oid:1.3.6.1.4.1.19376.1.9.2.2) car aucune URL canonique FHIR n'a été publiée pour le CodeSystem IHE correspondant (IHE Pharmacy Item Type List). L'OID est l'identifiant standardisé pour ce CodeSystem.
// Référence: IHE Pharmacy Item Type List - https://www.ihe.net/resources/pharmacy/
* category.coding 1..1
* category.coding = urn:oid:1.3.6.1.4.1.19376.1.9.2.2#MTPItem "Ligne dans un plan de traitement"
* activity.detail.product[x] MS
* activity.detail.product[x] only CodeableConcept or Reference(FRMedicationDocument)
  * ^short = "Produit de santé"
* author MS
//Item d'un plan de traitement. Copie non modifiée de la ligne de traitement référencée
// Chaque activity doit référencer un MedicationRequest (ligne de traitement)
* activity.reference MS
* activity.reference only Reference(FRMedicationRequestDocument)