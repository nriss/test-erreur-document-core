/* Ce DataType existe déjà côté HL7 (Imaging Report Europe).
Lors de la publication de la version HL7 correspondante, remplacer
ce profil par la version officielle.*/ 
Profile: FRStudyInstanceUidIdentifierDocument
Parent: Identifier
Id: fr-study-instance-uid-identifier-document
Title: "FR Study Instance Uid Identifier Document"
Description: "DataType définissant l’UID de l’instance Study (0020,000D) d'une demande d'examen d'imagerie"
* system = "urn:dicom:uid"
* value 1..1
* type 0..1
* type.coding.code = #0020000D // "Study Instance UID"