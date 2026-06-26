Profile: FRCDACommentaireER
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Act
Id: fr-cda-commentaire-er
Title: "CDA - FR Commentaire ER"
Description: "Entrée FR-Commentaire-ER: IHE-PCC - Comments L’entrée FR-Commentaire-ER est un élément qui permet de joindre un commentaire à une entrée ou à une section.  Note : IHE PCC a limité l’utilisation de l’élément « Comments » (1.3.6.1.4.1.19376.1.5.3.1.4.2) aux entrées de type observation et organizer. Ce n’est pas le cas dans CDD pour l’élément « Comment » (2.16.840.1.113883.10.20.1.40). Dans le CI-SIS, le choix a été fait de ne pas limiter l’utilisation de l’entrée FR-Commentaire-ER (1.3.6.1.4.1.19376.1.5.3.1.4.2) comme dans CCD. Lorsque l’entrée FR-Commentaire-ER est utilisée dans une entrée : de type organizer : l’utiliser dans un élément component avec l’attribut type-Code='COMP'.de type observation ou act, etc… : l’utiliser dans un élément entryRelationship avec les attributs typeCode='SUBJ' et inversionInd='true'. "
* classCode MS
* classCode = #ACT
* moodCode MS
* moodCode = #EVN
* templateId 1..3
* templateId ^slicing.discriminator.type = #value
* templateId ^slicing.discriminator.path = "root"
* templateId ^slicing.rules = #open
* templateId contains ccdComment 1..1
and iheCommentEntry 1..1
and frCommentaireER 1..1
* templateId[ccdComment].root 1..1
* templateId[ccdComment].root = "2.16.840.1.113883.10.20.1.40"
* templateId[ccdComment] ^short = "Conformité Comment (CCD) "
* templateId[ccdComment] ^definition = "Conformité Comment (CCD)"
* templateId[iheCommentEntry].root 1..1
* templateId[iheCommentEntry].root = "1.3.6.1.4.1.19376.1.5.3.1.4.2"
* templateId[iheCommentEntry] ^short = "Conformité Comment Entry (IHE PCC)"
* templateId[iheCommentEntry] ^definition = "Conformité Comment Entry (IHE PCC)"
* templateId[frCommentaireER].root 1..1
* templateId[frCommentaireER].root = "1.2.250.1.213.1.1.3.32"
* templateId[frCommentaireER] ^short = "Conformité FR-Commentaire-ER (CI-SIS)"
* templateId[frCommentaireER] ^definition = "Conformité FR-Commentaire-ER (CI-SIS)"
* code MS
* code ^short = "Code de l'entrée"
* code ^definition = "Code de l'entrée"
* code.code = #48767-8
* code.displayName = "Commentaire"
* code.codeSystem = "2.16.840.1.113883.6.1"
* code.codeSystemName = "LOINC"
* code.code 1..1 MS
* code.displayName MS
* code.codeSystem 1..1 MS
* text MS
* text 1..1
* text ^short = "Texte du commentaire"
* text ^definition = "Texte du commentaire"
  * reference 1..1
* statusCode MS
* statusCode 1..1
* statusCode ^short = "Statut de l'entréeFixé à la valeur 'completed'"
* statusCode ^definition = "Statut de l'entrée"
* statusCode.code = #completed
* author 0..1
* author only FRCDAAuthor
