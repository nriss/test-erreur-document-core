Profile: FRCDAAuthenticator
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Authenticator
Id: fr-cda-authenticator
Title: "CDA - authenticator"
Description: "L'élément de l'en-tête du CDA authenticator permet de représenter le professionnel (personne physique) attestant la validité du contenu du document."
* ^status = #draft
* nullFlavor 0..0
* typeId.nullFlavor 0..0
* typeId.assigningAuthorityName 0..0
* typeId.displayable 0..0
* sdtcSignatureText 0..0
* signatureCode ^short = "signatureCode signifie que le professionnel a validé les informations portées sur le document."
* signatureCode.sdtcValueSet 0..0
* signatureCode.sdtcValueSetVersion 0..0
* time ^short = "Date/heure de l'attestation de validité" 
* time.value ^short = "Date et heure à laquelle le PS atteste la validité des informations portées sur le document. Précisée à la seconde avec précision du décalage par rapport au temps universel (UTC)"
* assignedEntity only fr-cda-assigned-entity
* assignedEntity ^short = "Entité attestant la validité"