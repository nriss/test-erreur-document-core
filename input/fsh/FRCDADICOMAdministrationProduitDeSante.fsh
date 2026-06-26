Profile: FRCDADICOMAdministrationProduitDeSante
Parent: http://hl7.org/cda/stds/core/StructureDefinition/SubstanceAdministration
Id: fr-cda-dicom-administration-produit-de-sante
Title: "CDA - FR DICOM Administration produit de sante"
Description: "Entrée FR-DICOM-Administration-produit-de-sante: DICOM Part 20 - Procedural Medication. Cette entrée permet d'enregistrer l’administration de produits (hors radiopharmaceutiques) :
 - produit administré 
 - dose administréevoie d’administration
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
* id 1..1 MS
* id ^short = "Identifiant de l'entrée"
* id ^definition = "Identifiant de l'entrée"
* templateId 1..2
* templateId ^slicing.discriminator.type = #value
* templateId ^slicing.discriminator.path = "root"
* templateId ^slicing.rules = #open
* templateId contains frDicomAdministrationProduitDeSante 1..1
and dicomProceduralMedication 1..1
* templateId[frDicomAdministrationProduitDeSante].root 1..1
* templateId[frDicomAdministrationProduitDeSante].root = "1.2.250.1.213.1.1.3.151"
* templateId[frDicomAdministrationProduitDeSante] ^short = "Conformité FR-DICOM-Administration-produit-de-sante (CI-SIS)"
* templateId[frDicomAdministrationProduitDeSante] ^definition = "Conformité FR-DICOM-Administration-produit-de-sante (CI-SIS)"
* templateId[dicomProceduralMedication].root 1..1
* templateId[dicomProceduralMedication].root = "1.2.840.10008.9.13"
* templateId[dicomProceduralMedication] ^short = "Conformité Procedural Medication (DICOM Part 20)"
* templateId[dicomProceduralMedication] ^definition = "Conformité Procedural Medication (DICOM Part 20)"
* text MS
* text ^short = "Partie narrative de l'entrée"
* text.reference MS
* statusCode MS
* statusCode 1..1
* statusCode ^short = "Status de l'entrée"
* statusCode ^definition = "Status de l'entrée"
* statusCode.code = #completed
* routeCode MS
* routeCode ^short = "Voie d'administration Terminologie utilisée :  EDQM - Standard terms / classe ROA (Voie d'administration)"
* routeCode ^definition = "Voie d'administration"
* doseQuantity MS 
* doseQuantity ^short = "Dose à administrer. S'il n'y a pas de traitement, utiliser une valeur nullFlavor.
S'il y a un traitement, les sous-éléments 'low' et 'high' permettent de fournir les doses minimales et maximales à administrer. Dans le cas où la dose est fixe, ces deux sous-éléments prendront les mêmes valeurs. Dans chaque élément 'low' et 'high', un élément 'translation' peut permettre de pointer sur l'élément de la partie narrative relative à cette information.
Dans le cas où l'on s'exprime en quantités indénombrables, l'unité doit être transmise. Les unités sont exprimées selon le système de codage UCUM.
Dans le cas où l'on s'exprime en quantités dénombrables (capsules, comprimés, gélules, etc.) l'unité ne doit pas être renseignée. A la place, on ajoute un champ 'translation' qui permet de pointer sur l'élément de la partie narrative relative à cette information."
* doseQuantity ^definition = "Dose à administrer"
* rateQuantity MS  
* rateQuantity ^short = "Rythme d'administration.
Le rythme d'administration permet d'indiquer la quantité de produit à administrer par unité de temps.
Les sous-éléments 'low' et 'high' permettent de fournir le rythme minimal et maximal de l'administration. Dans le cas où le rythme est fixe, ces deux sous-éléments prendront les mêmes valeurs.
L'argument @value permet d'indiquer la quantité de produit à administrer.
L'argument @unit permet d'indiquer le rythme d'administration en combinant l'unité de quantité et l'unité de temps (séparés par le caractère ‘/'). Les unités sont exprimées selon le système de codage UCUM.
Dans chaque élément 'low' et 'high', un élément 'translation' peut permettre de pointer sur l'élément de la partie narrative relative à cette information."
* rateQuantity ^definition = "Rythme d'administration"
* consumable MS
* consumable ^short = "Médicament"
* consumable ^definition = "Médicament"
  * manufacturedProduct MS
  * manufacturedProduct ^short = "Produit de santé"
  * manufacturedProduct ^definition = "Produit de santé" 
    * manufacturedMaterial 1..1
      * code MS
      * code ^short = "Choix parmi les éléments suivants: code et nullFlavor. 
      Code du produit de santé. 
      - CIP : Code Identifiant de Présentation (1.2.250.1.213.2.3.2)
      - UCD : Unités Communes de Dispensation (1.2.250.1.213.2.61) 
      + code ATC"
      * code ^definition = "Code du produit de santé"
      * code.translation MS
      * code.translation ^short = """
      - ATC : Classification anatomique, thérapeutique et chimique (2.16.840.1.113883.6.73)
      - CIS : Code Identifiant de Spécialité (1.2.250.1.213.2.3.1)
      - MV : Médicament Virtuel (1.2.250.1.213.2.59) de Medicabase"""
      * code.originalText 1..1 MS
      * code.originalText.reference 1..1 MS
      * name ^short = "Nom de marque du produit"
      * name ^definition = "Nom de marque du produit"
      * lotNumberText ^short = "Numéro de lot"
      * lotNumberText ^definition = "Numéro de lot"