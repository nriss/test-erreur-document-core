// En attente de validation par APE concernant la création d’un modèle logique unique ObservationLab, ainsi que le choix du parent : FRLMEntry ou un FRLMObservationLab commun.
Logical: FRLMIsolatMicrobiologique
Id: fr-lm-isolat-microbiologique
Parent: FRLMEntry
Title: "Modèle logique métier - FR LM Isolat microbiologique"
Description: """Isolat microbiologique"""
Characteristics: #can-be-target

* codeIsolat 0..1 CodeableConcept "Code isolat"
* header
  * date ^short = "Date et heure des résultats"
* choice[x] 0..1 FRLMSujetNonHumain or FRLMPatientSujetNonHumain "Sujet non humain ou Patient avec sujet non humain"
* isolatMicrobiologique 1..1 Base "Isolat microbiologique"
  * isolat 1..1 Base "Isolat microbiologique"
    * identifiant 1..1 Identifier "Identifiant de l'isolat"
    * agent 1..1 Base "L'agent infectieux cultivé (bactérie, levure, virus, parasite)"
      * code 1..1 CodeableConcept "Code isolat"
* laboratoireExecutant 0..* FRLMLaboratoireExecutant "Laboratoire sous-traitant. Apparaît à ce niveau si et et seulement si ce résultat a été produit par un laboratoire exécutant distinct du laboratoire exécutant déclaré aux niveaux supérieurs."
* batterieExamensDeBiologieMedicale 0..* FRLMBatterieExamensBiologieMedicale "Batterie d'examens de biologie médicale"
* resultatElementCliniquePertinent 0..* FRLMResultatExamensBiologieElementCliniquePertinent "Résultat d'examen de biologie / élément clinique pertinent"
* imageIllustrative 0..* FRLMObservationMedia "Image ou graphe"
* commentaire 0..* string "Commentaire de section interprétant l'ensemble des résultats"
