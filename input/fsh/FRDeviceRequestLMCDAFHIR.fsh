Instance: FRDeviceRequestLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMDispositifMedicalEntree → FRCDADispositifMedical → FRDeviceRequestDocument"
Description: "Mapping des éléments du modèle métier FRLMDispositifMedicalEntree vers le profil CDA FRCDADispositifMedical, puis vers le profil FHIR FRDeviceRequestDocument."

* title = "Mapping Métier/CDA/FHIR : \"Prescription de dispositif médical\""
* status = #draft

// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-dispositif-medical-entree"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-dispositif-medical"

// Élément racine
* group[=].element[+].code = #FRLMDispositifMedicalEntree
* group[=].element[=].target.code = #FRCDADispositifMedical
* group[=].element[=].target.equivalence = #equivalent
// Identifiant
* group[=].element[+].code = #FRLMDispositifMedicalEntree.identifiant
* group[=].element[=].target.code = #FRCDADispositifMedical.id
* group[=].element[=].target.equivalence = #equivalent
// Description narrative
* group[=].element[+].code = #FRLMDispositifMedicalEntree.description
* group[=].element[=].target.code = #FRCDADispositifMedical.text
* group[=].element[=].target.equivalence = #equivalent  
// Date d'utilisation ou de présence chez le patient
* group[=].element[+].code = #FRLMDispositifMedicalEntree.date
* group[=].element[=].target.code = #FRCDADispositifMedical.effectiveTime
* group[=].element[=].target.equivalence = #equivalent
// Nombre de renouvellement(s) possible(s)
* group[=].element[+].code = #FRLMDispositifMedicalEntree.renouvellement
* group[=].element[=].target.code = #FRCDADispositifMedical.repeatNumber
* group[=].element[=].target.equivalence = #equivalent
// Durée d'utilisation
* group[=].element[+].code = #FRLMDispositifMedicalEntree.duree
* group[=].element[=].target.code = #FRCDADispositifMedical.expectedUseTime
* group[=].element[=].target.equivalence = #equivalent
// Quantité
* group[=].element[+].code = #FRLMDispositifMedicalEntree.quantite
* group[=].element[=].target.code = #FRCDADispositifMedical.quantity
* group[=].element[=].target.equivalence = #equivalent
// Prescripteur
* group[=].element[+].code = #FRLMDispositifMedicalEntree.auteur
* group[=].element[=].target.code = #FRCDADispositifMedical.author
* group[=].element[=].target.equivalence = #equivalent
// Dispositif médical
* group[=].element[+].code = #FRLMDispositifMedicalEntree.dispositifMedical
* group[=].element[=].target.code = #FRCDADispositifMedical.participant
* group[=].element[=].target.equivalence = #equivalent

// Entrée En rapport avec une Affection Longue Durée (ALD)
* group[=].element[+].code = #FRLMDispositifMedicalEntree.affectionLongueDuree
* group[=].element[=].target.code = #FRCDADispositifMedical.entryRelationship:frEnRapportAvecALD
* group[=].element[=].target.equivalence = #equivalent
// Entrée En rapport avec accident travail
* group[=].element[+].code = #FRLMDispositifMedicalEntree.accidentTravail
* group[=].element[=].target.code = #FRCDADispositifMedical.entryRelationship:frEnRapportAvecAccidentTravail
* group[=].element[=].target.equivalence = #equivalent  
// Entrée En rapport avec la prevention
* group[=].element[+].code = #FRLMDispositifMedicalEntree.prevention
* group[=].element[=].target.code = #FRCDADispositifMedical.entryRelationship:frEnRapportAvecPrevention
* group[=].element[=].target.equivalence = #equivalent
// Entrée Non remboursable
* group[=].element[+].code = #FRLMDispositifMedicalEntree.nonRemboursable
* group[=].element[=].target.code = #FRCDADispositifMedical.entryRelationship:frNonRemboursable
* group[=].element[=].target.equivalence = #equivalent  


// Groupe Mapping 2 : CDA → FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-dispositif-medical"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-device-request-document"
// Élément racine   
* group[=].element[+].code = #FRCDADispositifMedical
* group[=].element[=].target.code = #FRDeviceRequestDocument
* group[=].element[=].target.equivalence = #equivalent  
// Identifiant
* group[=].element[+].code = #FRCDADispositifMedical.id
* group[=].element[=].target.code = #FRDeviceRequestDocument.identifier
* group[=].element[=].target.equivalence = #equivalent  
// Description narrative
* group[=].element[+].code = #FRCDADispositifMedical.text
* group[=].element[=].target.code = #FRDeviceRequestDocument.note
* group[=].element[=].target.equivalence = #equivalent  
// Date d'utilisation ou de présence chez le patient
* group[=].element[+].code = #FRCDADispositifMedical.effectiveTime
* group[=].element[=].target.code = #FRDeviceRequestDocument.occurrence[x]
* group[=].element[=].target.equivalence = #equivalent
// Nombre de renouvellement(s) possible(s)
* group[=].element[+].code = #FRCDADispositifMedical.repeatNumber
* group[=].element[=].target.code = #FRDeviceRequestDocument.occurrenceTiming.repeat.count
* group[=].element[=].target.equivalence = #equivalent
// Durée d'utilisation
* group[=].element[+].code = #FRCDADispositifMedical.expectedUseTime
* group[=].element[=].target.code = #FRDeviceRequestDocument.occurrencePeriod
* group[=].element[=].target.equivalence = #equivalent
// Quantité
* group[=].element[+].code = #FRCDADispositifMedical.quantity
* group[=].element[=].target.code = #FRDeviceRequestDocument.parameter.valueQuantity
* group[=].element[=].target.equivalence = #equivalent
// Prescripteur
* group[=].element[+].code = #FRCDADispositifMedical.author
* group[=].element[=].target.code = #FRDeviceRequestDocument.requester.extension:prescripteur
* group[=].element[=].target.equivalence = #equivalent  
// Dispositif médical
* group[=].element[+].code = #FRCDADispositifMedical.participant
* group[=].element[=].target.code = #FRDeviceRequestDocument.codeReference
* group[=].element[=].target.equivalence = #equivalent
// Entrée En rapport avec une Affection Longue Durée (ALD)
* group[=].element[+].code = #FRCDADispositifMedical.entryRelationship:frEnRapportAvecALD
* group[=].element[=].target.code = #FRDeviceRequestDocument.reasonReference:EnRapportAvecALD
* group[=].element[=].target.equivalence = #equivalent
// Entrée En rapport avec accident travail
* group[=].element[+].code = #FRCDADispositifMedical.entryRelationship:frEnRapportAvecAccidentTravail
* group[=].element[=].target.code = #FRDeviceRequestDocument.reasonReference:EnRapportAvecAccidentTravail
* group[=].element[=].target.equivalence = #equivalent  
// Entrée En rapport avec la prevention
* group[=].element[+].code = #FRCDADispositifMedical.entryRelationship:frEnRapportAvecPrevention
* group[=].element[=].target.code = #FRDeviceRequestDocument.reasonReference:EnRapportAvecLaPrevention
* group[=].element[=].target.equivalence = #equivalent
// Entrée Non remboursable
* group[=].element[+].code = #FRCDADispositifMedical.entryRelationship:frNonRemboursable
* group[=].element[=].target.code = #FRDeviceRequestDocument.extension:notCovered
* group[=].element[=].target.equivalence = #equivalent
