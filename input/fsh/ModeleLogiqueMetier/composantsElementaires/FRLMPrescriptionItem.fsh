Logical: FRLMPrescriptionItem
Id: fr-lm-prescription-item
Parent: FRLMEntry
Title: "Logical model - FR LM Medication Prescription"
Description: """Entrée Traitement prescrit"""
Characteristics: #can-be-target

* . 1..*	
* header.identifier 1..* 
* header.status 1..1
  * ^short = "Statut de la ligne de prescription"
* header.author[x] 0..1
  * ^short = "Auteur de la prescription"
* statusReason[x]	0..1 CodeableConcept or string "Motif du statut de la ligne de prescription.
Par exemple, motif pour lequelle la ligne de prescription a été invalidée ou modifiée par rapport à la version précédente."
* medication 1..1 FRLMMedication "Produit de santé"
* indication[x] 0..* CodeableConcept or string "Motif du traitement (problème ou acte)."
  * ^binding.description = "ICD-10, SNOMED CT, Orphacode"
  * ^binding.strength = #preferred
* intendedUseType 0..1 CodeableConcept "Objet de la prescription - prophylaxie, traitement, anesthésie, etc"
* periodOfUse 0..1 Period "Durée du traitement"
* dosageInstructions 1..1 FRLMDosageInstructions "Posologie"
* quantityPrescribed 0..1 Quantity "Quantite de produit"
* validityPeriod 0..1 Period "Periode de validité de la ligne de prescription"
* substitution 0..1 Base "Autorisation de substitution"
  * allowed[x] 0..1 CodeableConcept or boolean "Type de substitution"
    * ^binding.description = "jdv-hl7-v3-ActSubstanceAdminSubstitutionCode-cisis (2.16.840.1.113883.1.11.16621)"
    * ^binding.valueSet = "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-hl7-v3-ActSubstanceAdminSubstitutionCode-cisis"
  * reason[x] 0..1 CodeableConcept or string  "Motif de non substitution (Marge thérapeutique étroite, Enfant forme galénique, Contre-indication formelle)."
* numberOfRepeats 0..1 integer "Nombre de renouvellement(s) possible(s). Non renseigné si pas de limite du nombre de dispensation. '0'=dispensation unique. Le nombre total de dispensation = nombre de renouvellement + 1."
* minimumDispenseInterval 0..1 Quantity "Intervalle minimal de délivrance. Si une ordonnance autorise des délivrances répétées, l'intervalle entre ces délivrances doit être indiqué ici."
* offLabel 1..1 Base "Hors AMM. Indique que le prescripteur a sciemment prescrit le médicament pour une indication, un groupe d'âge, une posologie ou une voie d'administration non approuvée par les organismes de réglementation et non mentionnée dans la notice du médicament."
  * isOffLabelUse	1..1	boolean	"Indique si la prescription est hors AMM. Doit être égal à « true » lorsque la raison est fournie."
  * reason[x]	0..* CodeableConcept or string "Raison de la prescription hors AMM"
* note 0..1 string "Instructions au dispensateur"
* enRapportAvecALD 1..1 boolean "En rapport avec ALD"
* enRapportAvecAccidentTravail 1..1 boolean "En rapport avec accident travail"
* enRapportAvecPrevention 1..1 boolean "En rapport avec la prevention"
* nonRemboursable 1..1 boolean "Non remboursable"