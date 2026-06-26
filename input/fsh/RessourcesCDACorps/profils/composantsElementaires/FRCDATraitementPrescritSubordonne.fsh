Profile: FRCDATraitementPrescritSubordonne
Parent: http://hl7.org/cda/stds/core/StructureDefinition/SubstanceAdministration
Id: fr-cda-traitement-prescrit-subordonne
Title: "CDA - FR Traitement prescrit subordonne"
Description: "Entrée FR-Traitement-prescrit-subordonne: IHE-PRE - Prescription Item. Une entrée FR-Traitement-prescrit de premier niveau peut contenir une ou plusieurs sous-entrées FR-Traitement-prescrit-subordonne pour les cas spécifiques des dosages progressifs, fractionnés ou conditionnels, ou pour gérer la combinaison de médicaments. L’utilisation de sous-entrées FR-Traitement-prescrit-subordonne pour traiter ces cas est facultative. Dans le cas où l’entrée FR-Traitement-prescrit-subordonne n’est pas utilisée, l'information doit être fournie dans la partie narrative de l'entrée FR-Traitement-prescrit de premier niveau sous forme de texte libre.
Pour les dosages progressifs, fractionnés ou conditionnels, les sous-entrées FR-Traitement-prescrit-subordonne ne doivent spécifier que la fréquence et / ou le dosage modifiés. Pour le dosage conditionnel, chaque sous-entrée FR-Traitement-prescrit-subordonne doit avoir un élément precondition pour indiquer les conditions préalables à l’utilisation du médicament."
* classCode MS
* moodCode MS
* moodCode = #INT
* id 1..* MS
* id ^short = "Identifiant de l'entrée"
* id ^definition = "Identifiant de l'entrée"
* templateId 1..1
* templateId ^slicing.discriminator.type = #value
* templateId ^slicing.discriminator.path = "root"
* templateId ^slicing.rules = #open
* templateId contains frTraitementPrescritSubordonne 1..1
* templateId[frTraitementPrescritSubordonne].root 1..1
* templateId[frTraitementPrescritSubordonne].root = "1.2.250.1.213.1.1.3.83.1"
* templateId[frTraitementPrescritSubordonne] ^short = "Conformité FR-Traitement-prescrit-subordonnee (CI-SIS)"
* templateId[frTraitementPrescritSubordonne] ^definition = "Conformité FR-Traitement-prescrit-subordonnee (CI-SIS)"
* text MS
* text 1..1
* text ^short = "Partie narrative de l’entrée"
* text.reference 1..1 MS
* statusCode MS
* statusCode 1..1
* statusCode ^short = "Statut de l’entréeFixé à la valeur 'completed'"
* statusCode ^definition = "Statut de l’entrée"
* statusCode.code = #completed

* effectiveTime obeys fr-operator-a-traitement-prescrit-subordonne
* effectiveTime obeys fr-effectiveTime-frequence-types-traitement-prescrit-subordonne
* effectiveTime ^short = """Fréquence d'administration :\r\n
L'attribut @operator de cet élément est fixé à la valeur operator='A' (l'expression de la fréquence s'applique à l'intervalle de temps déterminé précédemment).
L'attribut @type de cet élément détermine le type de donnée utilisé pour représenter la fréquence d'administration du médicament. Les types de données autorisés sont : PIVL-TS, EIVL-TS ou SXPR-TS."""

* doseQuantity MS
* doseQuantity ^short = """Dose à administrer : \r\n
S'il n'y a pas de traitement, utiliser une valeur nullFlavor.
S'il y a un traitement, les sous-éléments 'low' et 'high' permettent de fournir les doses minimales et maximales à administrer. Dans le cas où la dose est fixe, ces deux sous-éléments prendront les mêmes valeurs. Dans chaque élément 'low' et 'high', un élément 'translation' peut permettre de pointer sur l'élément de la partie narrative relative à cette information.
Dans le cas où l'on s'exprime en quantités indénombrables, l'unité doit être transmise. Les unités sont exprimées selon le système de codage UCUM.
Dans le cas où l'on s'exprime en quantités dénombrables (capsules, comprimés, gélules, etc.) l'unité ne doit pas être renseignée. A la place, on ajoute un champ 'translation' qui permet de pointer sur l'élément de la partie narrative relative à cette information.
"""
* doseQuantity ^definition = "Dose à administrer"
  * low 1..1 MS
  * high 1..1 MS
* rateQuantity MS
* rateQuantity ^short = """Rythme d'administration : \r\n
Le rythme d'administration permet d'indiquer la quantité de produit à administrer par unité de temps.
Les sous-éléments 'low' et 'high' permettent de fournir le rythme minimal et maximal de l'administration. Dans le cas où le rythme est fixe, ces deux sous-éléments prendront les mêmes valeurs.
L'argument @value permet d'indiquer la quantité de produit à administrer.
L'argument @unit permet d'indiquer le rythme d'administration en combinant l'unité de quantité et l'unité de temps (séparés par le caractère ‘/'). Les unités sont exprimées selon le système de codage UCUM.
Dans chaque élément 'low' et 'high', un élément 'translation' peut permettre de pointer sur l'élément de la partie narrative relative à cette information.
"""
  * low 1..1 MS
  * high 1..1 MS
* consumable only FRCDAProduitDeSante
* consumable ^short = "Produit de santé"
* consumable ^definition = "Produit de santé"

* precondition MS
* precondition ^short = "Précondition à l'utilisation du médicament : \r\n
 Permet de décrire les conditions préalables à l'utilisation du médicament. L'attribut @value de l'élément 'reference' est une URI qui pointe vers la partie narrative du document CDA décrivant ces conditions préalables."
* precondition ^definition = "Précondition à l'utilisation du médicament"
  * criterion MS
  * criterion.text 1..1

Invariant: fr-operator-a-traitement-prescrit-subordonne
Description: "operator doit être A"
Expression: "operator = 'A'"
Severity: #error

Invariant: fr-effectiveTime-frequence-types-traitement-prescrit-subordonne
Description: "La fréquence doit être SXCM-TS, PIVL-TS, EIVL-TS ou SXPR-TS"
Expression: "is(TS) or is(PIVL_TS) or is(EIVL_TS) or is(SXPR_TS)"
Severity: #error
