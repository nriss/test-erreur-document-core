Profile: FRCDABatterieExamensDeBiologieMedicale
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Organizer
Id: fr-cda-batterie-examens-de-biologie-medicale
Title: "CDA - FR Batterie examens de biologie medicale"
Description: "Entrée FR-Batterie-examens-de-biologie-medicale: IHE-PCC - Laboratory Battery Organizer. L'entrée Batterie d'examens de biologie médicale est une entrée de type 'organizer' qui permet de décrire des examens de biologie médicale comprenant un ou plusieurs éléments porteurs de résultats et d'éventuels commentaires interprétant cet ensemble de résultats. L'examen de biologie médicale peut préciser des participants qui lui sont propres (validateur, auteur, responsable, laboratoire sous-traitant, automate …) et peut aussi décrire son échantillon biologique."
* classCode MS
* classCode = #BATTERY
* moodCode MS
* id 0..1 MS
* id ^short = "Identifiant de l'entrée"
* id ^definition = "Identifiant de l'entrée"
* templateId 1..2
* templateId ^slicing.discriminator.type = #value
* templateId ^slicing.discriminator.path = "root"
* templateId ^slicing.rules = #open
* templateId contains iheLaboratoryBatteryOrganizer 1..1
and frBatterieExamensDeBiologieMedicale 1..1
* templateId[iheLaboratoryBatteryOrganizer].root 1..1
* templateId[iheLaboratoryBatteryOrganizer].root = "1.3.6.1.4.1.19376.1.3.1.4"
* templateId[iheLaboratoryBatteryOrganizer] ^short = "Conformité Laboratory Battery Organizer (IHE PaLM)"
* templateId[iheLaboratoryBatteryOrganizer] ^definition = "Conformité Laboratory Battery Organizer (IHE PaLM)"
* templateId[frBatterieExamensDeBiologieMedicale].root 1..1
* templateId[frBatterieExamensDeBiologieMedicale].root = "1.2.250.1.213.1.1.3.78"
* templateId[frBatterieExamensDeBiologieMedicale] ^short = "Conformité FR-Batterie-examens-de-biologie-medicale (CI-SIS)"
* templateId[frBatterieExamensDeBiologieMedicale] ^definition = "Conformité FR-Batterie-examens-de-biologie-medicale (CI-SIS)"
* code MS
* code ^short = "Code de la batterie d'examen"
* code ^definition = "Code de la batterie d'examen"
  * originalText MS
    * reference 1..1
    * reference ^short = "Référence à l'expression verbale dans la partie visualisable du compte-rendu"
    * reference ^definition = "Référence à l'expression verbale dans la partie visualisable du compte-rendu"
  * translation 0..1
  * translation ^short = "Code d'identification d'attente national ou code de portée locale"
  * translation ^definition = "Code d'identification d'attente national ou code de portée locale"
* code.code 1..1 MS
* code.displayName  MS
* code.codeSystem 1..1 MS
* statusCode MS
* statusCode 1..1
* statusCode ^short = "Niveau de complétude"
* statusCode ^definition = "Niveau de complétude"
* statusCode from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-hl7-v3-ActStatus-cisis (required)
* effectiveTime MS
* effectiveTime ^short = "Date de l'examen"
* effectiveTime ^definition = "Date de l'examen"
* subject MS
* subject only FRCDASujetNonHumain or FRCDAPatientAvecSujetNonHumain
* subject ^short = "Sujet non humain - Cet élément doit être présent lorsque le sujet des observations est un échantillon provenant d'un sujet non humain (animal ou autre élément environnemental). Le sujet non humain doit aussi être décrit dans l'en-tête du document. Participant avec sujet non humain - Cet élément doit être présent lorsque le sujet des observations de cette partie du compte rendu est un échantillon provenant d'un sujet non humain (animal ou autre élément environnemental), tandis que les autres parties du rapport sont liés au patient humain. Le sujet non humain doit aussi être décrit dans l'en-tête du document."
* subject ^definition = "Sujet non humain ou Participant avec sujet non humain"
* performer only FRCDALaboratoireExecutant
* performer ^short = "Laboratoire sous-traitant - Apparaît à ce niveau si et et seulement si ce résultat a été produit par un laboratoire exécutant distinct du laboratoire exécutant déclaré aux niveaux supérieurs."
* performer ^definition = "Laboratoire sous-traitant"
* participant only FRCDAParticipantCorps
* participant ^short = "Participant - Les attributs de cet élément prennent les valeurs suivantes : @typeCode= 'AUTHEN' pour 'Valideur de ces résultats' @typeCode='RESP' pour 'Responsable de cet examen' @typeCode='DEV' pour 'Dispositif automatique impliqué dans la production des résultats'"
* participant ^definition = "Participant"
* author only FRCDAAuthor
* author ^short = "Auteur - Apparaît à ce niveau si le rendu de ce  résultat procède de cet auteur spécifique, différent de celui déclaré aux niveaux supérieurs. Constraint @typeCode='AUT'"
* component MS
* component ^slicing.discriminator.type = #type
* component ^slicing.discriminator.path = "$this"
* component ^slicing.rules = #open
* component contains
frPrelevement 0..* and
frResultatExamensDeBiologieElementCliniquePertinent 0..* and
frImageIllustrative 0..* and
frCommentaireER 0..*
* component[frPrelevement].procedure
* component[frPrelevement].procedure only FRCDAPrelevement
* component[frPrelevement] ^short = "Prélèvement"
* component[frPrelevement].typeCode = #COMP
* component[frResultatExamensDeBiologieElementCliniquePertinent] ^short = "Résultat d'examen de biologie / élément clinique pertinent"
* component[frResultatExamensDeBiologieElementCliniquePertinent].typeCode = #COMP
* component[frResultatExamensDeBiologieElementCliniquePertinent].observation only FRCDAResultatExamensDeBiologieElementCliniquePertinent
* component[frImageIllustrative] ^short = "Image illustrative"
* component[frImageIllustrative].typeCode = #COMP
* component[frImageIllustrative].observationMedia only FRCDAImageIllustrative
* component[frCommentaireER] ^short = "Commentaire"
* component[frCommentaireER].act only FRCDACommentaireER
* component[frCommentaireER].typeCode = #SUBJ
