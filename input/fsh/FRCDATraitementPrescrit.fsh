Profile: FRCDATraitementPrescrit
Parent: http://hl7.org/cda/stds/core/StructureDefinition/SubstanceAdministration
Id: fr-cda-traitement-prescrit
Title: "CDA - FR Traitement prescrit"
Description: "Entrée FR-Traitement-prescrit: IHE-PRE Prescription Item. Cette entrée de type substanceAdministration permet de décrire un traitement prescrit avec notamment le médicament, le mode d’administration, la quantité, la durée et la fréquence d'administration."
* classCode MS
* moodCode MS
* moodCode = #INT
* id 1..* MS
* id ^short = "Identifiant de l'entrée"
* id ^definition = "Identifiant de l'entrée"
* templateId 1..12
* templateId ^slicing.discriminator.type = #value
* templateId ^slicing.discriminator.path = "root"
* templateId ^slicing.rules = #open
* templateId contains ihePrescriptionItem 1..1
and ccdMedicationActivity 1..1
and iheMedicationsEntry 1..1
and frTraitementPrescrit 1..1
and ihePosologieStructuree 0..1
and iheModeAdministrationNormal 0..1
and iheModeAdministrationDosesProgressives 0..1
and iheModeAdministrationDosesFractionnees 0..1
and iheModeAdministrationDosesConditionnelles 0..1
and iheModeAdministrationDosesCombinees 0..1
and iheModeAdministrationDosesDebutDiffere 0..1
* templateId[ihePrescriptionItem].root 1..1
* templateId[ihePrescriptionItem].root = "1.3.6.1.4.1.19376.1.9.1.3.2"
* templateId[ihePrescriptionItem] ^short = "Conformité de l'entrée aux spécifications IHE Pharm Suppl. PRE"
* templateId[ihePrescriptionItem] ^definition = "Conformité de l'entrée aux spécifications IHE Pharm Suppl. PRE"
* templateId[ccdMedicationActivity].root 1..1
* templateId[ccdMedicationActivity].root = "2.16.840.1.113883.10.20.1.24"
* templateId[ccdMedicationActivity] ^short = "Conformité de l'entrée aux spécifications CCD"
* templateId[ccdMedicationActivity] ^definition = "Conformité de l'entrée aux spécifications CCD"
* templateId[iheMedicationsEntry].root 1..1
* templateId[iheMedicationsEntry].root = "1.3.6.1.4.1.19376.1.5.3.1.4.7"
* templateId[iheMedicationsEntry] ^short = "Conformité de l'entrée aux spécifications IHE PCC"
* templateId[iheMedicationsEntry] ^definition = "Conformité de l'entrée aux spécifications IHE PCC"
* templateId[frTraitementPrescrit].root 1..1
* templateId[frTraitementPrescrit].root = "1.2.250.1.213.1.1.3.83"
* templateId[frTraitementPrescrit] ^short = "Conformité de l'entrée aux spécifications FR"
* templateId[frTraitementPrescrit] ^definition = "Conformité de l'entrée aux spécifications FR"
* templateId[ihePosologieStructuree].root 1..1
* templateId[ihePosologieStructuree].root = "1.3.6.1.4.1.19376.1.9.1.3.6"
* templateId[ihePosologieStructuree] ^short = "Conformité Posologie structurée"
* templateId[ihePosologieStructuree] ^definition = "Conformité Posologie structurée"
* templateId[iheModeAdministrationNormal].root 1..1
* templateId[iheModeAdministrationNormal].root = "1.3.6.1.4.1.19376.1.5.3.1.4.7.1"
* templateId[iheModeAdministrationNormal] ^short = "Mode d'administration : normal. 
Administration sans précaution particulière à prendre. Dans ce cas, ne pas utiliser de  subordonné."
* templateId[iheModeAdministrationNormal] ^definition = "Mode d'administration: normal"
* templateId[iheModeAdministrationDosesProgressives].root 1..1
* templateId[iheModeAdministrationDosesProgressives].root = "1.3.6.1.4.1.19376.1.5.3.1.4.8"
* templateId[iheModeAdministrationDosesProgressives] ^short = "Mode d'administration : doses progressives.
 Administration pour les médicamments dont la posologie optimale (ou l'arrêt) n'est obtenue que progressivement, par paliers. 
Par exemple : 
 - 0.5 mg par jour pendant 3 jours ;
 - puis 1 mg par jour les 5 jours suivants ;
 - puis 2 mg par jour. 
Souvent, en particulier lorsque l'arrêt brusque du traitement peut avoir des conséquences négatives, les doses sont réduites progressivement. 
Les doses peuvent être ajustées en modifiant la fréquence de la dose, la quantité de la dose, ou les deux. 
Lorsque la fréquence de la dose est simplement ajustée (par ex. 5 mg de prednisone deux fois par jour pendant trois jours, puis 5 mg par jour pendant trois jours, puis 5 mg tous les deux jours), une seule entrée
Traitement est nécessaire et les différentes fréquences sont enregistrées dans l'élement . 
Lorsque la dose varie (par ex. 15 mg de prednisone par jour pendant trois jours, puis 10 mg par jour pendant trois jours, puis 5 mg par jour pendant trois jours), un composant subordonné doit être créé pour chaque dose. "
* templateId[iheModeAdministrationDosesProgressives] ^definition = "Mode d'administration : doses progressives"
* templateId[iheModeAdministrationDosesFractionnees].root 1..1
* templateId[iheModeAdministrationDosesFractionnees].root = "1.3.6.1.4.1.19376.1.5.3.1.4.9"
* templateId[iheModeAdministrationDosesFractionnees] ^short = "Mode d'administration : doses fractionnées. 
Administration de médicaments dont la posologie varie d'un jour sur l'autre. 
Par exemple : Coumadine : ¼ cp les jours pairs et ½ cp les jours impairs. 
Une dose fractionnée est souvent utilisée lorsque différentes doses sont administrées à différents moments (par ex. à différents moments de la journée ou sur des jours différents). 
Il peut s'agir de tenir compte de différents taux métaboliques à différents moments de la journée ou simplement d'aborder les carences du boîtage des médicaments (par ex. 2 mg de Coumadin les jours pairs et 2,5 mg les jours impairs parce que la Coumadine n'existe pas sous une forme posologique à 2,25 mg). 
Dans ce cas, une entrée subordonnée  est requise pour chaque dose fractionnée."
* templateId[iheModeAdministrationDosesFractionnees] ^definition = "Mode d'administration : doses fractionnées"
* templateId[iheModeAdministrationDosesConditionnelles].root 1..1
* templateId[iheModeAdministrationDosesConditionnelles].root = "1.3.6.1.4.1.19376.1.5.3.1.4.10"
* templateId[iheModeAdministrationDosesConditionnelles] ^short = "Mode d'administration : doses conditionnelles. 
Administration en fonction d'un événement (typiquement dosage de la glycémie pour les diabétiques). 
Une dose conditionnelle est souvent utilisée lorsque la quantité de la dose diffère en fonction de certaines mesures (p. ex. une dose d'insuline en fonction du taux de glycémie). 
Dans ce cas, une entrée subordonnée  est requise pour chaque dose conditionnelle."
* templateId[iheModeAdministrationDosesConditionnelles] ^definition = "Mode d'administration : doses conditionnelles"
* templateId[iheModeAdministrationDosesCombinees].root 1..1
* templateId[iheModeAdministrationDosesCombinees].root = "1.3.6.1.4.1.19376.1.5.3.1.4.11"
* templateId[iheModeAdministrationDosesCombinees] ^short = "Mode d'administration : doses combinées.
Administration de médicaments combinés à d'autres dans le contexte d'une même prise. 
Une association médicamenteuse est composée de deux ou plusieurs autres médicaments. 
Ceux-ci peuvent être préemballés, comme l'Acuilix, qui est une combinaison d'hydrochlorothiazide et de quinapril dans des proportions prédéfinies, ou préparés par un pharmacien. 
Dans le cas d'une association médicamenteuse préemballée, il suffit de fournir le nom du produit médicamenteux d'association et la désignation de sa concentration dans une seule entrée . 
L'information posologique doit ensuite être enregistrée sous la forme d'un simple comptage des unités d'administration. 
Dans le cas d'un mélange préparé, la description du mélange doit être fournie en tant que nom du produit, dans l'entrée . 
Cette entrée peut, mais ce n'est pas obligatoire, avoir des entrées subordonnées  sous cette entrée pour enregistrer les composants du mélange."
* templateId[iheModeAdministrationDosesCombinees] ^definition = "Mode d'administration : doses combinées"
* templateId[iheModeAdministrationDosesDebutDiffere].root 1..1
* templateId[iheModeAdministrationDosesDebutDiffere].root = "1.3.6.1.4.1.19376.1.5.3.1.4.21"
* templateId[iheModeAdministrationDosesDebutDiffere] ^short = "Mode d'administration : doses à début différé. 
Administration de médicaments dont le début est différée et ne peut être calculés. 
Exemples : 3 jours avant le voyage, 1 jour avant une intervention. 
Dans ce cas, ne pas utiliser de  subordonné."
* templateId[iheModeAdministrationDosesDebutDiffere] ^definition = "Mode d'administration : doses à début différé"
* code MS
* code ^short = "Acte ou situation"
* code ^definition = "Acte ou situation"
* code.code = #DRUG
* code.displayName = "Médicament"
* code.codeSystem = "2.16.840.1.113883.5.4"
* code.codeSystemName = "HL7_ActCode"
* code.code 1..1 MS
* code.displayName MS
* code.codeSystem 1..1 MS
* text MS
* text 1..1
* text ^short = "Partie narrative de l’entrée"
* text.reference 1..1 MS
* statusCode MS
* statusCode 1..1
* statusCode ^short = "Statut de l'entrée"
* statusCode ^definition = "Statut de l'entrée"
* statusCode.code = #completed

* effectiveTime MS
* effectiveTime ^slicing.discriminator.type = #pattern
* effectiveTime ^slicing.discriminator.path = "operator"
* effectiveTime ^slicing.rules = #open
* effectiveTime contains effectiveTimeDuree 0..1 and effectiveTimeFrequence 0..*

* effectiveTime[effectiveTimeDuree] obeys fr-operator-not-a-prescrit
* effectiveTime[effectiveTimeDuree] ^short = "Durée de traitement"
* effectiveTime[effectiveTimeDuree] obeys fr-effectiveTime-duree-type-prescrit

* effectiveTime[effectiveTimeFrequence] obeys fr-operator-a-prescrit
* effectiveTime[effectiveTimeFrequence] ^short = "Fréquence d'administration"
* effectiveTime[effectiveTimeFrequence] obeys fr-effectiveTime-frequence-types-prescrit

* repeatNumber 1..1 MS
* repeatNumber ^short = "Nombre de renouvellement(s) possible(s): \r\n
- Si aucun renouvellement autorisé (dispensation unique) : <repeatNumber value='0'/>
- Si le renouvellement n'est pas limité (par ex : si une période de renouvellement est définie), la valeur est fixée à nullFlavor='NI'."
* routeCode MS
* routeCode ^short = "Voie d'administration : \r\n
Dans le cas où la posologie n'est pas structurée et décrite uniquement dans la partie narrative, cet élément ne doit pas être présent.   
Dans le cas où la posologie est structurée, si la voie d'administration est connue, elle peut être indiquée à partir de la terminologie EDQM (0.4.0.127.0.16.1.1.2.1).      
Si elle n'est pas connue, la raison pour laquelle elle est inconnue peut être décrite en utilisant l'attribut nullFlavor."
* routeCode ^definition = "Voie d'administration"
* routeCode.codeSystem = "0.4.0.127.0.16.1.1.2.1"
* routeCode.originalText.reference 1..1 MS
* approachSiteCode ^short = "région anatomique d'administration :
Dans le cas où la posologie n'est pas structurée et décrite uniquement dans la partie narrative, cet élément ne doit pas être présent.   
Dans le cas où la posologie est structurée, si la région anatomique d'administration est connue, elle peut être indiquée."
* approachSiteCode ^definition = "région anatomique d'administration"
* approachSiteCode from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-human-substance-administration-site-cisis (required)
  * code 1..1 MS
  * originalText.reference 1..1 MS
* doseQuantity MS
* doseQuantity ^short = """Dose à administrer : \r\n
S'il n'y a pas de traitement, utiliser une valeur nullFlavor.
S'il y a un traitement, les sous-éléments 'low' et 'high' permettent de fournir les doses minimales et maximales à administrer. Dans le cas où la dose est fixe, ces deux sous-éléments prendront les mêmes valeurs. Dans chaque élément 'low' et 'high', un élément 'translation' peut permettre de pointer sur l'élément de la partie narrative relative à cette information.
Dans le cas où l'on s'exprime en quantités indénombrables, l'unité doit être transmise. Les unités sont exprimées selon le système de codage UCUM.
Dans le cas où l'on s'exprime en quantités dénombrables (capsules, comprimés, gélules, etc.) l'unité ne doit pas être renseignée. A la place, on ajoute un champ 'translation' qui permet de pointer sur l'élément de la partie narrative relative à cette information.
"""
* doseQuantity ^definition = "Dose à administrer"
  * low 1..1 MS
  * low.translation 0..1 MS
  * low.translation.originalText 1..1 MS
  * low.translation.originalText.reference 1..1 MS
  * high 1..1 MS
  * high.translation 0..1 MS
  * high.translation.originalText 1..1 MS
  * high.translation.originalText.reference 1..1 MS
* rateQuantity MS
* rateQuantity ^short = """Rythme d'administration : \r\n
Le rythme d'administration permet d'indiquer la quantité de produit à administrer par unité de temps.
Les sous-éléments 'low' et 'high' permettent de fournir le rythme minimal et maximal de l'administration. Dans le cas où le rythme est fixe, ces deux sous-éléments prendront les mêmes valeurs.
L'argument @value permet d'indiquer la quantité de produit à administrer.
L'argument @unit permet d'indiquer le rythme d'administration en combinant l'unité de quantité et l'unité de temps (séparés par le caractère ‘/'). Les unités sont exprimées selon le système de codage UCUM.
Dans chaque élément 'low' et 'high', un élément 'translation' peut permettre de pointer sur l'élément de la partie narrative relative à cette information.
"""
  * low 1..1 MS
  * low.translation 0..1 MS
  * low.translation.originalText 1..1 MS
  * low.translation.originalText.reference 1..1 MS
  * high 1..1 MS
  * high.translation 0..1 MS
  * high.translation.originalText 1..1 MS
  * high.translation.originalText.reference 1..1 MS
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
  * denominator 1..1 MS
* consumable only FRCDAProduitDeSante
* consumable ^short = "Produit de santé"
* consumable ^definition = "Produit de santé"
* author 1..1
* author ^slicing.discriminator.type = #value
* author ^slicing.discriminator.path = "$this"
* author ^slicing.rules = #open
* author contains 
prescripteur 0..1 and auteurDuPrescription 0..1
* author[prescripteur] ^short = "Prescripteur : \r\n
Dans le cas où cette entrée Traitement prescrit est utilisée dans un document Prescription, cet élément ne doit pas être présent.
Dans le cas où cette entrée Traitement prescrit est utilisée dans un autre document, cet élément permet d'indiquer le prescripteur du traitement."
* author[prescripteur] only FRCDAAuthor
* author[auteurDuPrescription] ^short = "Auteur du document Prescription : \r\n
Dans le cas où cette entrée Traitement prescrit est utilisée dans un document Prescription, cet élément ne doit pas être présent.
Dans le cas où cette entrée Traitement prescrit est utilisée dans un autre document, cet élément permet d'indiquer l'auteur du document Prescription.
"
* author[auteurDuPrescription] only FRCDAAuthor
* precondition MS
* precondition 0..1
* precondition ^short = "Précondition à l'utilisation du médicament : \r\n
  Permet de décrire les conditions préalables à l'utilisation du médicament.      
  L'attribut @value de l'élément 'reference' est une URI qui pointe vers la partie narrative du document CDA décrivant ces conditions préalables."
* precondition ^definition = "Précondition à l'utilisation du médicament"
  * criterion MS
  * criterion.text 1..1
* entryRelationship MS
* entryRelationship ^slicing.discriminator.type = #value
* entryRelationship ^slicing.discriminator.path = "$this"
* entryRelationship ^slicing.rules = #open
* entryRelationship contains 
frReferenceInterne 0..*
 and frTraitementPrescritSubordonne 0..*
 and frReferenceItemPlanTraitement 0..1
 and frInstructionsAuPatient 0..1
 and frInstructionsAuDispensateur 0..1
 and frQuantiteDeProduit 0..1
 and frAutorisationSubstitution 1..1
 and frPeriodeDeRenouvellement 0..1
 and frEnRapportAvecALD 1..1
 and frEnRapportAvecAccidentTravail 1..1
 and frEnRapportAvecLaPrevention 1..1
 and frNonRemboursable 1..1
 and frHorsAMM 1..1
* entryRelationship[frReferenceInterne].act only FRCDAReferenceInterne
* entryRelationship[frReferenceInterne].typeCode = #REFR
* entryRelationship[frReferenceInterne] ^short = """Entrée Motif du traitement (Référence interne): \r\n
Le motif du traitement (ou raison de l'administration) peut être indiqué en faisant référence à une autre entrée du document CDA constituant ce motif (par exemple une entrée Problème).
Dans l'élément 'act' de l'entryRelationship :
- L'attribut @actCode='ACT'
- L'attribut @moodCode='EVN'
- L'élément 'id' de l'élément référencé est repris à l'identique dans les entrées à lier
- L'élément 'code' doit concorder avec celui utilisé par l'élément de référence."""

* entryRelationship[frTraitementPrescritSubordonne].substanceAdministration only FRCDATraitementPrescritSubordonne
* entryRelationship[frTraitementPrescritSubordonne].typeCode = #COMP
* entryRelationship[frTraitementPrescritSubordonne] ^short = """Entrée Traitement prescrit subordonné : \r\n
Une entrée FR-Traitement-prescrit de premier niveau peut contenir une ou plusieurs sous-entrées FR-Traitement-prescrit-subordonnee pour les cas spécifiques des dosages progressifs, fractionnés ou conditionnels, ou pour gérer la combinaison de médicaments.
L'utilisation de sous-entrées FR-Traitement-prescrit-subordonnee pour traiter ces cas est facultative. Dans ce cas, l'information doit être fournie dans la partie narrative de l'entrée FR-Traitement-prescrit de premier niveau sous forme de texte libre.
"""

* entryRelationship[frReferenceItemPlanTraitement].substanceAdministration only FRCDAReferenceItemPlanTraitement
* entryRelationship[frReferenceItemPlanTraitement].typeCode = #REFR
* entryRelationship[frReferenceItemPlanTraitement] ^short = """Entrée Référence à un item du plan de traitement : \r\n
Si la ligne de prescription est liée à un item d'un plan de traitement, la référence à celui-ci doit être présent si connu."""

* entryRelationship[frInstructionsAuPatient].act only FRCDAInstructionsAuPatient
* entryRelationship[frInstructionsAuPatient].typeCode = #SUBJ
* entryRelationship[frInstructionsAuPatient] ^short = "Entrée Instructions au patient"

* entryRelationship[frInstructionsAuDispensateur].act only FRCDAInstructionsAuDispensateur
* entryRelationship[frInstructionsAuDispensateur].typeCode = #SUBJ
* entryRelationship[frInstructionsAuDispensateur] ^short = "Entrée Instructions au dispensateur"

* entryRelationship[frQuantiteDeProduit].supply only FRCDAQuantiteDeProduit
* entryRelationship[frQuantiteDeProduit].typeCode = #COMP
* entryRelationship[frQuantiteDeProduit] ^short = "Entrée Quantité à dispenser"

* entryRelationship[frAutorisationSubstitution].act only FRCDAAutorisationSubstitution
* entryRelationship[frAutorisationSubstitution].typeCode = #COMP
* entryRelationship[frAutorisationSubstitution] ^short = "Entrée Autorisation de substitution"

* entryRelationship[frPeriodeDeRenouvellement].supply only FRCDAPeriodeDeRenouvellement
* entryRelationship[frPeriodeDeRenouvellement].typeCode = #COMP
* entryRelationship[frPeriodeDeRenouvellement] ^short = "Entrée Période de renouvellement"

* entryRelationship[frEnRapportAvecALD].observation only FRCDAEnRapportAvecALD
* entryRelationship[frEnRapportAvecALD].typeCode = #COMP
* entryRelationship[frEnRapportAvecALD] ^short = "Entrée En rapport avec une Affection Longue Durée (ALD)"

* entryRelationship[frEnRapportAvecAccidentTravail].observation only FRCDAEnRapportAvecAccidentTravail
* entryRelationship[frEnRapportAvecAccidentTravail].typeCode = #COMP
* entryRelationship[frEnRapportAvecAccidentTravail] ^short = "Entrée En rapport avec un accident du travail"

* entryRelationship[frEnRapportAvecLaPrevention].observation only FRCDAEnRapportAvecLaPrevention
* entryRelationship[frEnRapportAvecLaPrevention].typeCode = #COMP
* entryRelationship[frEnRapportAvecLaPrevention] ^short = "Entrée En rapport avec la prévention"

* entryRelationship[frNonRemboursable].observation only FRCDANonRemboursable
* entryRelationship[frNonRemboursable].typeCode = #COMP
* entryRelationship[frNonRemboursable] ^short = "Entrée Non remboursable"

* entryRelationship[frHorsAMM].observation only FRCDAHorsAMM
* entryRelationship[frHorsAMM].typeCode = #COMP
* entryRelationship[frHorsAMM] ^short = "Entrée Hors AMM"

* reference MS
* reference ^short = "Référence de la prescription : Non utilisé dans une prescription."
* reference.
  * typeCode = #XCRPT
  * externalDocument 1..1 MS
  * externalDocument ^short = "Référence de la prescription: \r\n
Non utilisé dans une prescription."
  * externalDocument.id 1..* MS

Invariant: fr-operator-a-prescrit
Description: "operator doit être A"
Expression: "operator = 'A'"
Severity: #error

Invariant: fr-operator-not-a-prescrit
Description: "operator doit être différent de A"
Expression: "operator != 'A'"
Severity: #error

Invariant: fr-effectiveTime-frequence-types-prescrit
Description: "La fréquence doit être SXCM-TS, PIVL-TS, EIVL-TS ou SXPR-TS"
Expression: "is(TS) or is(PIVL_TS) or is(EIVL_TS) or is(SXPR_TS)"
Severity: #error

Invariant: fr-effectiveTime-duree-type-prescrit
Description: "La durée doit être IVL-TS"
Expression: "is(IVL_TS)"
Severity: #error

