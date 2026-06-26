// En attente de validation par APE concernant la création d’un modèle logique unique ObservationLab, ainsi que le choix du parent : FRLMEntry ou un FRLMObservationLab commun.
Logical: FRLMResultatExamensBiologieElementCliniquePertinent
Id: fr-lm-resultat-examens-biologie-element-clinique-pertinent
Parent: FRLMEntry
Title: "Modèle logique métier - FR LM Résultat d'examens de biologie / élement clinique pertinent"
Description: """Résultat d'examens de biologie / élement clinique pertinent"""
Characteristics: #can-be-target

* codeIdentification 0..1 CodeableConcept "Code d'identification de l'analyse ou de l'observation"
* header.status ^short = "Niveau de complétude"
* valeurResultat[x] 0..1 CodeableConcept or string or Quantity  or Ratio or Range  "Valeur du résultat"
* interpretation 0..1 CodeableConcept "Code d'interprétation"
* methode 0..1 CodeableConcept "Méthode ou technique employée"
* choice[x] 0..1 FRLMSujetNonHumain or FRLMPatientSujetNonHumain "Sujet non humain ou Patient avec sujet non humain"
* laboratoireExecutant 0..* FRLMLaboratoireExecutant "Laboratoire sous-traitant. Apparaît à ce niveau si et et seulement si ce résultat a été produit par un laboratoire exécutant distinct du laboratoire exécutant déclaré aux niveaux supérieurs."
* commentaire 0..* string "Commentaire d'interprétation des résultats"
* prelevement 0..* FRLMSpecimen "Prélèvement"
* resultatsAnterieurs 0..* Base "Résultats antérieurs. Plusieurs résultats antérieurs peuvent être ajoutés. 
 - Ils doivent être comparables avec le résultat rendu, c'est-à-dire obtenus suivant la même méthode ou une méthode comparable, et exprimés dans la même unité ou dans le même système de codage."
* intervallesReference 0..1 Base "Intervalles de référence"
