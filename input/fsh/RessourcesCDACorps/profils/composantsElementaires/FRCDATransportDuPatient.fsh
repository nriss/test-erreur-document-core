Profile: FRCDATransportDuPatient
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Act
Id: fr-cda-transport-du-patient
Title: "CDA - FR Transport du patient"
Description: "Entrée FR-Transport-du-patient: IHE-PCC - Transport. Cette entrée de type act permet de décrire le transport d'un patient/usager lors d'un déplacement (entrée ou sortie d'hôpital, ...)"
* classCode MS
* classCode = #ACT
* moodCode MS
* moodCode ^short = "Si le transport est à faire : moodCode='INT'. Si le transport a déjà été effectué : moodCode='EVN'."
* id 1..1 MS
* id ^short = "Identifiant de l'entrée"
* id ^definition = "Identifiant de l'entrée"
* templateId 1..2
* templateId ^slicing.discriminator.type = #value
* templateId ^slicing.discriminator.path = "root"
* templateId ^slicing.rules = #open
* templateId contains iheTransport 1..1
and frTransportDuPatient 1..1
* templateId[iheTransport].root 1..1
* templateId[iheTransport].root = "1.3.6.1.4.1.19376.1.5.3.1.1.10.4.1"
* templateId[iheTransport] ^short = "Conformité Transport (IHE PCC)"
* templateId[iheTransport] ^definition = "Conformité Transport (IHE PCC)"
* templateId[frTransportDuPatient].root 1..1
* templateId[frTransportDuPatient].root = "1.2.250.1.213.1.1.3.24"
* templateId[frTransportDuPatient] ^short = "Conformité FR-Transport-du-patient (CI-SIS)"
* templateId[frTransportDuPatient] ^definition = "Conformité FR-Transport-du-patient (CI-SIS)"
* code MS
* code ^short = "Mode de transport (Ambulance publique, Taxi, VSL, …)"
* code ^definition = "Mode de transport"
* code from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-mode-de-transport-cisis (required)
* code.code 1..1 MS
* code.displayName MS
* code.codeSystem 1..1 MS
* text MS
* text ^short = "Texte décrivant le transport"
* text.reference 1..1 MS
* effectiveTime MS
* effectiveTime 1..1
* effectiveTime ^short = "Date du transport"
* effectiveTime ^definition = "Date du transport"
* effectiveTime.low 1..1 MS
* effectiveTime.low ^short = "Date de début du transport"
* effectiveTime.high 1..1 MS
* effectiveTime.high ^short = "Date de fin du transport: 
Si l’heure d’arrivée n’est pas connue (dans le cas notamment d’un transport projeté), effectiveTime/@high prend une valeur nullflavor='UNK'."
* performer 0..1 MS
* performer ^short = "Transporteur : \r\n
Les attributs de cet élément prennent les valeurs suivantes : @typeCode= «PRF»"
* performer ^definition = "Transporteur"
* performer only FRCDAPerformerCorps
* participant 0..2 MS
* participant ^short = "Lieu de départ / Destination : \r\n
Les attributs de cet élément prennent les valeurs suivantes :
@typeCode= « ORG » pour le lieu de départ ;
@typeCode='DST' pour la destination. 
Les attributs de l'élément participantRole prennent les valeurs suivantes : @classCode= « SDLOC »"
* participant ^definition = "Lieu de départ / Destination"
* participant only FRCDAParticipantCorps
* entryRelationship MS
* entryRelationship.observation only FRCDASimpleObservation
* entryRelationship.typeCode = #COMP
* entryRelationship.inversionInd = false
* entryRelationship ^short = "Autres précision sur le trajet ou le transport du patient"
* entryRelationship ^definition = "Autres précision sur le trajet ou le transport du patient"
