Profile: FRObservationSurveyDocument
Parent: Observation
Id: fr-observation-survey-document
Title: "Observation - FR Observation Survey Document"
Description: "FRObservationSurveyDocument permet de rapporter un résultat (score) répondant à une question faisant partie d'une évaluation (questionnaire d'enquête par exemple)."

// mettre le bon canonical à partir de HL7 Europe Base and Core FHIR IG
//* ^extension[$imposeProfile].valueCanonical = Canonical()

* category 1..1 MS
* category ^short = "Catégorie"
* category.coding 1..1
* category = $observation-category#survey "Survey"

* status ^short = "Statut métier de l’évaluation"
* status.extension contains FRStatusReasonExtension   
    named statusReason 0..1
* status.extension[statusReason] ^short = "Motif du statut métier"

* code MS
* code from FRValueSetEvaluationTypeDocument (extensible)
* code ^short = "Type d'évaluation"
* code ^comment = """
Si aucun code approprié n’est trouvé dans les systèmes proposés,
utiliser le code LOINC '54522-8' (Statut fonctionnel),
et préciser le type d’évaluation exact dans un texte libre.
"""

* value[x] 1..1 MS
* value[x] ^short = "Valeur de l'évaluation"

* interpretation 0..1 MS
* interpretation ^short = "Interprétation"

* performer MS
* performer.extension contains
    FRActorExtension named Evaluateur 0..1 and
    FRActorExtension named Auteur 0..1 and
    FRActorExtension named Participant 0..1

// Evaluateur
* performer.extension[Evaluateur] MS
* performer.extension[Evaluateur] ^short = "Evaluateur"
* performer.extension[Evaluateur].extension[type].valueCode = #PRF
* performer.extension[Evaluateur].extension[actor].valueReference only Reference(FROrganizationDocument)
* performer.extension[Evaluateur].extension[typeCode].valueCodeableConcept from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-participant-additionnel-resultat-cisis (required)

// auteur
* performer.extension[Auteur] MS
* performer.extension[Auteur] ^short = "Auteur de l'évaluation"
* performer.extension[Auteur].extension[type].valueCode = #AUT
* performer.extension[Auteur].extension[actor].valueReference only Reference(FRPractitionerRoleDocument)

// Participant
* performer.extension[Participant] MS
* performer.extension[Participant] ^short = "Responsable de l'évaluation"
* performer.extension[Participant].extension[type].valueCode = #PART
* performer.extension[Participant].extension[actor].valueReference only Reference(FRPractitionerRoleDocument)
* performer.extension[Participant].extension[typeCode].valueCodeableConcept.coding.code = #RESP

// ----------------------
// Slicing component (N1 vs N2)
// ----------------------
* component ^slicing.discriminator.type = #value
* component ^slicing.discriminator.path = "extension('http://.../StructureDefinition/evaluation-type')"
* component ^slicing.rules = #open

* component MS
* component ^short = "Composants de l'évaluation"
* component contains
    ComposantN1 0..* and
    ComposantN2 0..*

* component[ComposantN1] ^short = "Composant N1 de l'évaluation"
* component[ComposantN1].code 1..1 MS
* component[ComposantN1].code ^short = "Code de l'évaluation"
* component[ComposantN1].value[x] 1..1 MS
* component[ComposantN1].value[x] ^short = "Résultat de l'évaluation"
* component[ComposantN1].interpretation 0..1 MS
* component[ComposantN1].interpretation ^short = "Interprétation"
* component[ComposantN1].extension contains http://hl7.org/fhir/StructureDefinition/note named note 0..*
* component[ComposantN1].extension[note] ^short = "Commentaire"
* component[ComposantN1].extension[note].value[x] MS

* component[ComposantN2] ^short = "Sous-composant N2 de l'évaluation"
* component[ComposantN2].code 1..1 MS
* component[ComposantN2].code ^short = "Code de l'évaluation"
* component[ComposantN2].value[x] 1..1 MS
* component[ComposantN2].value[x] ^short = "Résultat de l'évaluation"
* component[ComposantN2].interpretation 0..1 MS
* component[ComposantN2].interpretation ^short = "Interprétation"

* hasMember MS
* hasMember ^short = "Référence interne"

// Commentaires
* note ^short = "Commentaires (Annotations)"