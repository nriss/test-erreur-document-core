
Profile: FRCDAInformantAPSR
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Informant
Id: fr-cda-informant-apsr
Title: "CDA - FR Informant APSR"
Description: """FR-Informant-APSR : IHE-PCC Informant. Il permet de fournir le nom et les coordonnées :
d'une personne ayant fourni des informations concernant le document (rôle d'informateur); ce peut être un PS/un ES/le patient lui-même/une autre personne non PS ;
d'une personne de confiance désignée par le patient ;
d'une personne à prévenir en cas d'urgence ;
du ou des aidant(s) du patient ;de la ou des personne(s) aidée(s)"""

* . ^short = """Informateur, Personne de confiance, Personne à prévenir en cas d'urgence, aidant(s) du patient, personne(s) aidée(s). 
Plusieurs occurrences d'informant peuvent être utilisées et chaque occurrence d'informant doit contenir :
- soit un élément fils assignedEntity,
- soit un élément fils relatedEntity."""
* templateId 1..2
* templateId ^slicing.discriminator.type = #value
* templateId ^slicing.discriminator.path = "root"
* templateId ^slicing.rules = #open
* templateId contains iheInformantAPSR 1..1
and frInformantAPSR 1..1
* templateId[iheInformantAPSR].root 1..1
* templateId[iheInformantAPSR].root = "1.3.6.1.4.1.19376.1.8.1.4.6"
* templateId[iheInformantAPSR] ^short = "Conformité Informant (IHE PCC)"
* templateId[iheInformantAPSR] ^definition = "Conformité Informant (IHE PCC)"
* templateId[frInformantAPSR].root 1..1
* templateId[frInformantAPSR].root = "1.2.250.1.213.1.1.3.161"
* templateId[frInformantAPSR] ^short = "Conformité FR-Informant-APSR (CI-SIS)"
* templateId[frInformantAPSR] ^definition = "Conformité FR-Informant-APSR (CI-SIS)"
* assignedEntity MS
* assignedEntity ^short = "Informateur (PS, ES ou patient)"
* assignedEntity ^definition = "Informateur"
* assignedEntity only FRCDAAssignedEntity
* relatedEntity MS
* relatedEntity ^short = "Personne de confiance, personne à prévenir en cas d'urgence, informateur non PS, aidant(s) du patient, personne(s) aidée(s)."
* relatedEntity ^definition = "Personne de confiance, Personne à prévenir en cas d'urgence, informateur non PS, aidant(s) du patient, personne(s) aidée(s)"
* relatedEntity only FRCDARelatedEntity


