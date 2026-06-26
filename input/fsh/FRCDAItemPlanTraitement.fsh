Profile: FRCDAItemPlanTraitement
Parent: http://hl7.org/cda/stds/core/StructureDefinition/SubstanceAdministration
Id: fr-cda-item-plan-traitement
Title: "CDA - FR Item plan traitement"
Description: "Entrée FR-Item-plan-traitement: IHE-MTP Medication Treatment Plan Item. Cette entrée permet de fournir une copie du plan de traitement médicamenteux."
* classCode MS
* moodCode MS
* moodCode = #INT
* id 1..1 MS
* id ^short = "Identifiant de l'entrée"
* id ^definition = "Identifiant de l'entrée"
* templateId 1..4
* templateId ^slicing.discriminator.type = #value
* templateId ^slicing.discriminator.path = "root"
* templateId ^slicing.rules = #open
* templateId contains iheMedicationTreatmentPlanItem 1..1
and ccdMedicationActivity 1..1
and iheMedicationsEntry 1..1
and frItemPlanTraitement 1..1
* templateId[iheMedicationTreatmentPlanItem].root 1..1
* templateId[iheMedicationTreatmentPlanItem].root = "1.3.6.1.4.1.19376.1.9.1.3.7"
* templateId[iheMedicationTreatmentPlanItem] ^short = "Conformité de l'entrée aux spécifications IHE Pharm Suppl. MTP"
* templateId[iheMedicationTreatmentPlanItem] ^definition = "Conformité de l'entrée aux spécifications IHE Pharm Suppl. MTP"
* templateId[ccdMedicationActivity].root 1..1
* templateId[ccdMedicationActivity].root = "2.16.840.1.113883.10.20.1.24"
* templateId[ccdMedicationActivity] ^short = "Conformité de l'entrée aux spécifications CCD"
* templateId[ccdMedicationActivity] ^definition = "Conformité de l'entrée aux spécifications CCD"
* templateId[iheMedicationsEntry].root 1..1
* templateId[iheMedicationsEntry].root = "1.3.6.1.4.1.19376.1.5.3.1.4.7"
* templateId[iheMedicationsEntry] ^short = "Conformité de l'entrée aux spécifications IHE PCC"
* templateId[iheMedicationsEntry] ^definition = "Conformité de l'entrée aux spécifications IHE PCC"
* templateId[frItemPlanTraitement].root 1..1
* templateId[frItemPlanTraitement].root = "1.2.250.1.213.1.1.3.96"
* templateId[frItemPlanTraitement] ^short = "Conformité de l'entrée FR-Item-plan-traitement (CI-SIS)"
* templateId[frItemPlanTraitement] ^definition = "Conformité de l'entrée FR-Item-plan-traitement (CI-SIS)"
* code MS
* code ^short = "Code de l'entrée"
* code ^definition = "Code de l'entrée"
* code.code = #DRUG
* code.code 1..1 MS
* code.displayName = "Médicament"
* code.displayName MS
* code.codeSystem = "2.16.840.1.113883.5.4"
* code.codeSystem 1..1 MS
* code.codeSystemName = "HL7_ActCode"
* text MS
* text 1..1
* text ^short = "Partie narrative de l’entrée"
* statusCode MS
* statusCode 1..1
* statusCode ^short = "Statut de l’entrée"
* statusCode ^definition = "Statut de l’entrée"
* statusCode.code = #completed
* effectiveTime MS
* effectiveTime MS
* effectiveTime ^slicing.discriminator.type = #pattern
* effectiveTime ^slicing.discriminator.path = "operator"
* effectiveTime ^slicing.rules = #open
* effectiveTime contains frEffectiveTimeDuree 0..1 and frEffectiveTimeFrequence 0..*
* effectiveTime[frEffectiveTimeDuree] obeys fr-operator-not-a-item-plan-traitement
* effectiveTime[frEffectiveTimeDuree] obeys fr-effectiveTime-duree-type-item-plan-traitement
* effectiveTime[frEffectiveTimeFrequence] obeys fr-operator-a-item-plan-traitement
* effectiveTime[frEffectiveTimeFrequence] obeys fr-effectiveTime-frequence-types-item-plan-traitement
* routeCode MS
* routeCode ^short = "Voie d'administration - Si la voie d'administration est connue, elle doit être indiquée (code et displayName).  - Si elle n'est pas connue, la raison pour laquelle elle est inconnue peut être décrite en utilisant l'attribut nullFlavor."
* routeCode ^definition = "Voie d'administration"
* routeCode from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-route-of-administration-cisis (required)
* approachSiteCode MS
* approachSiteCode ^short = "région anatomique d'administration"
* approachSiteCode ^definition = "région anatomique d'administration"
* approachSiteCode from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-human-substance-administration-site-cisis (required)
* doseQuantity MS
* doseQuantity ^short = "Dose à administrer. Dans le cas où la posologie n'est pas structurée et décrite uniquement dans la partie narrative , cet élément ne doit pas être présent
Dans le cas où la posologie est structurée et que le mode d'administration est 'normal' , la dose à administrer est obligatoire (nullFlavor interdit). Dans les autres cas , la dose à administrer peut être fournie."
* doseQuantity ^definition = "Dose à administrer"
* rateQuantity MS
* rateQuantity ^short = "Rythme d'administration. Dans le cas où la posologie n'est pas structurée et décrite uniquement dans la partie narrative , cet élément ne doit pas être présent. 
Dans le cas où la posologie est structurée et que le mode d'administration est 'normal' , le rythme d'administration est obligatoire (nullFlavor interdit). Dans les autres cas , le rythme d'administration peut être fourni"
* rateQuantity ^definition = "Rythme d'administration"
* maxDoseQuantity MS
* maxDoseQuantity ^short = "Dose maximale. La dose maximale à 'maxDoseQuantity' permet d'indiquer la quantité maximale de produit à administrer par unité de temps. Plusieurs occurrences de 'maxDoseQuantity' peuvent être utilisées pour indiquer différentes limites sur différentes périodes de temps.
Les sous-éléments 'numerator' et 'denominator' permettent de fournir :
- numerator : la quantité maximale à administrer,
- denominator : la plage de temps sur laquelle s'applique ce maximum. 
Les unités sont exprimées selon le système de codage UCUM."
* maxDoseQuantity ^definition = "Dose maximale"
* maxDoseQuantity.numerator 1..1 MS
* maxDoseQuantity.denominator 1..1 MS
* consumable MS
* consumable ^short = "Produit de santé"
* consumable ^definition = "Produit de santé"
* consumable only FRCDAProduitDeSante
* author MS
* author ^slicing.discriminator.type = #value
* author ^slicing.discriminator.path = "$this"
* author ^slicing.rules = #open
* author contains frAuteurDuTraitement 0..* and frAuteurDuPlanDeTraitement 0..1
* author[frAuteurDuTraitement] ^short = "Auteur du traitement"
* author[frAuteurDuTraitement] ^definition = "Auteur du traitement"
* author[frAuteurDuTraitement] only FRCDAAuthor
* author[frAuteurDuPlanDeTraitement] ^short = "Auteur du Plan de traitement"
* author[frAuteurDuPlanDeTraitement] ^definition = "Auteur du Plan de traitement"
* author[frAuteurDuPlanDeTraitement] only FRCDAAuthor
* entryRelationship MS
* entryRelationship ^slicing.discriminator.type = #value
* entryRelationship ^slicing.discriminator.path = "$this"
* entryRelationship ^slicing.rules = #open
* entryRelationship contains 
frReferenceInterne 0..*
 and frTraitementPrescritSubordonne 0..*
 and frInstructionsAuPatient 0..1
 and frInstructionsAuDispensateur 0..1
 and frQuantiteDeProduit 0..1
 and frAutorisationSubstitution 0..*
