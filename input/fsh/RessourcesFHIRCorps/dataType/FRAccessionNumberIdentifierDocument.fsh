/* Ce DataType existe déjà côté HL7.
Lors de la publication de la version HL7 correspondante, remplacer
ce profil par la version officielle.*/ 
Profile: FRAccessionNumberIdentifierDocument
Parent: Identifier
Id: fr-accession-number-identifier-document
Title: "FR Accession Number Identifier Document"
Description: "DataType définissant l'Accession Number d'une demande d'examen. Il s'agit d'un identifiant unique attribué à chaque demande d'examen."

* type 1..1 MS
* type = http://terminology.hl7.org/CodeSystem/v2-0203#ACSN "Accession ID"

* system 0..1 MS
* system ^short = "L'espace de nommage pour l'identifiant"

* value 1..1 MS
* value ^short = "La valeur de l'identifiant"