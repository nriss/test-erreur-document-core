Logical: FRLMAttachment
Id: fr-lm-attachment
Parent: FRLMEntry
Title: "Logical model - FR LM Attachment"
Description: """Entrée Document attaché"""
Characteristics: #can-be-target

* contentType 0..1 CodeableConcept "Type MIME de la piece jointe, avec encodage de caracteres, etc."
  * ^binding.description = "(preferred): BCP-13"
* language 0..1 CodeableConcept "Langue du contenu"
  * ^binding.description = "(preferred): BCP 47"
* data 0..1 base64Binary "Contenu encode en base64"
* url 0..1 uri "URL de la ressource"
/*le type integer64 n’existe pas il existe en R5
* size 0..1 integer64 "Taille de la piece jointe avant encodage en base64"*/
* size 0..1 unsignedInt "Taille de la piece jointe avant encodage en base64"
* title 0..1 string "Titre de la piece jointe"