Profile: FRCDAResultatsExamensDeBiologieMedicale
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Act
Id: fr-cda-resultats-examens-de-biologie-medicale
Title: "CDA - FR Resultats examens de biologie medicale"
Description: "Entrée FR-Resultats-examens-de-biologie-medicale: IHE-PCC - Laboratory Report Data Processing. 
 - Le modèle de l'entrée Résultats d'examens de biologie médicale est identique quelle que soit la discipline de biologie. Cette entrée de type act peut comporter une liste d'éléments fils entryRelationship de typeCode='COMP'. Les éléments ci-dessous ne sont utilisables que dans l'entrée Résultats d'examens de biologie médicale : 
  - Prélèvement (Specimen Collection – 1.3.6.1.4.1.19376.1.3.1.2) 
  - Batterie d'examens de biologie médicale (Laboratory Battery Organizer – 1.3.6.1.4.1.19376.1.3.1.4)
  - Isolats microbiologiques (Laboratory Isolate Organizer – 1.3.6.1.4.1.19376.1.3.1.5) 
  - Résultat d'examen / élément clinique pertinent (Laboratory Observation – 1.3.6.1.4.1.19376.1.3.1.6)"
* classCode MS
* classCode = #ACT
* moodCode MS
* moodCode = #EVN
* templateId 1..2
* templateId ^slicing.discriminator.type = #value
* templateId ^slicing.discriminator.path = "root"
* templateId ^slicing.rules = #open
* templateId contains 
    iheLaboratoryReportDataProcessingEntry 1..1 and
    frResultatsExamensDeBiologieMedicale 1..1
* templateId[iheLaboratoryReportDataProcessingEntry].root 1..1
* templateId[iheLaboratoryReportDataProcessingEntry].root = "1.3.6.1.4.1.19376.1.3.1"
* templateId[iheLaboratoryReportDataProcessingEntry] ^short = "Conformité Laboratory Report Data Processing Entry (IHE PaLM)"
* templateId[iheLaboratoryReportDataProcessingEntry] ^definition = "Conformité Laboratory Report Data Processing Entry (IHE PaLM)"
* templateId[frResultatsExamensDeBiologieMedicale].root 1..1
* templateId[frResultatsExamensDeBiologieMedicale].root = "1.2.250.1.213.1.1.3.21"
* templateId[frResultatsExamensDeBiologieMedicale] ^short = "Conformité FR-Resultats-examens-de-biologie-medicale (CI-SIS)"
* templateId[frResultatsExamensDeBiologieMedicale] ^definition = "Conformité FR-Resultats-examens-de-biologie-medicale (CI-SIS)"
* code MS
* code 1..1
* code ^short = "Code dont dérive le code de section"
* code ^definition = "Code dont dérive le code de section"
* code.code 1..1 MS
* code.displayName MS
* code.codeSystem 1..1 MS
* statusCode MS
* statusCode 1..1
* statusCode ^short = "Niveau de complétude.
Fixé: @code = completed 
Ou 
Fixé: @code = active 
Ou 
Fixé: @code = aborted"
* statusCode ^definition = "Niveau de complétude"
* statusCode from FRValueSetStatusCode (required)
* effectiveTime MS
* effectiveTime ^short = "Date et heure du résultat"
* effectiveTime ^definition = "Date et heure du résultat"
* subject MS
* subject only FRCDASujetNonHumain or FRCDAPatientAvecSujetNonHumain
* performer MS
* performer ^short = "Laboratoire sous-traitant. si différent du performer de l'en-tête."
* performer ^short = "Laboratoire sous-traitant"
* performer only FRCDALaboratoireExecutant
* author MS
* author ^short = "Auteur"
* author ^definition = "Auteur"
* author only FRCDAAuthor
* participant MS
* participant ^slicing.discriminator.type = #value
* participant ^slicing.discriminator.path = "typeCode"
* participant ^slicing.rules = #open
* participant contains 
frParticipantValideurResultats 0..1 MS and frParticipantResponsableExamen 0..1 MS 
 and frParticipantDispositifAutomatique 0..1 
* participant[frParticipantValideurResultats] ^short = "Valideur de ces résultats"
* participant[frParticipantValideurResultats] ^definition = "Valideur de ces résultats"
* participant[frParticipantValideurResultats].typeCode = #AUTHEN
* participant[frParticipantValideurResultats].templateId.root = "1.3.6.1.4.1.19376.1.3.3.1.5"
* participant[frParticipantValideurResultats] only FRCDAParticipantCorps
* participant[frParticipantResponsableExamen] ^short = "Responsable de cet examen"
* participant[frParticipantResponsableExamen] ^definition = "Responsable de cet examen"
* participant[frParticipantResponsableExamen].typeCode = #RESP
* participant[frParticipantResponsableExamen] only FRCDAParticipantCorps
* participant[frParticipantDispositifAutomatique] ^short = "Dispositif automatique impliqué dans la production des résultats"
* participant[frParticipantDispositifAutomatique] ^definition = "Dispositif automatique impliqué dans la production des résultats"
* participant[frParticipantDispositifAutomatique].typeCode = #DEV
* participant[frParticipantDispositifAutomatique] only FRCDAParticipantCorps
* entryRelationship MS
* entryRelationship ^slicing.discriminator.type = #value
* entryRelationship ^slicing.discriminator.path = "$this"
* entryRelationship ^slicing.rules = #open
* entryRelationship contains 
frPrelevement 0..*
 and frBatterieExamensDeBiologieMedicale 0..*
 and frIsolatMicrobiologique 0..*
 and frResultatExamensDeBiologieElementCliniquePertinent 0..*
 and frCommentaireER 0..*
 and frImageIllustrative 0..*
* entryRelationship[frPrelevement].typeCode = #COMP
* entryRelationship[frPrelevement].procedure only FRCDAPrelevement
* entryRelationship[frBatterieExamensDeBiologieMedicale].typeCode = #COMP
* entryRelationship[frBatterieExamensDeBiologieMedicale].organizer only FRCDABatterieExamensDeBiologieMedicale
* entryRelationship[frIsolatMicrobiologique].typeCode = #COMP
* entryRelationship[frIsolatMicrobiologique].organizer only FRCDAIsolatMicrobiologique
* entryRelationship[frResultatExamensDeBiologieElementCliniquePertinent].typeCode = #COMP
* entryRelationship[frResultatExamensDeBiologieElementCliniquePertinent].observation only FRCDAResultatExamensDeBiologieElementCliniquePertinent
* entryRelationship[frCommentaireER].typeCode = #SUBJ
* entryRelationship[frCommentaireER].act only FRCDACommentaireER
* entryRelationship[frImageIllustrative].typeCode = #COMP
* entryRelationship[frImageIllustrative].observationMedia only FRCDAImageIllustrative