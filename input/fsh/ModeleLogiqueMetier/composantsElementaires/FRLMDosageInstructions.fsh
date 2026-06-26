Logical: FRLMDosageInstructions
Id: fr-lm-dosageInstructions
Title: "Logical model- FR LM Dosage Instructions"
Description: """Posologie"""
Characteristics: #can-be-target

* renderedDosageInstruction 0..1 string "Posologie sous forme textuelle"
* dosageDetails 0..* Base "Posologie Structurée"
  * sequence 0..1 decimal "Numéro de séquence permettant d'indiquer l'ordre des posologies dans le cas où il y a plusieurs posologies. La séquence s+1 commence à la fin de la séquence s. En cas de séquences ayant le même numéro, celles-ci se déroulent simultanément." 
  * note 0..1 string "Instructions au patient"
  * doseAndRate 0..* Base "Quantité de médicament administrée par prise"
    * dose[x] 0..1 Quantity or Range "La quantité de médicament administrée par prise
Exemple - 20mg: {'value':20,'unit':'mg','system':'http://unitsofmeasure.org','code':'mg'}
Exemple - 1 à 3 comprimés: {'low':{'value':1,'unit':'Comprimé','system':'http://standardterms.edqm.eu','code':'15054000'},'high':{'value':3,'unit':'Comprimé','system':'http://standardterms.edqm.eu','code':'15054000'}}"
    * rate[x] 0..1 Quantity or Ratio or Range "Rythme d'administration
Période temporelle pendant laquelle une dose définie est administrée, pour les perfusions par exemple.
Exemple - 400µg pendant une minute (perfusion): {'numerator':{'value':400,'unit':'µg','system':'http://unitsofmeasure.org','code':'µg'},'denominator':{'value':1,'unit':'min','system':'http://unitsofmeasure.org','code':'min'}}"
  * dateOfAdministration 0..* dateTime  "Date précise du moment de prise"
  //Précondition
  * conditionOfAdministration 0..* CodeableConcept "Code ou texte de la condition sous laquelle le traitement doit être pris (ex : en cas de douleurs)."
  * date[x] 0..1 Period or Quantity or Range "Période (date de début et de fin), durée ou intervalle de durée de la séquence de traitement (un parmi les trois)
Exemple - La période représente une date de début et de fin (ex : du 1/10/2025 au 10/10/2025), la durée représente une quantité (ex : 5 jours), l'intervalle représente une quantité minimale et une quantité maximale (ex : de 5 à 10 jours)): {}"
  * duration 0..1 Base "Durée ou rythme d'administration - indique le temps d'administration des prises de la séquence (exemple d'utilisation : perfusion ou patch)
Exemple - Administration pendant 10 minutes: {}"
    * durationValue 0..1 decimal "Durée de l'administration"
    * durationUnit 0..1 code "Unité de la durée d'administration"
    * durationMax 0..1 decimal "Durée maximale de l'administration"
  * frequency 0..1 Base "Fréquence de prise"
    * numberOfTimes 0..1 decimal "Nombre de prise de la quantité 'quantitePrescrite' par période (ex : *une fois* dans une fois tous les trois jours)"
    * period 0..1 Quantity "Durée sur laquelle la fréquence s'applique (ex : *tous les trois jours* une fois tous les trois jours)"
    * dayOfWeek 0..* code  "Jour de la semaine de la prise"
    * timeOfDay 0..1 time "Heure de la prise"
    * additionalInstructions 0..1 string "Instruction additionnelle"
  * eventTime 0..* Base "Définition du moment de prise au cours de la journée (ex : 30 minutes avant le repas)"
    * eventTimeCode 0..1 CodeableConcept "Code ou texte du moment de prise"
    * offset 0..1 unsignedInt "Temps en minute avant/après l'élément déclenchant"
  * eventEndSequence 0..1 CodeableConcept "Evenement de fin de la séquence"
  * bodySite 0..* CodeableConcept "région anatomique d'administration"
  * routeOfAdministration 0..1 CodeableConcept "Voie d'administration"
  * maxDosePerPeriod 0..* Base "Dose maximale pour un temps donné (exemple : prise maximale pour 24h)."
    * quantity 0..1 SimpleQuantity "Dose maximale à administrer pour l'unité de temps donnée"
    * duration 0..1 Quantity "Durée pour laquelle il y a une dose maximale administrable
Exemple - Par jour, par semaine, par mois, ...: {}"
  * maxDosePerAdministration 0..1 Quantity "Dose maximale pour une administration"
  * maxLifetimeDose 0..1 Quantity "Dose maximale sur une vie"