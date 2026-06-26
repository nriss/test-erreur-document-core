Profile: FRCDAResultatExamensDeBiologieElementCliniquePertinent
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Observation
Id: fr-cda-resultat-examens-de-biologie-element-clinique-pertinent
Title: "CDA - FR Resultat examens de biologie element clinique pertinent"
Description: "Entrée FR-Resultat-examens-de-biologie-element-clinique-pertinent: IHE-PALM - Laboratory Observation. 
 - L'entrée Résultat d'examen / élément clinique pertinent est une entrée de type 'observation' qui permet de décrire un résultat d'un élément d'un examen de biologie médicale ou un élément clinique pertinent fourni par le prescripteur ou le préleveur dans le contexte clinique de la demande d'examens biologiques."
* classCode MS
* classCode = #OBS
* moodCode MS
* moodCode = #EVN
* id 0..1 MS
* id ^short = "Identifiant de l'entrée"
* id ^definition = "Identifiant de l'entrée"
* templateId 1..2
* templateId ^slicing.discriminator.type = #value
* templateId ^slicing.discriminator.path = "root"
* templateId ^slicing.rules = #open
* templateId contains iheLaboratoryObservation 1..1
and frResultatExamensDeBiologieElementCliniquePertinent 1..1
* templateId[iheLaboratoryObservation].root 1..1
* templateId[iheLaboratoryObservation].root = "1.3.6.1.4.1.19376.1.3.1.6"
* templateId[iheLaboratoryObservation] ^short = "Conformité Laboratory Observation (IHE PaLM)"
* templateId[iheLaboratoryObservation] ^definition = "Conformité Laboratory Observation (IHE PaLM)"
* templateId[frResultatExamensDeBiologieElementCliniquePertinent].root 1..1
* templateId[frResultatExamensDeBiologieElementCliniquePertinent].root = "1.2.250.1.213.1.1.3.80"
* templateId[frResultatExamensDeBiologieElementCliniquePertinent] ^short = "Conformité FR-Resultat-examens-de-biologie-element-clinique-pertinent (CI-SIS)"
* templateId[frResultatExamensDeBiologieElementCliniquePertinent] ^definition = "Conformité FR-Resultat-examens-de-biologie-element-clinique-pertinent (CI-SIS)"
* code MS
* code ^short = "Code d'identification de l'analyse ou de l'observation"
* code ^definition = "Code d'identification de l'analyse ou de l'observation"
* code.displayName 1..1
* code.codeSystem = "2.16.840.1.113883.6.1"	
* code.originalText 1..1 MS
* code.originalText.reference 1..1 MS
* code.originalText.reference ^short = "Référence à l'expression verbale dans la partie visualisable du compte-rendu"
* code.originalText.reference ^definition = "Référence à l'expression verbale dans la partie visualisable du compte-rendu"
* code.translation 0..1 MS
* code.translation ^short = "Code d'identification d'attente national ou code de portée locale"
* code.translation ^definition = "Code d'identification d'attente national ou code de portée locale"
* code.code 1..1 MS
* code.displayName MS
* code.codeSystem 1..1 MS
* statusCode MS
* statusCode 1..1
* statusCode ^short = "Niveau de complétude.
- 'completed' si le résultat est présent ;
- 'aborted' dans le cas où l'élément d'examen n’a pu être et ne sera pas réalisé ;"
* statusCode ^definition = "Niveau de complétude"
* statusCode from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-hl7-v3-ActStatus-cisis (required)
* effectiveTime MS
* effectiveTime ^short = "Date et heure de ce résultat"
* effectiveTime ^definition = "Date et heure de ce résultat"
* value MS
* value ^short = "Valeur du résultat. Le type de valeur (attribut xsi:type) est choisi dynamiquement. Les autres attributs qui qualifient cette valeur (comme par exemple l'unité) dépendent du type de donnée choisi. Les résultats qualitatifs codés peuvent le cas échéant être exprimés dans plusieurs systèmes de codage simultanément. De même les résultats numériques peuvent être exprimés simultanément dans plusieurs unités."
* value ^definition = "Valeur du résultat"
* value 0..1
* interpretationCode MS
* interpretationCode 0..1
* interpretationCode ^short = "Code d'interprétation"
* interpretationCode ^definition = "Code d'interprétation"
* interpretationCode from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-hl7-v3-ObservationInterpretation-cisis (required)
* methodCode MS
* methodCode 0..1
* methodCode ^short = "Méthode ou technique employée"
* methodCode ^definition = "Méthode ou technique employée"
* methodCode from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-technique-biologie-cisis (required)
* subject MS
* subject only FRCDASujetNonHumain or FRCDAPatientAvecSujetNonHumain
* performer MS
* performer ^short = "Laboratoire sous-traitant. Apparaît à ce niveau si et et seulement si ce résultat a été produit par un laboratoire exécutant distinct du laboratoire exécutant déclaré aux niveaux supérieurs."
* performer ^definition = "Laboratoire sous-traitant"
* performer only FRCDALaboratoireExecutant
* author MS
* author ^short = "Auteur. Apparaît à ce niveau si le rendu de ce  résultat procède de cet auteur spécifique, différent de celui déclaré aux niveaux supérieurs."
* author ^definition = "Auteur"
* author only FRCDAAuthor
* participant MS
* participant ^short = "Valideur de ces résultats : typeCode='AUTHEN' [0..1] et templateId '1.3.6.1.4.1.19376.1.3.3.1.5' additionnel obligatoire. 
- Responsable de cet examen : typeCode='RESP' [0..1]
- Dispositif automatique impliqué dans la production des résultats : typeCode='DEV' [0..*]"
* participant only FRCDAParticipantCorps
* entryRelationship MS
* entryRelationship ^slicing.discriminator.type = #value
* entryRelationship ^slicing.discriminator.path = "$this"
* entryRelationship ^slicing.rules = #open
* entryRelationship contains 
frCommentaireER 0..*
 and frPrelevement 0..* and frResultatsAnterieurs 0..*
