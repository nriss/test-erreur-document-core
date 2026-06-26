// En attente de validation par APE concernant la création d’un modèle logique unique ObservationLab, ainsi que le choix du parent : FRLMEntry ou un FRLMObservationLab commun.
Logical: FRLMResultatsExamensBiologieMedicale
Id: fr-lm-resultats-examens-biologie-medicale
Parent: FRLMEntry
Title: "Logical model - FR LM Resultats d'examens de biologie medicale"
Description: """Resultats d'examens de biologie medicale"""
Characteristics: #can-be-target

* code 1..1 CodeableConcept "Code dont dérive le code de section"
* header.status ^short = "Niveau de complétude"
* choice[x] 0..1 FRLMSujetNonHumain or FRLMPatientSujetNonHumain "Sujet non humain ou Patient avec sujet non humain"
* laboratoireExecutant 0..* FRLMLaboratoireExecutant "Laboratoire sous-traitant."
* prelevement 0..* FRLMSpecimen "Prélèvement"
* batterieExamensDeBiologieMedicale 0..* FRLMBatterieExamensBiologieMedicale "Batterie d'examens de biologie médicale"
* isolatMicrobiologique 0..* FRLMIsolatMicrobiologique "Isolat microbiologique"
* resultatElementCliniquePertinent 0..* FRLMResultatExamensBiologieElementCliniquePertinent "Résultat d'examen de biologie / élément clinique pertinent"
* observationMedia 0..* FRLMObservationMedia "Image ou graphe"
* commentaire 0..* string "Commentaire"
