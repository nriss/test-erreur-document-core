Logical: FRLMSection
Id: fr-lm-section
Title: "Logical model - FR LM Section"
Description: """Section"""
Characteristics: #can-be-target
 
* codeSection 1..1 CodeableConcept "Code de la section"
* titleSection 0..1 string "Titre de la section"
* description 1..1 string "Bloc narratif"
* author[x] 0..* Base	"author[x] peut correspondre soit à un professionnel, soit à une organisation, soit à un système."
  * authorProfessional 0..* FRLMHealthProfessional "L'auteur est un professionnel de santé"
  * authorOrganisation 0..* FRLMOrganisation "L'auteur est une organisation"
  * authorDevice 0..* FRLMDevice "L'auteur est un système"
* informant 0..* FRLMInformant "Informateur"
* subSection 0..* Base "Sous-sections"
* entry 0..* Base "Entrées"