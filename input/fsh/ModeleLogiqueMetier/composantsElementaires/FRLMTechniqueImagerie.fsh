Logical: FRLMTechniqueImagerie
Id: fr-lm-technique-imagerie
Parent: FRLMEntry
Title: "Logical model- FR LM Technique imagerie"
Description: """Entrée Technique imagerie"""
Characteristics: #can-be-target

* codeActe 1..1 CodeableConcept "Code de l'acte d'imagerie"
  * ^binding.description = "jdv-code-document-imagerie-cisis (1.2.250.1.213.1.1.5.687)"
* description 0..1 markdown "Partie narrative de l'observation"
* modaliteAcquisition 1..* CodeableConcept "Modalité d’acquisition"
  * ^binding.description = "jdv-modalite-acquisition-cisis (1.2.250.1.213.1.1.5.618)"
* lateralite 0..1 CodeableConcept "Latéralité et topographie" 
  * ^binding.description = "SNOMED CT (2.16.840.1.113883.6.96)"
  * precisionTopographique 0..1 CodeableConcept "Précision topographique"
    * nom 1..1 CodeableConcept "name"
    * valeur 1..1 CodeableConcept "Valeur de la topographie"
      * ^binding.description = "jdv-modificateur-topographique-cisis (1.2.250.1.213.1.1.5.688)"