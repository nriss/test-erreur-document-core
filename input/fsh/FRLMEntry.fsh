Logical: FRLMEntry
Id: fr-lm-entry
Title: "Logical model - FR LM Entry"
Description: "Modèle logique représentant l'entrée"

* header 1..1 Base "Métadonnées de base"
  * subject 1..1 FRLMPatient "Patient / Usager"
  * identifier 0..* Identifier "Identifiant de l’entrée"
  * author[x] 0..* Base	"author[x] peut correspondre soit à un professionnel, soit à une organisation, soit à un système."
    * authorProfessional 0..* FRLMHealthProfessional "L'auteur est un professionnel de santé"
    * authorOrganisation 0..* FRLMOrganisation "L'auteur est une organisation"
    * authorDevice 0..* FRLMDevice "L'auteur est un système"
  * performer[x] 0..* FRLMHealthProfessional or FRLMOrganisation "Exécutant (performer)"
  * participant[x] 0..* Base "Participant"
    * participantProfessional 0..* FRLMHealthProfessional "Le participant est un professionnel de santé"
    * participantOrganisation 0..* FRLMOrganisation "Le participant est une organisation"
    * participantDevice 0..* FRLMDevice "Le participant est un système"
  * informant 0..* FRLMInformant "Informateur"
  * date 0..1 dateTime "Date/Heure de création par l'auteur"
  * status 0..1 CodeableConcept "Statut"
  * source 0..1 CodeableConcept "Source"
  * language 0..1 CodeableConcept "'fr-FR' pour français métropolitain (la casse des caractères doit être respectée)
La partie en minuscules indique le code de la langue utilisée (ISO-639-1)
La partie en majuscules indique le code pays (ISO-3166)"