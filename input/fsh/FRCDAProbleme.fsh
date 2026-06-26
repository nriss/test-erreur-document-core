Profile: FRCDAProbleme
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Observation
Id: fr-cda-probleme
Title: "CDA - FR Probleme"
Description: "Entrée FR-Probleme: IHE-PCC - Problem-Entry. Cette entrée permet de décrire un problème du patient (une pathologie par exemple) en précisant :  Le type de problème observé : problème, plainte, symptôme, diagnostic, etc. Le problème observé (en général, la pathologie observée), La sévérité, Le statut du problème (sauf pour une réaction à une allergie/hypersensibilité), Le statut clinique du patient (sauf pour une réaction à une allergie/hypersensibilité), Un commentaire."
* classCode MS
* classCode = #OBS
* moodCode MS
* moodCode = #EVN
* negationInd ^short = "Les attributs de cet élément prennent les valeurs suivantes : @classCode='OBS' (observation d’un problème) @moodCode='EVN' (observation ayant eu lieu) @negationInd=‘false’ signifie que l’élément observé a eu lieu @negationInd=‘true’ signifie que l’élément observé n’a pas eu lieu (donnant par exemple ‘absence de fièvre’ si l’élément observé est ‘fièvre’). @negationInd absent dans le cas où on ne sait pas."
* id 1..1 MS
* id ^short = "Identifiant de l'entrée"
* id ^definition = "Identifiant de l'entrée"
* templateId 1..4
* templateId ^slicing.discriminator.type = #value
* templateId ^slicing.discriminator.path = "root"
* templateId ^slicing.rules = #open
* templateId contains iheProblemEntry 1..1
and ccdProblemObservation 1..1
and ccdReactionObservation 0..1
and frProbleme 1..1
* templateId[iheProblemEntry] 1..1
* templateId[iheProblemEntry].root = "1.3.6.1.4.1.19376.1.5.3.1.4.5"
* templateId[iheProblemEntry] ^short = "Conformité Problem Entry (IHE PCC)"
* templateId[iheProblemEntry] ^definition = "Conformité Problem Entry (IHE PCC)"
* templateId[ccdProblemObservation].root 1..1
* templateId[ccdProblemObservation].root = "2.16.840.1.113883.10.20.1.28"
* templateId[ccdProblemObservation] ^short = "Conformité Problem observation (CCD)"
* templateId[ccdProblemObservation] ^definition = "Conformité Problem observation (CCD)"
* templateId[ccdReactionObservation].root 0..1
* templateId[ccdReactionObservation].root = "2.16.840.1.113883.10.20.1.54"
* templateId[ccdReactionObservation] ^short = "Conformité Reaction observation (CCD) - Ajouter cet OID si l'entrée FR-Probleme est appelée, via un entryRela-tionship, dans une entrée FR-Allergie-ou-hypersensibilite ou une entrée FR-Vaccination, pour indiquer que ce problème est une réaction observée."
* templateId[ccdReactionObservation] ^definition = "Conformité Reaction observation (CCD)"
* templateId[frProbleme].root 1..1
* templateId[frProbleme].root = "1.2.250.1.213.1.1.3.37"
* templateId[frProbleme] ^short = "Conformité FR-Probleme (CI-SIS)"
* templateId[frProbleme] ^definition = "Conformité FR-Probleme (CI-SIS)"
* code MS
* code ^short = "Type d'observation"
* code ^definition = "Type d'observation"
* code from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-code-probleme-cisis (required)
* code.code 1..1 MS
* code.displayName MS
* code.codeSystem 1..1 MS
* text MS
* text 1..1
* text ^short = "Description narrative du problème : cet élément permet de décrire le problème enregistré, les dates, commentaires, etc."
* text.reference 1..1 MS
* statusCode MS
* statusCode 1..1
* statusCode ^short = "Statut de l’entrée"
* statusCode ^definition = "Statut de l’entrée"
* statusCode.code = #completed
* effectiveTime MS
* effectiveTime 1..1
* effectiveTime ^short = "Dates de début et de fin du problème"
* effectiveTime ^definition = "Dates de début et de fin du problème"
* value MS
* value 1..1
* value only CD
* value ^short = "Problème observé. La valeur de l'élément value peut être: CIM-10 pour les pathologie  et réactions à une vaccination : Si le problème observé n'est pas trouvé dans la terminologie CIM-10, utiliser le code='R69' displayName='Causes inconnues et non précisées de morbidité' codeSystem='2.16.840.1.113883.6.3' codeSystemName='CIM-10' et décrire le problème sous forme de texte libre dans la partie narrative avec une référence vers l'entrée correspondante ; Réaction allergique: CIM-11 (2.16.840.1.113883.6.347) provenant du JDV_AllergieReaction_CISIS (1.2.250.1.213.1.1.5.674)/ Chapitre 04 Maladies du système immunitaire / Bloc Affections allergiques ou d'hyper-sensibilité ; >Si pas de problème ou pas d'information </b>: JDV_AbsentOrUnknownProblem_CISIS (1.2.250.1.213.1.1.5.662)"
  * originalText MS
    * reference MS
  * qualifier MS
* entryRelationship MS
* entryRelationship 0..*
* entryRelationship ^slicing.discriminator.type = #value
* entryRelationship ^slicing.discriminator.path = "$this"
* entryRelationship ^slicing.rules = #open
* entryRelationship contains 
frSeverite 0..1
 and frStatutDuProbleme 0..1
 and frStatutCliniqueDuPatient 0..1
 and frCertitude 0..1
 and frCommentaireER 0..1
* entryRelationship[frSeverite].observation only FRCDASeverite
* entryRelationship[frSeverite] ^short = "Sévérité"
* entryRelationship[frSeverite].typeCode = #SUBJ
* entryRelationship[frSeverite].inversionInd = true
* entryRelationship[frStatutDuProbleme].observation only FRCDAStatutDuProbleme
* entryRelationship[frStatutDuProbleme] ^short = "Statut du problème"
* entryRelationship[frStatutDuProbleme].typeCode = #REFR
* entryRelationship[frStatutDuProbleme].inversionInd = false
* entryRelationship[frStatutCliniqueDuPatient].observation only FRCDAStatutCliniqueDuPatient
* entryRelationship[frStatutCliniqueDuPatient] ^short = "Statut clinique du patient"
* entryRelationship[frStatutCliniqueDuPatient].typeCode = #REFR
* entryRelationship[frStatutCliniqueDuPatient].inversionInd = false
* entryRelationship[frCertitude].observation only FRCDACertitude
* entryRelationship[frCertitude] ^short = "certitude"
* entryRelationship[frCertitude].typeCode = #SUBJ
* entryRelationship[frCertitude].inversionInd = true
* entryRelationship[frCommentaireER].act only FRCDACommentaireER
* entryRelationship[frCommentaireER] ^short = "Commentaire"
* entryRelationship[frCommentaireER].typeCode = #SUBJ
* entryRelationship[frCommentaireER].inversionInd = true
* reference 0..*
* reference ^short = "Document référencé"
  * typeCode = #REFR
  * externalDocument 1..1
    * classCode = #DOC
    * id 1..1 MS
    * id ^short = "Identifiant du document"
    * text 1..1
      * reference 0..1
      * reference ^short = "Cet élément contient l’URL du document. L’adresse du document est indiqué dans la partie narrative de la section par le biais d’un lien linkHtml"
