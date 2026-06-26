// l'équivalent de ce modèle EHDSMedia a été supprimé !
Logical: FRLMObservationMedia
Id: fr-lm-observation-media
Parent : FRLMEntry
Title: "Logical model - FR LM ObservationMedia"
Description: """Entrée Image illustrative."""
Characteristics: #can-be-target

* content 1..1 FRLMAttachment "Image encodée en Base64"
* content.data 1..1 
* content.contentType 1..1 

* subject[x] 1..1 Reference(FRLMPatient or FRLMSpecimen) "Patient ou spécimen concerné par l’image"
* note 0..*	string "Précondition"


/* * imageEncodee 1..1 Base "Image encodée en Base64"
  * mediaType 1..1 CodeableConcept "'image/gif' ou 'image/jpeg' ou 'image/png' ou 'mage/bm'"
  * representation 1..1 base64Binary "B64"
* specimen 0..* Base "Specimen"
* entryRelationship 0..* Base "entryRelationship"
* reference 0..* Base "Reference"
* precondition 0..* Base "Precondition" */