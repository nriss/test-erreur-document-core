Profile: FRCDADICOMAdministrationRadiopharmaceutique
Parent: http://hl7.org/cda/stds/core/StructureDefinition/SubstanceAdministration
Id: fr-cda-dicom-administration-radiopharmaceutique
Title: "CDA - FR DICOM Administration radiopharmaceutique"
Description: "Entrée FR-DICOM-Administration-radiopharmaceutique: Cette entrée permet d'enregistrer l’administration de produits radiopharmaceutiques :
 - produit administré 
 - dose administrée 
 - voie d’administration
 - numéro de lot
 - autres informations liées à l’administration d’un produit"
* classCode MS
* moodCode MS
* moodCode ^short = """
 - Si le traitement a déjà été administré ou si information rapportée par le patient ou si aucun traitement : moodCode='EVN'  
 - Si le traitement est en attente d'administration : moodCode='INT'"""
* moodCode ^definition = """
 - Si le traitement a déjà été administré ou si information rapportée par le patient ou si aucun traitement : moodCode='EVN'  
 - Si le traitement est en attente d'administration : moodCode='INT'"""
* templateId 1..1
* templateId ^slicing.discriminator.type = #value
* templateId ^slicing.discriminator.path = "root"
* templateId ^slicing.rules = #open
* templateId contains frDicomAdministrationRadiopharmaceutique 1..1
* templateId[frDicomAdministrationRadiopharmaceutique].root 1..1 
* templateId[frDicomAdministrationRadiopharmaceutique].root = "1.2.250.1.213.1.1.3.173"
* templateId[frDicomAdministrationRadiopharmaceutique] ^short = "Conformité FR-DICOM-Administration-radiopharmaceutique (CI-SIS)"
* templateId[frDicomAdministrationRadiopharmaceutique] ^definition = "Conformité FR-DICOM-Administration-radiopharmaceutique (CI-SIS)"
* code MS
* code 1..1
* code ^short = "Type de traitement"
* code ^definition = "Type de traitement"
* code.code = #440252007
* code.displayName = "administration de produits radiopharmaceutiques"
* code.codeSystem = "2.16.840.1.113883.6.96"
* code.codeSystemName = "SNOMED CT"
* code.code 1..1 MS
* code.displayName MS
* code.codeSystem 1..1 MS
* routeCode MS
* routeCode ^short = "Voie d'administration. Terminologie utilisée :  EDQM - Standard terms / classe ROA (Voie d'administration)"
* routeCode ^definition = "Voie d'administration"
* doseQuantity MS 
* doseQuantity ^short = "Dose à administrer.S'il n'y a pas de traitement, utiliser une valeur nullFlavor.
S'il y a un traitement, les sous-éléments 'low' et 'high' permettent de fournir les doses minimales et maximales à administrer. Dans le cas où la dose est fixe, ces deux sous-éléments prendront les mêmes valeurs. Dans chaque élément 'low' et 'high', un élément 'translation' peut permettre de pointer sur l'élément de la partie narrative relative à cette information.
Dans le cas où l'on s'exprime en quantités indénombrables, l'unité doit être transmise. Les unités sont exprimées selon le système de codage UCUM.
Dans le cas où l'on s'exprime en quantités dénombrables (capsules, comprimés, gélules, etc.) l'unité ne doit pas être renseignée. A la place, on ajoute un champ 'translation' qui permet de pointer sur l'élément de la partie narrative relative à cette information." 
* doseQuantity ^definition = "Dose à administrer"
* rateQuantity MS 
* rateQuantity ^short = "Rythme d'administration. Le rythme d'administration permet d'indiquer la quantité de produit à administrer par unité de temps.
Les sous-éléments 'low' et 'high' permettent de fournir le rythme minimal et maximal de l'administration. Dans le cas où le rythme est fixe, ces deux sous-éléments prendront les mêmes valeurs.
L'argument @value permet d'indiquer la quantité de produit à administrer.
L'argument @unit permet d'indiquer le rythme d'administration en combinant l'unité de quantité et l'unité de temps (séparés par le caractère ‘/'). Les unités sont exprimées selon le système de codage UCUM.
Dans chaque élément 'low' et 'high', un élément 'translation' peut permettre de pointer sur l'élément de la partie narrative relative à cette information."
* rateQuantity ^definition = "Rythme d'administration"
* consumable ^short = "Produit radiopharmaceutique"
* consumable ^definition = "Produit radiopharmaceutique"
  * manufacturedProduct MS
    * manufacturedMaterial 1..1
      * code MS
      * code ^short = "Code du produit radiopharmaceutique"
      * code ^definition = "Code du produit de santé"
      * code.translation MS 
      * code.translation ^short = "Valeur issue de l'ATC niveau 2"
      * code.originalText 1..1 MS
      * code.originalText.reference 1..1 MS
      * name ^short = "Nom de marque du produit"
      * name ^definition = "Nom de marque du produit"
      * lotNumberText ^short = "Numéro de lot"
      * lotNumberText ^definition = "Numéro de lot"