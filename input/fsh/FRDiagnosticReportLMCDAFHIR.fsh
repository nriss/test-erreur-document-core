Instance: FRDiagnosticReportLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMResultatsEntry → FRCDAResultats → FRDiagnosticReportDocument"
Description: "Mapping des éléments du modèle métier FRLMResultatsEntry vers le profil CDA FRCDAResultats, puis vers le profil FHIR FRDiagnosticReportDocument."

* title = "Mapping Métier/CDA/FHIR : \"Types des résultats classés par type d’examens (BIO, IMG, etc…)\""
* status = #draft   
// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-resultats-entree"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-resultats"
// Élément racine   
* group[=].element[+].code = #FRLMResultatsEntry
* group[=].element[=].target.code = #FRCDAResultats
* group[=].element[=].target.equivalence = #equivalent
// Identifiant
* group[=].element[+].code = #FRLMResultatsEntry.identifiant
* group[=].element[=].target.code = #FRCDAResultats.id
* group[=].element[=].target.equivalence = #equivalent
// Code de l'entrée
* group[=].element[+].code = #FRLMResultatsEntry.code
* group[=].element[=].target.code = #FRCDAResultats.code
* group[=].element[=].target.equivalence = #equivalent
// Statut de l'entrée
* group[=].element[+].code = #FRLMResultatsEntry.statut 
* group[=].element[=].target.code = #FRCDAResultats.statusCode
* group[=].element[=].target.equivalence = #equivalent
// Date de l'entrée
* group[=].element[+].code = #FRLMResultatsEntry.date
* group[=].element[=].target.code = #FRCDAResultats.effectiveTime
* group[=].element[=].target.equivalence = #equivalent
// Exécutant
* group[=].element[+].code = #FRLMResultatsEntry.executant
* group[=].element[=].target.code = #FRCDAResultats.performer
* group[=].element[=].target.equivalence = #equivalent
// Auteur
* group[=].element[+].code = #FRLMResultatsEntry.auteur 
* group[=].element[=].target.code = #FRCDAResultats.author
* group[=].element[=].target.equivalence = #equivalent
// Résultat
* group[=].element[+].code = #FRLMResultatsEntry.resultat
* group[=].element[=].target.code = #FRCDAResultats.component:frResultat
* group[=].element[=].target.equivalence = #equivalent


// Groupe Mapping 2 : CDA → FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-resultats"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-diagnostic-report-document"
// Élément racine   
* group[=].element[+].code = #FRCDAResultats
* group[=].element[=].target.code = #FRDiagnosticReportDocument
* group[=].element[=].target.equivalence = #equivalent
// Identifiant
* group[=].element[+].code = #FRCDAResultats.id 
* group[=].element[=].target.code = #FRDiagnosticReportDocument.identifier
* group[=].element[=].target.equivalence = #equivalent
// Code de l'entrée
* group[=].element[+].code = #FRCDAResultats.code
* group[=].element[=].target.code = #FRDiagnosticReportDocument.code
* group[=].element[=].target.equivalence = #equivalent
// Statut de l'entrée
* group[=].element[+].code = #FRCDAResultats.statusCode
* group[=].element[=].target.code = #FRDiagnosticReportDocument.status
* group[=].element[=].target.equivalence = #equivalent
// Date de l'entrée
* group[=].element[+].code = #FRCDAResultats.effectiveTime
* group[=].element[=].target.code = #FRDiagnosticReportDocument.effective[x]
* group[=].element[=].target.equivalence = #equivalent
// Exécutant
* group[=].element[+].code = #FRCDAResultats.performer
* group[=].element[=].target.code = #FRDiagnosticReportDocument.performer.extension:performerFunction
* group[=].element[=].target.equivalence = #equivalent
// Auteur
* group[=].element[+].code = #FRCDAResultats.author
* group[=].element[=].target.code = #FRDiagnosticReportDocument.resultsInterpreter.extension:performerFunction
* group[=].element[=].target.equivalence = #equivalent
// Résultat
* group[=].element[+].code = #FRCDAResultats.component:frResultat
* group[=].element[=].target.code = #FRDiagnosticReportDocument.result
* group[=].element[=].target.equivalence = #equivalent
