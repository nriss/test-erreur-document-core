Instance: FRFamilyMemberHistoriesLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMAntecedentsFamiliauxEntree → FRCDAAntecedentsFamiliaux → FRFamilyMemberHistoryDocument"
Description: "Mapping des éléments du modèle métier FRLMAntecedentsFamiliauxEntree vers le profil CDA FRCDAAntecedentsFamiliaux, puis vers le profil FHIR FRFamilyMemberHistoryDocument."
* title = "Mapping Métier/CDA/FHIR : \"Antécédents familiaux\""
* status = #draft

// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-antecedents-familiaux-entree"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-antecedents-familiaux"
// Élément racine
* group[=].element[+].code = #FRLMAntecedentsFamiliauxEntree
* group[=].element[=].target.code = #FRCDAAntecedentsFamiliaux
* group[=].element[=].target.equivalence = #equivalent
// Statut de l’entrée
* group[=].element[+].code = #FRLMAntecedentsFamiliauxEntree.statut
* group[=].element[=].target.code = #FRCDAAntecedentsFamiliaux.statusCode
* group[=].element[=].target.equivalence = #equivalent
// Identification du parent
* group[=].element[+].code = #FRLMAntecedentsFamiliauxEntree.identificationParent
* group[=].element[=].target.code = #FRCDAAntecedentsFamiliaux.subject
* group[=].element[=].target.equivalence = #equivalent
// Lien avec un autre sujet
* group[=].element[+].code = #FRLMAntecedentsFamiliauxEntree.participant
* group[=].element[=].target.code = #FRCDAAntecedentsFamiliaux.participant
* group[=].element[=].target.equivalence = #equivalent
// Antécédent familial observé
* group[=].element[+].code = #FRLMAntecedentsFamiliauxEntree.antecedentFamilialObserve
* group[=].element[=].target.code = #FRCDAAntecedentsFamiliaux.component:frAntecedentFamilialObserve
* group[=].element[=].target.equivalence = #equivalent
// Groupe Mapping 2 : CDA → FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-antecedents-familiaux"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-family-member-history-document"
// Élément racine
* group[=].element[+].code = #FRCDAAntecedentsFamiliaux
* group[=].element[=].target.code = #FRFamilyMemberHistoryDocument
* group[=].element[=].target.equivalence = #equivalent
// Statut de l’entrée
* group[=].element[+].code = #FRCDAAntecedentsFamiliaux.statusCode
* group[=].element[=].target.code = #FRFamilyMemberHistoryDocument.status
* group[=].element[=].target.equivalence = #equivalent
// Identification du parent
* group[=].element[+].code = #FRCDAAntecedentsFamiliaux.subject
* group[=].element[=].target.code = #FRFamilyMemberHistoryDocument.relationship
* group[=].element[=].target.equivalence = #equivalent
// Sexe du sujet
* group[=].element[+].code = #FRCDAAntecedentsFamiliaux.subject.relatedSubject.subject.administrativeGenderCode
* group[=].element[=].target.code = #FRFamilyMemberHistoryDocument.sex
* group[=].element[=].target.equivalence = #equivalent
// Date de naissance du sujet
* group[=].element[+].code = #FRCDAAntecedentsFamiliaux.subject.relatedSubject.subject.birthTime
* group[=].element[=].target.code = #FRFamilyMemberHistoryDocument.born[x]
* group[=].element[=].target.equivalence = #equivalent
// Sujet décédé
* group[=].element[+].code = #FRCDAAntecedentsFamiliaux.subject.relatedSubject.subject.sdtc:deceasedInd
* group[=].element[=].target.code = #FRFamilyMemberHistoryDocument.deceasedBoolean
* group[=].element[=].target.equivalence = #equivalent
// Date de décès du sujet
* group[=].element[+].code = #FRCDAAntecedentsFamiliaux.subject.relatedSubject.subject.sdtc:deceasedTime
* group[=].element[=].target.code = #FRFamilyMemberHistoryDocument.deceasedDate
* group[=].element[=].target.equivalence = #equivalent
// Sujet né d’une naissance multiple
* group[=].element[+].code = #FRCDAAntecedentsFamiliaux.subject.relatedSubject.subject.sdtc:multipleBirthInd
* group[=].element[=].target.code = #FRFamilyMemberHistoryDocument.patient.multipleBirthBoolean
* group[=].element[=].target.equivalence = #equivalent
// Rang de naissance (en cas de naissances multiples)
* group[=].element[+].code = #FRCDAAntecedentsFamiliaux.subject.relatedSubject.subject.sdtc:multipleBirthOrderNumber
* group[=].element[=].target.code = #FRFamilyMemberHistoryDocument.patient.multipleBirthInteger
* group[=].element[=].target.equivalence = #equivalent
// Lien avec un autre sujet
* group[=].element[+].code = #FRCDAAntecedentsFamiliaux.participant
* group[=].element[=].target.code = #FRFamilyMemberHistoryDocument.relationship
* group[=].element[=].target.equivalence = #equivalent
// Antécédent familial observé
* group[=].element[+].code = #FRCDAAntecedentsFamiliaux.component:frAntecedentFamilialObserve
* group[=].element[=].target.code = #FRFamilyMemberHistoryDocument.condition
* group[=].element[=].target.equivalence = #equivalent
