Profile: FRCDAPrelevement
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Procedure
Id: fr-cda-prelevement
Title: "CDA - FR Prelevement"
Description: "Entrée FR-Prelevement: IHE-PCC - Specimen collection. L'élément 'Prélèvement' est un élément de type 'procedure' qui permet de décrire le prélèvement et l'échantillon biologique (le matériel).Cet élément est obligatoirement inclus dans une entrée 'Résultats d'examens de biologie médicale' (Laboratory Report Data Processing Entry – 1.3.6.1.4.1.19376.1.3.1)."
* classCode MS
* moodCode MS
* moodCode = #EVN
* templateId 1..2
* templateId ^slicing.discriminator.type = #value
* templateId ^slicing.discriminator.path = "root"
* templateId ^slicing.rules = #open
* templateId contains iheSpecimenCollection 1..1
and frPrelevement 1..1
* templateId[iheSpecimenCollection].root 1..1
* templateId[iheSpecimenCollection].root = "1.3.6.1.4.1.19376.1.3.1.2"
* templateId[iheSpecimenCollection] ^short = "Conformité Specimen Collection (IHE PaLM)"
* templateId[iheSpecimenCollection] ^definition = "Conformité Specimen Collection (IHE PaLM)"
* templateId[frPrelevement].root 1..1
* templateId[frPrelevement].root = "1.2.250.1.213.1.1.3.77"
* templateId[frPrelevement] ^short = "Conformité FR-Prelevement (CI-SIS)"
* templateId[frPrelevement] ^definition = "Conformité FR-Prelevement (CI-SIS)"
* code MS
* code ^short = "Acte de prélèvement - Pour un prélèvement en vue d'examen de biologie médicale, le code affiné NABM de l'acte de prélèvement doit être renseigné si connu, sauf dans le cas d'un recueil d'échantillon effectué par le patient lui-même. Un prélèvement cytologique ou de tissu en vue d'un examen d'anatomie ou de cytologie pathologiques est codé à l'aide d'une nomenclature précisée dans les modèles de contenus métiers.Par défaut, utiliser le code suivant : code='33882-2' displayName='Prélèvement' codeSystem='2.16.840.1.113883.6.1' codeSystemName='LOINC'"
* code ^definition = "Acte de prélèvement"
* code.code 1..1 MS
* code.displayName MS
* code.codeSystem 1..1 MS
* effectiveTime MS
* effectiveTime 1..1
* effectiveTime ^short = "Date du prélèvement: La date et heure de prélèvement doit être renseignée si elle est connue. En cas d'acte ponctuel, c'est la date et heure de fin (élément high) qui horodate le prélèvement. "
* effectiveTime ^definition = "Date du prélèvement"
* targetSiteCode 0..1
* targetSiteCode ^short = "Localisation du prélèvement SNOMED CT (2.16.840.1.113883.6.96)"
* targetSiteCode ^definition = "Localisation du prélèvement"
  * originalText 0..1
    * reference 1..1
      * value 1..1 
    * mediaType 1..1
  * qualifier MS
  * qualifier ^short = "Précision topographique"
  * qualifier ^definition = "Précision topographique"
    * name MS
    * name 1..1
    * name.displayName = "modificateur topographique"
    * name.code = #106233006
    * name.codeSystem = "2.16.840.1.113883.6.96"
    * name.codeSystemName = "SNOMED-CT"
    * value MS
    * value 1..1
    * value ^short = "Valeur de la topographie"
    * value ^definition = "Valeur de la topographie"
    * value only CD
    * value from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-modificateur-topographique-cisis (required)
* participant ^slicing.discriminator.type = #value
* participant ^slicing.discriminator.path = "typeCode"
* participant ^slicing.rules = #open
* participant 0..* MS
* participant contains 
EchantillonPreleve 1..1 MS  and 
DispositifUtilise 0..* MS  and 
ProduitUtilise 0..* MS 
* participant[EchantillonPreleve] 1..1 MS
* participant[EchantillonPreleve] ^short = "Échantillon prélevé"
* participant[EchantillonPreleve] ^definition = "Échantillon prélevé"
  * typeCode = #PRD
  * participantRole 1..1
    * classCode = #SPEC
    * id 1..1 MS
    * id ^short = "Identifiant de l'échantillon - L'identifiant de l'échantillon est éventuellement multiple (premier identifiant attribué par le préleveur, puis réidentification par le laboratoire).  L'un des identifiants est visible sur l'échantillon matériel (par exemple en code barre sur le tube ou le bocal). "
    * id ^definition = "Identifiant de l'échantillon"
    * playingEntity 1..1
      * code 1..1
      * code ^short = "Nature de l'échantillon"
      * code from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-specimen-type-cisis (required)
      * quantity 0..1
      * quantity ^short = "La quantité est exprimée en valeur (@value) et unité de mesure (@unit). Si le volume est renseigné alors les deux attributs value et unit doivent être valorisés."
* participant[DispositifUtilise] 0..* MS
* participant[DispositifUtilise] ^short = "Dispositif utilisé"
* participant[DispositifUtilise] ^definition = "Dispositif utilisé"
  * typeCode = #DEV
  * participantRole 1..1
    * classCode = #MANU
    * playingDevice 1..1
      * code MS
      * code 1..1
      * code ^short = "Code du dispositif - Par exemple 'Trousse de détection HPV' "
      * code ^definition = "Code du dispositif"
* participant[ProduitUtilise] 0..* MS
* participant[ProduitUtilise] ^short = "Produit utilisé"
* participant[ProduitUtilise] ^definition = "Produit utilisé"
  * typeCode = #CSM
  * participantRole 1..1
    * classCode = #ADTV
    * playingDevice 1..1
      * code MS
      * code 1..1
      * code ^short = "Code du produit - Par exemple 'Milieu' pour le test HPV "
      * code ^definition = "Code du produit"
* performer 0..1
* performer only FRCDAPerformerCorps
* performer ^short = "Organisation prélevante"
* performer ^definition = "Organisation prélevante"
* entryRelationship
  * typeCode = #COMP
  * act 1..1
    * classCode MS
    * classCode = #ACT
    * moodCode MS
    * moodCode = #EVN
    * templateId 1..2
    * templateId ^slicing.discriminator.type = #value
    * templateId ^slicing.discriminator.path = "root"
    * templateId ^slicing.rules = #open
    * templateId contains iheSpecimenReceived 1..1
    and frEchantillonDateReception 0..1
    * code MS
    * code 1..1
    * code.code = #SPRECEIVE
    * code.displayName = "Échantillon reçu"
    * code.codeSystem = "1.3.5.1.4.1.19376.1.5.3.2"
    * code.codeSystemName = "IHEActCode"
    * effectiveTime MS
    * effectiveTime 1..1
    * effectiveTime ^short = "Date de réception de l'échantillon"
