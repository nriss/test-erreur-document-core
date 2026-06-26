Profile: FRCDADocumentationOf
Parent: http://hl7.org/cda/stds/core/StructureDefinition/DocumentationOf
Id: fr-cda-documentation-of
Title: "CDA - documentationOf"
Description: "L'élément de l'en-tête du CDA documentationOf permet de représenter un évènement (acte, traitement, diagnostic, etc…) décrit dans le document. Il y a au minimum une occurrence de cet élément pour décrire l'évènement principal avec obligatoirement une date de début et un exécutant." 
* ^status = #draft
* nullFlavor 0..0
* typeId.nullFlavor 0..0
* typeId.assigningAuthorityName 0..0
* typeId.displayable 0..0
* serviceEvent only fr-cda-service-event
* serviceEvent ^short = "Évènement documenté"