* entryRelationship[frReferenceInterne] ^short = "Entrée Motif du traitement (Référence interne)"
* entryRelationship[frReferenceInterne].typeCode = #RSON
* entryRelationship[frReferenceInterne].act only FRCDAReferenceInterne
* entryRelationship[frTraitementPrescritSubordonne] ^short = "Entrée Traitement subordonné"
* entryRelationship[frTraitementPrescritSubordonne].typeCode = #COMP
* entryRelationship[frTraitementPrescritSubordonne].substanceAdministration only FRCDATraitementPrescritSubordonne
* entryRelationship[frInstructionsAuPatient] ^short = "Entrée Instructions au patient"
* entryRelationship[frInstructionsAuPatient].typeCode = #SUBJ
* entryRelationship[frInstructionsAuPatient].inversionInd = true
* entryRelationship[frInstructionsAuPatient].act only FRCDAInstructionsAuPatient
* entryRelationship[frInstructionsAuDispensateur] ^short = "Entrée Instructions au dispensateur"
* entryRelationship[frInstructionsAuDispensateur].typeCode = #SUBJ
* entryRelationship[frInstructionsAuDispensateur].inversionInd = true
* entryRelationship[frInstructionsAuDispensateur].act only FRCDAInstructionsAuDispensateur
* entryRelationship[frQuantiteDeProduit] ^short = "Entrée Quantité à dispenser"
* entryRelationship[frQuantiteDeProduit].typeCode = #COMP
* entryRelationship[frQuantiteDeProduit].supply only FRCDAQuantiteDeProduit
* entryRelationship[frAutorisationSubstitution] ^short = "Entrée Autorisation de substitution"
* entryRelationship[frAutorisationSubstitution].typeCode = #COMP
* entryRelationship[frAutorisationSubstitution].act only FRCDAAutorisationSubstitution
* precondition MS
* precondition 0..1
* precondition ^short = "Précondition à l'utilisation du médicament. Permet de décrire les conditions préalables à l'utilisation du médicament. L'attribut @value de l'élément 'reference' est une URI qui pointe vers la partie narrative du document CDA décrivant ces conditions préalables."
* precondition ^definition = "Précondition à l'utilisation du médicament"
  * criterion MS
  * criterion.text 1..1 MS

Invariant: fr-operator-a-item-plan-traitement
Description: "operator doit être A"
Expression: "operator = 'A'"
Severity: #error
 
Invariant: fr-operator-not-a-item-plan-traitement
Description: "operator doit être différent de A"
Expression: "operator != 'A'"
Severity: #error
 
Invariant: fr-effectiveTime-frequence-types-item-plan-traitement
Description: "La fréquence doit être SXCM-TS, PIVL-TS, EIVL-TS ou SXPR-TS"
Expression: "is(SXCM_TS) or is(PIVL_TS) or is(EIVL_TS) or is(SXPR_TS)"
Severity: #error
 
Invariant: fr-effectiveTime-duree-type-item-plan-traitement
Description: "La durée doit être IVL-TS"
Expression: "is(IVL_TS)"
Severity: #error