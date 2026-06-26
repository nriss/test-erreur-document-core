Profile: FRCDAIsolatMicrobiologique
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Organizer
Id: fr-cda-isolat-microbiologique
Title: "CDA - FR Isolat microbiologique"
Description: "Entrée FR-Isolat-microbiologique: IHE-PCC - Laboratory isolate organizer. 
 - L'entrée Isolat microbiologique est une entrée de type 'organizer' qui est utilisée pour les comptes rendus comprenant des résultats de microbiologie. 
 - Elle décrit un isolat (milieu de culture sur lequel a poussé un microorganisme) et les résultats d'examens obtenus sur cet isolat (antibiogramme, antifongigramme, sérotype, génotype …)."
* classCode MS
* classCode = #CLUSTER
* moodCode MS
* id 0..1 MS
* id ^short = "Identifiant de l'entrée"
* id ^definition = "Identifiant de l'entrée"
* templateId 1..2
* templateId ^slicing.discriminator.type = #value
* templateId ^slicing.discriminator.path = "root"
* templateId ^slicing.rules = #open
* templateId contains iheLaboratoryIsolateOrganizer 1..1
and frIsolatMicrobiologique 1..1
* templateId[iheLaboratoryIsolateOrganizer].root 1..1
* templateId[iheLaboratoryIsolateOrganizer].root = "1.3.6.1.4.1.19376.1.3.1.5"
* templateId[iheLaboratoryIsolateOrganizer] ^short = "Conformité Laboratory Isolate Organizer (IHE PALM)"
* templateId[iheLaboratoryIsolateOrganizer] ^definition = "Conformité Laboratory Isolate Organizer (IHE PALM)"
* templateId[frIsolatMicrobiologique].root 1..1
* templateId[frIsolatMicrobiologique].root = "1.2.250.1.213.1.1.3.79"
* templateId[frIsolatMicrobiologique] ^short = "Conformité FR-Isolat-microbiologique (CI-SIS)"
* templateId[frIsolatMicrobiologique] ^definition = "Conformité FR-Isolat-microbiologique (CI-SIS)"
* code MS
* code ^short = "Code isolat : le code de l’isolat peut être codé avec les terminologies SNOMED CT et NCBI"
* code ^definition = "Code isolat"
* code.code 1..1 MS
* code.displayName MS
* code.codeSystem 1..1 MS
* statusCode MS
* statusCode 1..1
* statusCode ^short = "Niveau de complétude‘completed' : Rendu final complet. Tous les résultats attendus pour cet examen sont présents.‘active' : Rendu partiel. Certains résultats sont encore à venir pour cet examen.‘aborted' : L'examen est abandonné. Quelques résultats peuvent apparaître."
* statusCode ^definition = "Niveau de complétude"
* statusCode from FRValueSetStatusCode (required)
* effectiveTime MS
* effectiveTime ^short = "Date et heure des résultats"
* effectiveTime ^definition = "Date et heure des résultats"
* subject MS
* subject only FRCDASujetNonHumain or FRCDAPatientAvecSujetNonHumain
* specimen MS
* specimen 1..1 
* specimen ^short = "Isolat microbiologique"
* specimen ^definition = "Isolat microbiologique. Apparaît en une et une seule occurrence. Cet élément représente l'isolat soumis à l'étude, c'est-à-dire le germe, le champignon, le virus, le parasite dans son milieu de culture."
* specimen.specimenRole MS
* specimen.specimenRole.specimenPlayingEntity MS
* specimen.specimenRole.specimenPlayingEntity ^short = "L'agent infectieux cultivé (bactérie, levure, virus, parasite)"
* specimen.specimenRole.specimenPlayingEntity.classCode = #MIC
* specimen.specimenRole.specimenPlayingEntity.code 1..1 MS
* performer MS
* performer 1..1
* performer ^short = "Laboratoire exécutant"
* performer ^definition = "Laboratoire exécutant"
* performer only FRCDALaboratoireExecutant
* author MS
* author 1..1
* author ^short = "Participation d'un auteur au document"
* author ^definition = "Participation d'un auteur au document"
* author only FRCDAAuthor
* participant MS
* participant ^slicing.discriminator.type = #value
* participant ^slicing.discriminator.path = "typeCode"
* participant ^slicing.rules = #open
* participant contains 
frParticipantResponsable 0..1 and frParticipantDispositif 0..*
* participant[frParticipantResponsable] ^short = "Responsable de cet examen"
* participant[frParticipantResponsable] only FRCDAParticipantCorps
* participant[frParticipantResponsable].typeCode = #RESP
* participant[frParticipantDispositif] ^short = "Dispositif automatique impliqué dans la production des résultats"
* participant[frParticipantDispositif] only FRCDAParticipantCorps
* participant[frParticipantDispositif].typeCode = #DEV
* component MS
* component ^slicing.discriminator.type = #type
* component ^slicing.discriminator.path = "$this"
* component ^slicing.rules = #open
* component contains
frBatterieExamensDeBiologieMedicale 0..* and
frResultatExamensDeBiologieElementCliniquePertinent 0..* and
frImageIllustrative 0..* and
frCommentaireER 0..* 
* component[frBatterieExamensDeBiologieMedicale] ^short = "Batterie d'examens de biologie médicale"
* component[frBatterieExamensDeBiologieMedicale].typeCode = #COMP
* component[frBatterieExamensDeBiologieMedicale].organizer only FRCDABatterieExamensDeBiologieMedicale
* component[frResultatExamensDeBiologieElementCliniquePertinent] ^short = "Résultat d'examen / élément clinique pertinent"
* component[frResultatExamensDeBiologieElementCliniquePertinent].typeCode = #COMP
* component[frResultatExamensDeBiologieElementCliniquePertinent].observation only FRCDAResultatExamensDeBiologieElementCliniquePertinent
* component[frImageIllustrative] ^short = "Image ou graphe"
* component[frImageIllustrative].typeCode = #COMP
* component[frImageIllustrative].observationMedia only FRCDAImageIllustrative
* component[frCommentaireER] ^short = "Commentaire de section interprétant l'ensemble des résultats"
* component[frCommentaireER].typeCode = #COMP
* component[frCommentaireER].act only FRCDACommentaireER