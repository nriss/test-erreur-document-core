Profile: FRCDATraitementSubordonne
Parent: http://hl7.org/cda/stds/core/StructureDefinition/SubstanceAdministration
Id: fr-cda-traitement-subordonne
Title: "CDA - FR Traitement subordonne"
Description: "Entrée FR-Traitement-subordonne: Une entrée FR-Traitement de premier niveau peut contenir une ou plusieurs sous-entrées FR-Traitement-subordonne pour les cas spécifiques des dosages progressifs, fractionnés ou conditionnels, ou pour gérer la combinaison de médicaments. L’utilisation de sous-entrées FR-Traitement-subordonne pour traiter ces cas est facultative. Dans le cas où l’entrée FR-Traitement-subordonne n’est pas utilisée, l'information doit être fournie dans la partie narrative de l'entrée FR-Traitement de premier niveau sous forme de texte libre.Pour les dosages progressifs, fractionnés ou conditionnels, les sous-entrées FR-Traitement-subordonne ne doivent spécifier que la fréquence et / ou le dosage modifiés.Pour le dosage conditionnel, chaque sous-entrée FR-Traitement-subordonne doit avoir un élément 'precondition' pour indiquer les conditions préalables à l’utilisation du médicament.Pour la combinaison de médicaments, chaque sous-entrée FR-Traitement-subordonne précisera le produit entrant dans la combinaison."
* classCode MS
* moodCode MS
* moodCode ^short = "Si le traitement a déjà été administré ou si information rapportée par le patient ou si aucun traitement : - moodCode='EVN' ;
  Si le traitement est en attente d'administration :  - moodCode='INT'"
* moodCode ^definition = "Si le traitement a déjà été administré ou si information rapportée par le patient ou si aucun traitement : - moodCode='EVN' ;
  Si le traitement est en attente d'administration :  - moodCode='INT'"
* id 1..* MS
* id ^short = "Identifiant de l'entrée"
* id ^definition = "Identifiant de l'entrée"
* templateId 1..2
* templateId ^slicing.discriminator.type = #value
* templateId ^slicing.discriminator.path = "root"
* templateId ^slicing.rules = #open
* templateId contains frTraitementSubordonne 1..1
and iheModeAdministrationDosesProgressives 1..1
* templateId[frTraitementSubordonne].root 1..1
* templateId[frTraitementSubordonne].root = "1.2.250.1.213.1.1.3.42.1"
* templateId[frTraitementSubordonne] ^short = "Déclaration de conformité FR-Traitement"
* templateId[frTraitementSubordonne] ^definition = "Déclaration de conformité FR-Traitement"
* templateId[iheModeAdministrationDosesProgressives].root 1..1
* templateId[iheModeAdministrationDosesProgressives].root = "1.3.6.1.4.1.19376.1.5.3.1.4.8"
* templateId[iheModeAdministrationDosesProgressives] ^short = "Mode d'administration"
* templateId[iheModeAdministrationDosesProgressives] ^definition = "Mode d'administration"
* text MS
* text 1..1
* text ^short = "Partie narrative de l’entrée"
* text.reference 1..1 MS
* statusCode MS
* statusCode 1..1
* statusCode ^short = "Statut de l’entrée : Fixé à la valeur 'completed'"
* statusCode ^definition = "Statut de l’entrée"
* statusCode.code = #completed
* effectiveTime obeys fr-operator-a-subordonne
* effectiveTime obeys fr-effectiveTime-frequence-types-subordonne
* effectiveTime ^short = """Fréquence d'administration :\r\n
L'attribut @operator de cet élément est fixé à la valeur operator='A' (l'expression de la fréquence s'applique à l'intervalle de temps déterminé précédemment).
L'attribut @type de cet élément détermine le type de donnée utilisé pour représenter la fréquence d'administration du médicament. Les types de données autorisés sont : PIVL-TS, EIVL-TS ou SXPR-TS."""
* effectiveTime ^definition = "Fréquence d'administration"
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
* consumable ^short = """Médicament: \r\n
Pour les doses progressives, fractionnées ou conditionnelles, utilser un nullFlavor='NA'.
Pour les combinaisons de médicaments, chaque entrée <substanceAdministration> subordonnée permet d'indiquer le produit entrant dans la combinaison."""
* consumable ^definition = "Médicament"
* precondition MS
* precondition ^short = """Précondition : \r\n
Permet de décrire les conditions préalables à l'utilisation du médicament.      L'attribut @value de l'élément 'reference' est une URI qui pointe vers la partie narrative du document CDA décrivant ces conditions préalables. """
* precondition ^definition = "Précondition"
  * criterion MS
  * criterion.text 1..1

Invariant: fr-operator-a-subordonne
Description: "operator doit être A"
Expression: "operator = 'A'"
Severity: #error

Invariant: fr-effectiveTime-frequence-types-subordonne
Description: "La fréquence doit être SXCM-TS, PIVL-TS, EIVL-TS ou SXPR-TS"
Expression: "is(SXCM_TS) or is(PIVL_TS) or is(EIVL_TS) or is(SXPR_TS)"
Severity: #error
