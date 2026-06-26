Profile: FRCDAAuthor
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Author
Id: fr-cda-author
Title: "CDA - author"
Description: "L'élément de l'en-tête du CDA author permet d’enregistrer un auteur du document."
* ^status = #draft
* nullFlavor 0..0 
* typeId.nullFlavor 0..0
* typeId.assigningAuthorityName 0..0
* typeId.displayable 0..0
* functionCode ^short = "Rôle fonctionnel de l'auteur. A utiliser uniquement si l'auteur est un professionnel."
* functionCode.code from https://mos.esante.gouv.fr/NOS/JDV_J47-FunctionCode-CISIS/FHIR/JDV-J47-FunctionCode-CISIS (required)
* functionCode.nullFlavor 0..0
* functionCode.code 1..1
* functionCode.codeSystem 1..1
* functionCode.codeSystemVersion 0..0
* functionCode.sdtcValueSet 0..0
* functionCode.sdtcValueSetVersion 0..0
* functionCode.originalText ^short = "Description du rôle fonctionnel de l'auteur."
* time ^short = "Horodatage de la participation de l’auteur"
* time.value 1..1
* assignedAuthor ^short = "Identification de l’auteur"
* assignedAuthor only fr-cda-assigned-author