* entryRelationship[frCommentaireER] ^short = "Commentaire d'interprétation des résultats"
* entryRelationship[frCommentaireER] ^definition = "Commentaire d'interprétation des résultats"
* entryRelationship[frCommentaireER].typeCode = #SUBJ
* entryRelationship[frCommentaireER].act only FRCDACommentaireER
* entryRelationship[frPrelevement] ^short = "Prélèvement"
* entryRelationship[frPrelevement] ^definition = "Prélèvement"
* entryRelationship[frPrelevement].typeCode = #COMP
* entryRelationship[frPrelevement].procedure only FRCDAPrelevement

* entryRelationship[frResultatsAnterieurs] ^short = "Résultats antérieurs. Plusieurs résultats antérieurs peuvent être ajoutés. Ils doivent être comparables avec le résultat rendu, c'est-à-dire obtenus suivant la même méthode ou une méthode comparable, et exprimés dans la même unité ou dans le même système de codage."
* entryRelationship[frResultatsAnterieurs] ^definition = "Résultats antérieurs"
* entryRelationship[frResultatsAnterieurs].typeCode = #REFR
* entryRelationship[frResultatsAnterieurs].observation 1..1 
* entryRelationship[frResultatsAnterieurs].observation.classCode = #OBS
* entryRelationship[frResultatsAnterieurs].observation.moodCode = #EVN
* entryRelationship[frResultatsAnterieurs].observation.code MS
* entryRelationship[frResultatsAnterieurs].observation.code ^short = "Même code que l'observation de niveau supérieur"
* entryRelationship[frResultatsAnterieurs].observation.code.originalText MS
* entryRelationship[frResultatsAnterieurs].observation.code.originalText.reference 1..1 MS
* entryRelationship[frResultatsAnterieurs].observation.code.translation 0..1 MS
* entryRelationship[frResultatsAnterieurs].observation.statusCode.code = #completed
* entryRelationship[frResultatsAnterieurs].observation.effectiveTime 1..1 MS
* entryRelationship[frResultatsAnterieurs].observation.effectiveTime ^short = "Date de ce résultat antérieur"
* entryRelationship[frResultatsAnterieurs].observation.value 1..1 MS 
* entryRelationship[frResultatsAnterieurs].observation.value ^short = "Valeur de ce résultat antérieur"
* entryRelationship[frResultatsAnterieurs].observation.interpretationCode 0..1 MS
* entryRelationship[frResultatsAnterieurs].observation.interpretationCode from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-hl7-v3-ObservationInterpretation-cisis (required)
* entryRelationship[frResultatsAnterieurs].observation.methodCode 0..1 MS
* entryRelationship[frResultatsAnterieurs].observation.referenceRange 0..1 MS
* entryRelationship[frResultatsAnterieurs].observation.referenceRange.observationRange.classCode = #OBS
* entryRelationship[frResultatsAnterieurs].observation.referenceRange.observationRange.value 1..1
* entryRelationship[frResultatsAnterieurs].observation.referenceRange.observationRange.interpretationCode 1..1 MS
* entryRelationship[frResultatsAnterieurs].observation.referenceRange.observationRange.interpretationCode.code = #N
* entryRelationship[frResultatsAnterieurs].observation.referenceRange.observationRange.interpretationCode.codeSystem = "2.16.840.1.113883.5.83"
// Demande faite pour l'ajout de l'extension lab
// * entryRelationship[frResultatsAnterieurs].observation.referenceRange.observationRange.lab:precondition 0..* 