Profile: FRCDAIdentificationMicroOrganismesMultiresistants
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Observation
Id: fr-cda-identification-micro-organismes-multiresistants
Title: "CDA - FR Identification micro organismes multiresistants"
Description: "Entrée FR-Identification-micro-organismes-multiresistants: Cette entrée permet de décrire sous forme textuelle les micro-organismes identifiés."
* classCode MS
* classCode = #OBS
* moodCode MS
* moodCode = #EVN
* id MS
* id 1..1
* id ^short = "Identifiant de l'observation"
* id ^definition = "Identifiant de l'observation"
* templateId 1..3
* templateId ^slicing.discriminator.type = #value
* templateId ^slicing.discriminator.path = "root"
* templateId ^slicing.rules = #open
* templateId contains iheSimpleObservation 1..1
and frSimpleObservation 1..1
and frIdentificationMicroOrganismesMultiresistants 1..1
* templateId[iheSimpleObservation].root 1..1
* templateId[iheSimpleObservation].root = "1.3.6.1.4.1.19376.1.5.3.1.4.13"
* templateId[iheSimpleObservation] ^short = "Conformité Simple Observation (IHE PCC)"
* templateId[iheSimpleObservation] ^definition = "Conformité Simple Observation (IHE PCC)"
* templateId[frSimpleObservation].root 1..1
* templateId[frSimpleObservation].root = "1.2.250.1.213.1.1.3.48"
* templateId[frSimpleObservation] ^short = "Conformité FR-Simple-Observation (CI-SIS)"
* templateId[frSimpleObservation] ^definition = "Conformité FR-Simple-Observation (CI-SIS)"
* templateId[frIdentificationMicroOrganismesMultiresistants].root 1..1
* templateId[frIdentificationMicroOrganismesMultiresistants].root = "1.2.250.1.213.1.1.3.48.5"
* templateId[frIdentificationMicroOrganismesMultiresistants] ^short = "Conformité FR-Identification-micro-organismes-multiresistants (CI-SIS)"
* templateId[frIdentificationMicroOrganismesMultiresistants] ^definition = "Conformité FR-Identification-micro-organismes-multiresistants (CI-SIS)"
* code MS
* code ^short = "Code de l'observation"
* code ^definition = "Code de l'observation"
* code.code = #MED-144
* code.displayName = "Identification de micro-organismes multirésistants"
* code.codeSystem = "1.2.250.1.213.1.1.4.322"
* code.codeSystemName = "TerminologieCISIS"
* code.code 1..1 MS
* code.displayName MS
* code.codeSystem 1..1 MS
* text MS
* text 1..1
* text ^short = "Partie narrative de l'observation"
* statusCode MS
* statusCode 1..1
* statusCode ^short = "Statut de l'observation"
* statusCode ^definition = "Statut de l'observation"
* statusCode from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-hl7-v3-ActStatus-cisis (required)
* effectiveTime MS
* effectiveTime 1..1
* effectiveTime ^short = "Date de l'observation"
* effectiveTime ^definition = "Date de l'observation"
* value MS
* value 1..1
* value ^short = "Description sous forme textuelle des micro-organismes identifiés"
* value ^definition = "Description sous forme textuelle des micro-organismes identifiés"
* value only ST
* author MS
* author 0..1
* author ^short = "Participation d'un auteur au document"
* author ^definition = "Participation d'un auteur au document"
* author only FRCDAAuthor