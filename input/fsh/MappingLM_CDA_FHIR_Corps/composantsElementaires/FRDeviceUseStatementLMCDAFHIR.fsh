Instance: FRDeviceUseStatementLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMDispositifMedicalEntree → FRCDADispositifMedical → FRDeviceUseStatement"
Description: "Mapping des éléments du modèle métier FRLMDispositifMedicalEntree vers le
profil CDA FRCDADispositifMedical, puis vers le profil FHIR FRDeviceUseStatementDocument."

* title = "Mapping Métier/CDA/FHIR : \"Utilisation de dispositif médical\""
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
// Date d'utilisation ou de présence chez le patient
* group[=].element[+].code = #FRLMDispositifMedicalEntree.date
* group[=].element[=].target.code = #FRCDADispositifMedical.effectiveTime
* group[=].element[=].target.equivalence = #equivalent
// Dispensateur
* group[=].element[+].code = #FRLMDispositifMedicalEntree.dispensateur
* group[=].element[=].target.code = #FRCDADispositifMedical.performer
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

// Groupe Mapping 2 : CDA → FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-dispositif-medical"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-device-use-statement-document"
// Élément racine
* group[=].element[+].code = #FRCDADispositifMedical
* group[=].element[=].target.code = #FRDeviceUseStatementDocument   
* group[=].element[=].target.equivalence = #equivalent
// Identifiant
* group[=].element[+].code = #FRCDADispositifMedical.id
* group[=].element[=].target.code = #FRDeviceUseStatementDocument.identifier
* group[=].element[=].target.equivalence = #equivalent
// Date d'utilisation ou de présence chez le patient
* group[=].element[+].code = #FRCDADispositifMedical.effectiveTime
* group[=].element[=].target.code = #FRDeviceUseStatementDocument.timing[x]
* group[=].element[=].target.equivalence = #equivalent
// Dispensateur
* group[=].element[+].code = #FRCDADispositifMedical.performer
* group[=].element[=].target.code = #FRDeviceUseStatementDocument.source.extension:performer
* group[=].element[=].target.equivalence = #equivalent
// Dispositif médical
* group[=].element[+].code = #FRCDADispositifMedical.participant
* group[=].element[=].target.code = #FRDeviceUseStatementDocument.device
* group[=].element[=].target.equivalence = #equivalent
// Entrée En rapport avec une Affection Longue Durée (ALD)
* group[=].element[+].code = #FRCDADispositifMedical.entryRelationship:frEnRapportAvecALD
* group[=].element[=].target.code = #FRDeviceUseStatementDocument.reasonReference:EnRapportAvecALD
* group[=].element[=].target.equivalence = #equivalent
// Entrée En rapport avec accident travail
* group[=].element[+].code = #FRCDADispositifMedical.entryRelationship:frEnRapportAvecAccidentTravail
* group[=].element[=].target.code = #FRDeviceUseStatementDocument.reasonReference:EnRapportAvecAccidentTravail
* group[=].element[=].target.equivalence = #equivalent
// Entrée En rapport avec la prevention
* group[=].element[+].code = #FRCDADispositifMedical.entryRelationship:frEnRapportAvecPrevention
* group[=].element[=].target.code = #FRDeviceUseStatementDocument.reasonReference:EnRapportAvecLaPrevention
* group[=].element[=].target.equivalence = #equivalent
// Entrée Non remboursable
* group[=].element[+].code = #FRCDADispositifMedical.entryRelationship:frNonRemboursable
* group[=].element[=].target.code = #FRDeviceUseStatementDocument.extension:notCovered
* group[=].element[=].target.equivalence = #equivalent
