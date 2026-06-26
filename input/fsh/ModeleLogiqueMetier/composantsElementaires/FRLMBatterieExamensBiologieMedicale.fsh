// En attente de validation par APE concernant la création d’un modèle logique unique ObservationLab, ainsi que le choix du parent : FRLMEntry ou un FRLMObservationLab commun.
Logical: FRLMBatterieExamensBiologieMedicale
Id: fr-lm-batterie-examens-biologie-medicale
Parent: FRLMEntry
Title: "Modèle logique métier - FR LM Batterie d'examens de biologie médicale"
Description: """Entrée Batterie d'examens de biologie médicale"""
Characteristics: #can-be-target

* codeBatterieExamen 0..1 CodeableConcept "Code de la batterie d'examen"
* choice[x] 0..1 FRLMSujetNonHumain or FRLMPatientSujetNonHumain "Sujet non humain ou Patient avec sujet non humain"
* laboratoireExecutant 0..* FRLMLaboratoireExecutant "Laboratoire sous-traitant. Apparaît à ce niveau si et et seulement si ce résultat a été produit par un laboratoire exécutant distinct du laboratoire exécutant déclaré aux niveaux supérieurs."
* prelevement 0..* FRLMSpecimen "Prélèvement"
* resultatElementCliniquePertinent 0..* FRLMResultatExamensBiologieElementCliniquePertinent "Résultat d'examen de biologie / élément clinique pertinent"
* imageIllustrative 0..* FRLMObservationMedia "Image illustrative"
* commentaire 0..* string "Commentaire"
