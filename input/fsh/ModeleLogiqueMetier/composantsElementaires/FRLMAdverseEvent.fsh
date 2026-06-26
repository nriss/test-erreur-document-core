// vérifier avec APE si à remplacer par reaction de type Base dans le modèle métier européen EHDSAllergyIntolerance
Logical: FRLMAdverseEvent
Id: fr-lm-adverse-event
Parent: FRLMEntry
Title: "Logical model - FR LM Adverse Event"
Description: """Entrée Effet indésirable"""
Characteristics: #can-be-target

* typeEffetIndesirable 1..1 CodeableConcept "Code de l'entrée. Type d'effet indésirable"
* valeur 1..1 CodeableConcept "Valeur de l'observation"
* traitement 1..1 FRLMMedicationAdministration "Médicament, substance incriminée, posologie"
* probleme 0..* FRLMCondition "Réaction observée"
* imputabiliteEffetIndesirable 0..1 FRLMImputabiliteEffetIndesirable "Imputabilité"
* graviteEffetIndesirable 1..1 FRLMSeverityAdverseEvent "Gravité"
* evolutionEffetIndesirable 0..1 FRLMEvolutionAdverseEvent "Evolution"
