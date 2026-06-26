Instance: FRSpecimenLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMPrelevement → FRCDAPrelevement → FRSpecimenDocument"
Description: "Mapping des éléments du modèle métier FRLMPrelevement vers le profil CDA FRCDAPrelevement, puis vers le profil FHIR FRSpecimenDocument."
* title = "Mapping Métier/CDA/FHIR : \"Prélèvement\""
* status = #draft

// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-prelevement"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-prelevement"
// Élément racine
* group[=].element[+].code = #FRLMPrelevement
* group[=].element[=].target.code = #FRCDAPrelevement
* group[=].element[=].target.equivalence = #equivalent
// Acte de prélèvement
* group[=].element[+].code = #FRLMPrelevement.actePrelevement
* group[=].element[=].target.code = #FRCDAPrelevement.code
* group[=].element[=].target.equivalence = #equivalent
// Date du prélèvement
* group[=].element[+].code = #FRLMPrelevement.datePrelevement
* group[=].element[=].target.code = #FRCDAPrelevement.effectiveTime
* group[=].element[=].target.equivalence = #equivalent
// Localisation du prélèvement
* group[=].element[+].code = #FRLMPrelevement.localisationPrelevement
* group[=].element[=].target.code = #FRCDAPrelevement.targetSiteCode
* group[=].element[=].target.equivalence = #equivalent
// Organisation prélevante
* group[=].element[+].code = #FRLMPrelevement.performer
* group[=].element[=].target.code = #FRCDAPrelevement.performer
* group[=].element[=].target.equivalence = #equivalent
// Échantillon prélevé (en CDA participant/@typeCode="PRD" -> specimen)
* group[=].element[+].code = #FRLMPrelevement.echantillonPreleve
* group[=].element[=].target.code = #FRCDAPrelevement.participant:echantillonPreleve
* group[=].element[=].target.equivalence = #equivalent
// Dispositif utilisé (en CDA participant/@typeCode="DEV" -> Device)
* group[=].element[+].code = #FRLMPrelevement.dispositifUtilise
* group[=].element[=].target.code = #FRCDAPrelevement.participant:dispositifUtilise
* group[=].element[=].target.equivalence = #equivalent
// Produit utilisé (en CDA participant/@typeCode="CSM" -> Consumable)
* group[=].element[+].code = #FRLMPrelevement.produitUtilise
* group[=].element[=].target.code = #FRCDAPrelevement.participant:produitUtilise
* group[=].element[=].target.equivalence = #equivalent
// Date de réception de l'échantillon
* group[=].element[+].code = #FRLMPrelevement.dateReceptionEchantillon
* group[=].element[=].target.code = #FRCDAPrelevement.entryRelationship.act
* group[=].element[=].target.equivalence = #equivalent

// Groupe Mapping 2 : CDA → FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-prelevement"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-specimen-document"
// Élément racine
* group[=].element[+].code = #FRCDAPrelevement
* group[=].element[=].target.code = #FRSpecimenDocument
* group[=].element[=].target.equivalence = #equivalent
// Acte de prélèvement
* group[=].element[+].code = #FRCDAPrelevement.code
* group[=].element[=].target.code = #FRSpecimenDocument.processing.procedure.coding.code
* group[=].element[=].target.equivalence = #equivalent
// Date du prélèvement
* group[=].element[+].code = #FRCDAPrelevement.effectiveTime
* group[=].element[=].target.code = #FRSpecimenDocument.collection.collected[x]
* group[=].element[=].target.equivalence = #equivalent
// Localisation du prélèvement
* group[=].element[+].code = #FRCDAPrelevement.targetSiteCode
* group[=].element[=].target.code = #FRSpecimenDocument.collection.bodySite
* group[=].element[=].target.equivalence = #equivalent
// Organisation prélevante
* group[=].element[+].code = #FRCDAPrelevement.performer
* group[=].element[=].target.code = #FRSpecimenDocument.collection.collector
* group[=].element[=].target.equivalence = #equivalent
// Échantillon prélevé
* group[=].element[+].code = #FRCDAPrelevement.participant:echantillonPreleve
* group[=].element[=].target.code = #FRSpecimenDocument.type
* group[=].element[=].target.equivalence = #equivalent
// Dispositif utilisé
* group[=].element[+].code = #FRCDAPrelevement.participant:dispositifUtilise
* group[=].element[=].target.code = #FRSpecimenDocument.container
* group[=].element[=].target.equivalence = #equivalent
// Produit utilisé
* group[=].element[+].code = #FRCDAPrelevement.participant:produitUtilise
* group[=].element[=].target.code = #FRSpecimenDocument.processing.additive:Substance
* group[=].element[=].target.equivalence = #equivalent
// Date de réception de l'échantillon
* group[=].element[+].code = #FRCDAPrelevement.entryRelationship.act
* group[=].element[=].target.code = #FRSpecimenDocument.receivedTime
* group[=].element[=].target.equivalence = #equivalent