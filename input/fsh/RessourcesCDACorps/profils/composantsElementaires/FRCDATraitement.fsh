Profile: FRCDATraitement
Parent: http://hl7.org/cda/stds/core/StructureDefinition/SubstanceAdministration
Id: fr-cda-traitement
Title: "CDA - FR Traitement"
Description: "Entrée FR-Traitement: IHE-PCC - Medications. L'entrée 'Traitement' est une entrée de type 'substanceAdministration' décrivant les modalités d'administration d'un médicament au patient. Elle permet de décrire notamment le médicament, le mode d'administration, la quantité, la durée et la fréquence d'administration."
* classCode MS
* moodCode MS
* moodCode ^short = "Si le traitement a déjà été administré
ou si information rapportée par le patient
ou si aucun traitement : moodCode='EVN' ;     
Si le traitement est en attente d'administration : moodCode='INT'"
* moodCode ^definition = "Si le traitement a déjà été administré ou si information rapportée par le patient ou si aucun traitement; si le traitement est en attente d'administration"
* id 1..* MS
* id ^short = "Identifiant de l'entrée"
* id ^definition = "Identifiant de l'entrée"
* templateId 1..12
* templateId ^slicing.discriminator.type = #value
* templateId ^slicing.discriminator.path = "root"
* templateId ^slicing.rules = #open
* templateId contains ccdMedicationActivity 1..1
and iheMedicationsEntry 1..1
and frTraitement 1..1
and ihePosologieStructuree 0..1
and iheModeAdministrationNormal 0..1
and iheModeAdministrationDosesProgressives 0..1
and iheModeAdministrationDosesFractionnees 0..1
and iheModeAdministrationDosesConditionnelles 0..1
and iheModeAadministrationDosesCombinees 0..1
and iheModeAadministrationDosesDebutDiffere 0..1
and frTraitementLongCours 0..1
and frTraitementAigu 0..1
* templateId[ccdMedicationActivity].root 1..1
* templateId[ccdMedicationActivity].root = "2.16.840.1.113883.10.20.1.24"
* templateId[ccdMedicationActivity] ^short = "Conformité Medication Activity (CCD)"
* templateId[ccdMedicationActivity] ^definition = "Conformité Medication Activity (CCD)"
* templateId[iheMedicationsEntry].root 1..1
* templateId[iheMedicationsEntry].root = "1.3.6.1.4.1.19376.1.5.3.1.4.7"
* templateId[iheMedicationsEntry] ^short = "Conformité Medications Entry (IHE PCC)"
* templateId[iheMedicationsEntry] ^definition = "Conformité Medications Entry (IHE PCC)"
* templateId[frTraitement].root 1..1
* templateId[frTraitement].root = "1.2.250.1.213.1.1.3.42"
* templateId[frTraitement] ^short = "Conformité FR-Traitement (CI-SIS)"
* templateId[frTraitement] ^definition = "Conformité FR-Traitement (CI-SIS)"
* templateId[ihePosologieStructuree].root 1..1
* templateId[ihePosologieStructuree].root = "1.3.6.1.4.1.19376.1.9.1.3.6"
* templateId[ihePosologieStructuree] ^short = "Conformité Posologie structurée"
* templateId[ihePosologieStructuree] ^definition = "Conformité Posologie structurée"
* templateId[iheModeAdministrationNormal].root 1..1
* templateId[iheModeAdministrationNormal].root = "1.3.6.1.4.1.19376.1.5.3.1.4.7.1"
* templateId[iheModeAdministrationNormal] ^short = "Mode d'administration : normal. Administration sans précaution particulière à prendre. Dans ce cas, ne pas utiliser d'entrée subordonnée."
* templateId[iheModeAdministrationNormal] ^definition = "Mode d'administration : normal"
* templateId[iheModeAdministrationDosesProgressives].root 1..1
* templateId[iheModeAdministrationDosesProgressives].root = "1.3.6.1.4.1.19376.1.5.3.1.4.8"
* templateId[iheModeAdministrationDosesProgressives] ^short = "Mode d'administration : doses progressives. Administration pour les médicamments dont la posologie optimale (ou l'arrêt) n'est obtenue que progressivement, par paliers. Par exemple :
- 0.5 mg par jour pendant 3 jours ;
- puis 1 mg par jour les 5 jours suivants ;
- puis 2 mg par jour.
Souvent, en particulier lorsque l'arrêt brusque du traitement peut avoir des conséquences négatives, les doses sont réduites progressivement. Les doses peuvent être ajustées en modifiant la fréquence de la dose, la quantité de la dose, ou les deux. Lorsque la fréquence de la dose est simplement ajustée (par ex. 5 mg de prednisone deux fois par jour pendant trois jours, puis 5 mg par jour pendant trois jours, puis 5 mg tous les deux jours), 
une seule entrée Traitement est nécessaire et les différentes fréquences sont enregistrées dans l'élement. Lorsque la dose varie (par ex. 15 mg de prednisone par jour pendant trois jours, puis 10 mg par jour pendant trois jours, puis 5 mg par jour pendant trois jours), un composant subordonné doit être créé pour chaque dose."
* templateId[iheModeAdministrationDosesProgressives] ^definition = "Mode d'administration : doses progressives"
* templateId[iheModeAdministrationDosesFractionnees].root 1..1
* templateId[iheModeAdministrationDosesFractionnees].root = "1.3.6.1.4.1.19376.1.5.3.1.4.9"
* templateId[iheModeAdministrationDosesFractionnees] ^short = "Mode d'administration : doses fractionnées. Administration de médicaments dont la posologie varie d'un jour sur l'autre. Par exemple : Coumadine : ¼ cp les jours pairs et ½ cp les jours impairs. 
Une dose fractionnée est souvent utilisée lorsque différentes doses sont administrées à différents moments (par ex. à différents moments de la journée ou sur des jours différents). Il peut s'agir de tenir compte de différents taux métaboliques à différents moments de la journée ou simplement d'aborder les carences du boîtage des médicaments (par ex. 2 mg de Coumadin les jours pairs et 2,5 mg les jours impairs parce que la Coumadine n'existe pas sous une forme posologique à 2,25 mg).
Dans ce cas, une entrée subordonnée  est requise pour chaque dose fractionnée."
* templateId[iheModeAdministrationDosesFractionnees] ^definition = "Mode d'administration : doses fractionnées"
* templateId[iheModeAdministrationDosesConditionnelles].root 1..1
* templateId[iheModeAdministrationDosesConditionnelles].root = "1.3.6.1.4.1.19376.1.5.3.1.4.10"
* templateId[iheModeAdministrationDosesConditionnelles] ^short = "Mode d'administration : doses conditionnelles. Administration en fonction d'un événement (typiquement dosage de la glycémie pour les diabétiques). 
Une dose conditionnelle est souvent utilisée lorsque la quantité de la dose diffère en fonction de certaines mesures (p. ex. une dose d'insuline en fonction du taux de glycémie). Dans ce cas, une entrée subordonnée  est requise pour chaque dose conditionnelle."
* templateId[iheModeAdministrationDosesConditionnelles] ^definition = "Mode d'administration : doses conditionnelles"
* templateId[iheModeAadministrationDosesCombinees].root 1..1
* templateId[iheModeAadministrationDosesCombinees].root = "1.3.6.1.4.1.19376.1.5.3.1.4.11"
* templateId[iheModeAadministrationDosesCombinees] ^short = "Mode d'administration : doses combinées. Administration de médicaments combinés à d'autres dans le contexte d'une même prise. Une association médicamenteuse est composée de deux ou plusieurs autres médicaments. 
Ceux-ci peuvent être préemballés, comme l'Acuilix, qui est une combinaison d'hydrochlorothiazide et de quinapril dans des proportions prédéfinies, ou préparés par un pharmacien. 
Dans le cas d'une association médicamenteuse préemballée, il suffit de fournir le nom du produit médicamenteux d'association et la désignation de sa concentration dans une seule entrée . L'information posologique doit ensuite être enregistrée sous la forme d'un simple comptage des unités d'administration.
Dans le cas d'un mélange préparé, la description du mélange doit être fournie en tant que nom du produit, dans l'entrée . Cette entrée peut, mais ce n'est pas obligatoire, avoir des entrées subordonnées sous cette entrée pour enregistrer les composants du mélange."
* templateId[iheModeAadministrationDosesCombinees] ^definition = "Mode d'administration : doses combinées"
* templateId[iheModeAadministrationDosesDebutDiffere].root 1..1
* templateId[iheModeAadministrationDosesDebutDiffere].root = "1.3.6.1.4.1.19376.1.5.3.1.4.21"
* templateId[iheModeAadministrationDosesDebutDiffere] ^short = "Mode d'administration : doses à début différé. Administration de médicaments dont le début est différée et ne peut être calculés. Exemples : 3 jours avant le voyage, 1 jour avant une intervention. Dans ce cas, ne pas utiliser de  subordonné."
* templateId[iheModeAadministrationDosesDebutDiffere] ^definition = "Mode d'administration : doses à début différé"
* templateId[frTraitementLongCours].root 1..1
* templateId[frTraitementLongCours].root = "1.2.250.1.213.1.1.3.42.3"
* templateId[frTraitementLongCours] ^short = "Traitement au long cours"
* templateId[frTraitementLongCours] ^definition = "Traitement au long cours"
* templateId[frTraitementAigu].root 1..1
* templateId[frTraitementAigu].root = "1.2.250.1.213.1.1.3.42.4"
* templateId[frTraitementAigu] ^short = "Traitement aigu"
* templateId[frTraitementAigu] ^definition = "Traitement aigu"
* code MS
* code ^short = "Acte ou situation"
* code ^definition = "Acte ou situation"
* code from FRValueSetCodeTraitement (required)
* code.code 1..1 MS
* code.displayName MS
* code.codeSystem 1..1 MS
* text MS
* text 1..1
* text ^short = "Partie narrative de l’entrée"
* text.reference 1..1 MS
* statusCode MS
* statusCode 1..1
* statusCode ^short = "Statut de l’entrée : Fixé à la valeur 'completed' car l’administration a déjà été réalisée ou ordonnée"
* statusCode ^definition = "Statut de l’entrée"
* statusCode.code = #completed

* effectiveTime MS
* effectiveTime ^slicing.discriminator.type = #pattern
* effectiveTime ^slicing.discriminator.path = "operator"
* effectiveTime ^slicing.rules = #open
* effectiveTime contains effectiveTimeDuree 0..1 and effectiveTimeFrequence 0..*

* effectiveTime[effectiveTimeDuree] obeys fr-operator-not-a
* effectiveTime[effectiveTimeDuree] ^short = "Durée de traitement"
* effectiveTime[effectiveTimeDuree] obeys fr-effectiveTime-duree-type

* effectiveTime[effectiveTimeFrequence] obeys fr-operator-a
* effectiveTime[effectiveTimeFrequence] ^short = "Fréquence d'administration"
* effectiveTime[effectiveTimeFrequence] obeys fr-effectiveTime-frequence-types

* routeCode MS
* routeCode ^short = "Voie d'administration : Si la voie d'administration est connue, elle doit être indiquée (code et displayName). Si elle n'est pas connue, la raison pour laquelle elle est inconnue peut être décrite en utilisant l'attribut nullFlavor.Terminologie utilisée :  EDQM - Standard terms / classe ROA (Voie d'administration)"
* routeCode ^definition = "Voie d'administration"
* approachSiteCode ^short = "Région anatomique d'administration : La région anatomique d'administration provient du JDV_HumanSubstanceAdministrationSite_CISIS (1.2.250.1.213.1.1.5.686) (Terminologie SNOMED CT 2.16.840.1.113883.6.96). Cet élément doit contenir une référence pointant sur l'élément correspondant de la partie narrative où la région anatomique est décrite."
* approachSiteCode ^definition = "Région anatomique d'administration"
* approachSiteCode from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-human-substance-administration-site-cisis (required)
* approachSiteCode.originalText MS
* approachSiteCode.originalText.reference 1..1 MS
* doseQuantity MS
* doseQuantity ^short = """Dose à administrer : \r\n
S'il n'y a pas de traitement, utiliser une valeur nullFlavor.
S'il y a un traitement, les sous-éléments 'low' et 'high' permettent de fournir les doses minimales et maximales à administrer. Dans le cas où la dose est fixe, ces deux sous-éléments prendront les mêmes valeurs. Dans chaque élément 'low' et 'high', un élément 'translation' peut permettre de pointer sur l'élément de la partie narrative relative à cette information.
Dans le cas où l'on s'exprime en quantités indénombrables, l'unité doit être transmise. Les unités sont exprimées selon le système de codage UCUM.
Dans le cas où l'on s'exprime en quantités dénombrables (capsules, comprimés, gélules, etc.) l'unité ne doit pas être renseignée. A la place, on ajoute un champ 'translation' qui permet de pointer sur l'élément de la partie narrative relative à cette information.
"""
* doseQuantity ^definition = "Dose à administrer"
  * low MS
  * low.translation 0..1 MS
  * low.translation.originalText 1..1 MS
  * low.translation.originalText.reference 1..1 MS
  * high MS
  * high.translation 0..1 MS
  * high.translation.originalText 1..1 MS
  * high.translation.originalText.reference 1..1 MS
* rateQuantity ^short = """Rythme d'administration : \r\n
Le rythme d'administration permet d'indiquer la quantité de produit à administrer par unité de temps.
Les sous-éléments 'low' et 'high' permettent de fournir le rythme minimal et maximal de l'administration. Dans le cas où le rythme est fixe, ces deux sous-éléments prendront les mêmes valeurs.
L'argument @value permet d'indiquer la quantité de produit à administrer.
L'argument @unit permet d'indiquer le rythme d'administration en combinant l'unité de quantité et l'unité de temps (séparés par le caractère ‘/'). Les unités sont exprimées selon le système de codage UCUM.
Dans chaque élément 'low' et 'high', un élément 'translation' peut permettre de pointer sur l'élément de la partie narrative relative à cette information.
"""
* rateQuantity MS
  * low 1..1 MS
  * low.translation 0..1 MS
  * low.translation.originalText 1..1 MS
  * low.translation.originalText.reference 1..1 MS
  * high 1..1 MS
  * high.translation 0..1 MS
  * high.translation.originalText 1..1 MS
  * high.translation.originalText.reference 1..1 MS
  * nullFlavor MS
* maxDoseQuantity MS
* maxDoseQuantity ^short = """Dose maximale à administrer : \r\n
La dose maximale à 'maxDoseQuantity' permet d'indiquer la quantité maximale de produit à administrer par unité de temps.
Plusieurs occurrences de 'maxDoseQuantity' peuvent être utilisées pour indiquer différentes limites sur différentes périodes de temps.
Les sous-éléments 'numerator' et 'denominator' permettent de fournir :
- numerator : la quantité maximale à administrer,
- denominator : la plage de temps sur laquelle s'applique ce maximum.
Les unités sont exprimées selon le système de codage UCUM.
"""
  * numerator 1..1 MS
    * unit MS
    * value MS
  * denominator 1..1 MS
    * unit MS
    * value MS
* consumable only FRCDAProduitDeSante
* consumable ^short = "Médicament"
* consumable ^definition = "Médicament"
* precondition MS
* precondition 0..1
* precondition ^short = """Précondition : \r\n
Permet de décrire les conditions préalables à l'utilisation du médicament.      L'attribut @value de l'élément 'reference' est une URI qui pointe vers la partie narrative du document CDA décrivant ces conditions préalables. """
* precondition ^definition = "Précondition"
  * criterion MS
  * criterion.text 1..1
* entryRelationship MS
* entryRelationship ^slicing.discriminator.type = #value
* entryRelationship ^slicing.discriminator.path = "$this"
* entryRelationship ^slicing.rules = #open
* entryRelationship contains 
frPrescription 0..*
 and frTraitementSubordonne 0..*
 and frInstructionsAuPatient 0..1
 and frReferenceInterne 0..*
* entryRelationship[frPrescription].supply only FRCDAPrescription
* entryRelationship[frPrescription] ^short = "Prescription"
* entryRelationship[frPrescription] ^definition = "Prescription"
* entryRelationship[frPrescription].typeCode = #REFR
* entryRelationship[frTraitementSubordonne].substanceAdministration only FRCDATraitementSubordonne
* entryRelationship[frTraitementSubordonne].substanceAdministration ^short = """
Traitement subordonné : \r\n
Une entrée Traitement de premier niveau peut contenir une ou plusieurs sous-entrées 'Traitement' subordonnées pour les cas spécifiques des dosages progressifs, fractionnés ou conditionnels, ou pour gérer la combinaison de médicaments.
L'utilisation de sous-entrées 'Traitement' subordonnées pour traiter ces cas est facultative. Dans ce cas, l'information doit être fournie dans la partie narrative de l'entrée 'Traitement' de premier niveau sous forme de texte libre.
"""
* entryRelationship[frTraitementSubordonne].substanceAdministration ^definition = "Traitement subordonné"
* entryRelationship[frTraitementSubordonne].typeCode = #COMP
* entryRelationship[frTraitementSubordonne].sequenceNumber MS
* entryRelationship[frInstructionsAuPatient].act only FRCDAInstructionsAuPatient
* entryRelationship[frInstructionsAuPatient].act ^short = """
Instruction au patient : \r\n
Les instructions au patient peuvent être transmises, sous forme textuelle, dans une entrée Instructions au patient (Patient Medication Instructions – 1.3.6.1.4.1.19376.1.5.3.1.4.3) portée par un élément "entryRelationship".
"""
* entryRelationship[frInstructionsAuPatient].act ^definition = "Instructions au patient"
* entryRelationship[frInstructionsAuPatient].typeCode = #SUBJ
* entryRelationship[frInstructionsAuPatient].inversionInd = true
* entryRelationship[frReferenceInterne].act only FRCDAReferenceInterne
* entryRelationship[frReferenceInterne].act ^short = """
Motif du traitement : \r\n
Le motif du traitement (ou raison de l'administration) peut être indiqué en faisant référence à autre entrée du document CDA constituant ce motif (par exemple une entrée Problème).
Dans l'élément 'act' de l'entryRelationship :
- L'attribut @actCode='ACT'
- L'attribut @moodCode='EVN'
- L'élément 'id' de l'élément référencé est repris à l'identique dans les entrées à lier
- L'élément 'code' doit concorder avec celui utilisé par l'élément de référence.
""" 
* entryRelationship[frReferenceInterne].act ^definition = "Motif du traitement"
* entryRelationship[frReferenceInterne].typeCode = #RSON

Invariant: fr-operator-a
Description: "operator doit être A"
Expression: "operator = 'A'"
Severity: #error

Invariant: fr-operator-not-a
Description: "operator doit être différent de A"
Expression: "operator != 'A'"
Severity: #error

Invariant: fr-effectiveTime-frequence-types
Description: "La fréquence doit être SXCM-TS, PIVL-TS, EIVL-TS ou SXPR-TS"
Expression: "is(SXCM_TS) or is(PIVL_TS) or is(EIVL_TS) or is(SXPR_TS)"
Severity: #error

Invariant: fr-effectiveTime-duree-type
Description: "La durée doit être IVL-TS"
Expression: "is(IVL_TS)"
Severity: #error
