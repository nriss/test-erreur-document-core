Profile: FRCDATransportDuProfessionnel
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Act
Id: fr-cda-transport-du-professionnel
Title: "CDA - FR Transport du professionnel"
Description: "Entrée FR-Transport-du-professionnel: Cette entrée de type act permet de décrire le transport d'un professionnel lors d’un déplacement."
* classCode MS
* classCode = #ACT
* moodCode MS
* moodCode ^short = "Si le transport est à faire : moodCode='INT'. Si le transport a déjà été effectué : moodCode='EVN'."
* id 1..1 MS
* id ^short = "Identifiant de l'entrée"
* id ^definition = "Identifiant de l'entrée"
* templateId 1..1
* templateId ^slicing.discriminator.type = #value
* templateId ^slicing.discriminator.path = "root"
* templateId ^slicing.rules = #open
* templateId contains frTransportDuProfessionnel 1..1
* templateId[frTransportDuProfessionnel].root 1..1
* templateId[frTransportDuProfessionnel].root = "1.2.250.1.213.1.1.3.216"
* templateId[frTransportDuProfessionnel] ^short = "Conformité FR-Transport-du-professionnel (CI-SIS)"
* templateId[frTransportDuProfessionnel] ^definition = "Conformité FR-Transport-du-professionnel (CI-SIS)"
* code MS
* code ^short = "Mode de transport (Ambulance publique, Taxi, VSL, …)"
* code ^definition = "Mode de transport"
* code from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-mode-de-transport-cisis (required)
* code.qualifier 0..1 MS
* code.qualifier ^short = "Type de motorisation"
* code.qualifier ^definition = "Type de motorisation"
* code.qualifier.name 1..1
* code.qualifier.name.code = #GEN-346
* code.qualifier.name.codeSystem = "1.2.250.1.213.1.1.4.322"
* code.qualifier.name.displayName = "Type de motorisation"
* code.qualifier.name.codeSystemName = "TerminologieCISIS"
* code.qualifier.value 1..1
* code.qualifier.value only CD
* code.qualifier.value ^short = "Type de motorisation : 
Valeur issue du JDV_TypeMotorisation_CISIS (1.2.250.1.213.1.1.5.801)"
* code.qualifier.value ^definition = "Type de motorisation"
* code.qualifier.value.code from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-type-motorisation-cisis (required)
* code.code 1..1 MS
* code.displayName MS
* code.codeSystem 1..1 MS
* text MS
* text ^short = "Texte décrivant le transport"
* text ^definition = "Texte décrivant le transport"
* text.reference 1..1 MS
* text.reference ^short = "Référence vers la partie narrative de la section"
* effectiveTime MS
* effectiveTime 1..1
* effectiveTime ^short = "Date du transport"
* effectiveTime ^definition = "Date du transport"
* performer 0..1 MS
* performer ^short = "Transporteur : \r\n
Les attributs de cet élément prennent les valeurs suivantes : @typeCode= «PRF» ;
Les attributs de l'élément assignedEntity prennent les valeurs suivantes :@classCode= « ASSIGNED »"
* performer ^definition = "Transporteur"
* performer only FRCDAPerformerCorps
* participant 1..3 MS
* participant ^short = "Lieu de départ / Destination / Professionnel concerné : \r\n
- Les attributs de cet élément prennent les valeurs suivantes :
@typeCode = « ORG » pour le Lieu de départ ;
@typeCode = « DST » pour la Destination ;
@typeCode = « RCV » pour le Professionnel concerné ;
- Les attributs du sous-élément participantRole prennent les valeurs suivantes :
Si @typeCode de l'élément parent participant à « ORG » | « DST » alors @classCode= « SDLOC » ;
Si @typeCode de l'élément parent participant à « RCV » alors @classCode= « ROL »"
* participant ^definition = "Lieu de départ / Destination / Professionnel concerné"
* participant only FRCDAParticipantCorps
* entryRelationship.observation only FRCDASimpleObservation
* entryRelationship.typeCode = #COMP
* entryRelationship.inversionInd = false
* entryRelationship ^short = "Autres précision sur le trajet ou le transport du professionnel"
* entryRelationship ^definition = "Autres précision sur le trajet ou le transport du professionnel"
