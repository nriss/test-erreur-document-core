Profile: FRCDADirectiveAnticipee
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Observation
Id: fr-cda-directive-anticipee
Title: "CDA - FR Directive anticipee"
Description: "Entrée FR-Directive-anticipee: IHE-PCC - Advance-Directive-Observation. Cette entrée permet d’indiquer si les directives anticipées du patient. Article L1111-11 du Code de la Santé Publique : « Toute personne majeure peut rédiger des directives anticipées pour le cas où elle serait un jour hors d'état d'exprimer sa volonté. Ces directives anticipées expriment la volonté de la personne relative à sa fin de vie en ce qui concerne les conditions de la poursuite, de la limitation, de l'arrêt ou du refus de traitement ou d'acte médicaux.»."
* classCode MS
* classCode = #OBS
* moodCode MS
* moodCode = #EVN
* id 1..1 MS
* id ^short = "Identifiant de l'entrée"
* id ^definition = "Identifiant de l'entrée"
* templateId 1..4
* templateId ^slicing.discriminator.type = #value
* templateId ^slicing.discriminator.path = "root"
* templateId ^slicing.rules = #open
* templateId contains iheAdvancedDirectiveObservation 1..1
and iheSimpleObservation 1..1
and ccdAdvancedDirectiveObservation 1..1
and frDirectiveAnticipee 1..1
* templateId[iheAdvancedDirectiveObservation].root 1..1
* templateId[iheAdvancedDirectiveObservation].root = "1.3.6.1.4.1.19376.1.5.3.1.4.13.7"
* templateId[iheAdvancedDirectiveObservation] ^short = "Conformité Advanced Directive Observation (IHE PCC)"
* templateId[iheAdvancedDirectiveObservation] ^definition = "Conformité Advanced Directive Observation (IHE PCC)"
* templateId[iheSimpleObservation] 1..1
* templateId[iheSimpleObservation].root = "1.3.6.1.4.1.19376.1.5.3.1.4.13"
* templateId[iheSimpleObservation] ^short = "Conformité Simple Observation (IHE PCC)"
* templateId[iheSimpleObservation] ^definition = "Conformité Simple Observation (IHE PCC)"
* templateId[ccdAdvancedDirectiveObservation].root 1..1
* templateId[ccdAdvancedDirectiveObservation].root = "2.16.840.1.113883.10.20.1.17"
* templateId[ccdAdvancedDirectiveObservation] ^short = "Conformité Advanced Directive Observation (CCD)"
* templateId[ccdAdvancedDirectiveObservation] ^definition = "Conformité Advanced Directive Observation (CCD)"
* templateId[frDirectiveAnticipee].root  1..1
* templateId[frDirectiveAnticipee].root = "1.2.250.1.213.1.1.3.54"
* templateId[frDirectiveAnticipee] ^short = "Conformité FR-Directive-Anticipée (CI-SIS)"
* templateId[frDirectiveAnticipee] ^definition = "Conformité FR-Directive-Anticipée (CI-SIS)"
* code MS
* code ^short = "Type de la directive anticipée - La valeur est issue du jeu de valeurs JDV_TypeDirectiveAnticipee_CISIS (1.2.250.1.213.1.1.5.136)."
* code ^definition = "Type de la directive anticipée"
* code from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-type-directive-anticipee-cisis (required)
* code.code 1..1 MS
* code.displayName MS
* code.codeSystem 1..1 MS
* text MS
* text 1..1
* text ^short = "Partie narrative de l'observation"
  * reference 1..1
  * reference ^short = "Partie narrative de l'observation"
* statusCode MS
* statusCode 1..1
* statusCode ^short = "Statut de l'observation - Fixé à la valeur 'completed'"
* statusCode ^definition = "Statut de l'observation"
* statusCode.code = #completed
* effectiveTime MS
* effectiveTime 1..1
* effectiveTime ^short = "Date de la directive anticipée"
* effectiveTime ^definition = "Date de la directive anticipée"
* value MS
* value 0..1
* value only BL
* value ^short = "Procédure autorisée ou pas - La valeur de la directive identifiée est un élément booléen (xsi:type='BL') qui permet d’indiquer l’autorisation ou la non autorisation, sauf :- si l’élément 'code' est 'Autre directive' : dans ce cas, l'élément 'value' n'est pas présent et la précision est fournie dans la partie narrative (via l'élément: text/reference), - si l’élément 'code' est 'Directives anticipées' : dans ce cas, l'élément 'value' n'est pas présent et un document encodé en B64 est encapsulé dans l'élément 'component/observationMedia'."
* value ^definition = "Procédure autorisée ou pas"
* reference 0..1
* reference ^short = "Référence à un document externe - Un lien vers un document externe contenant la directive concernée peut être fourni dans l’élément 'externalDocument' avec l’élément 'id' portant l’identifiant du document de manière univoque et l’élément 'text' contenant le lien URL pour accéder à ce document.'"
* reference ^definition = "Référence à un document externe"
  * typeCode = #REFR
  * templateId 1..1
  * templateId.root = "2.16.840.1.113883.10.20.1.36"
  * externalDocument 1..1
    * classCode = #DOC 
    * id 1..1
    * id ^short = "Identifiant du document externe"
    * id ^definition = "Identifiant du document externe"
    * text ^short = "Lien vers le document externe"
      * reference 1..1
* entryRelationship 0..1 MS
  * typeCode = #COMP
  * observationMedia 1..1
  * observationMedia ^short = "observationMedia"
  * observationMedia ^definition = "observationMedia"
    * id 0..1
    * id ^short = "Identifiant observationMedia"
    * id ^definition = "Identifiant observationMedia"
    * value MS
    * value 1..1
    * value ^short = "Document encapsulé encodée en Base64"
      * mediaType from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-hl7-v3-MediaType-cisis (required)
      * representation 1..1
      * representation ^short = "Fixed: B64"
