Logical: FRLMEndpoint
Id: fr-lm-endpoint
Parent: FRLMEntry
Title: "Logical model - FR LM Endpoint"
Description: """Référence Wado d'un objet DICOM (SOP Instance)"""
Characteristics: #can-be-target

* connectionType 1..1 CodeableConcept "IHE Invoke Image Display"
* payloadType 1..1 CodeableConcept "Type de media"
* address 1..1 uri "WADO reference"
