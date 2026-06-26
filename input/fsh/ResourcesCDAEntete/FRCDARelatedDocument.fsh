Profile: FRCDARelatedDocument
Parent: http://hl7.org/cda/stds/core/StructureDefinition/RelatedDocument
Id: fr-cda-related-document
Title: "CDA - relatedDocument"
Description: "L'élément de l'en-tête du CDA relatedDocument permet de référencer un document existant (à remplacer ou transformé)." 
* ^status = #draft
* typeId.nullFlavor 0..0
* typeId.assigningAuthorityName 0..0
* typeId.displayable 0..0
* typeCode ^short = "le typeCode prend la valeur :
- 'RPLC' pour remplacement, seul le remplacement au sens annulation et remplacement du document référencé par la version courante du document est autorisé.
- 'XFRM' pour transformation, la relation est portée par le document CDA transformé (et pas par le document de référence)."
* parentDocument ^short = "Document de référence."
* parentDocument only fr-cda-parent-document