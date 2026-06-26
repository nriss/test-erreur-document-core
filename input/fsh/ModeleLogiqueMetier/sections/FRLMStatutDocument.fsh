Logical: FRLMStatusDocument
Id: fr-lm-status-document
Parent: FRLMSection
Title: "Logical model - FR LM Status Document"
Description: """Section Statut du Document"""
Characteristics: #can-be-target

* titleSection 1..1 
* subSection 0..0
* entry 1..1
  * statutDocument 1..1 FRLMStatusDocumentEntry "Entrée Statut du document"