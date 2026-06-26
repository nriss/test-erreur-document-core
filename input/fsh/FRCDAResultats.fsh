Profile: FRCDAResultats
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Organizer
Id: fr-cda-resultats
Title: "CDA - FR resultats"
Description: "Entrée FR-resultats: L'entrée 'FR-Resultats' est une entrée de type 'organizer' regroupant les types des résultats classés par type d’examens (BIO, IMG, etc…)."
* classCode MS
* classCode = #CLUSTER
* moodCode MS
* id 1..1
* id ^short = "Identifiant de l'entrée"
* id ^definition = "Identifiant de l'entrée"
* templateId 1..1
* templateId ^slicing.discriminator.type = #value
* templateId ^slicing.discriminator.path = "root"
* templateId ^slicing.rules = #open
* templateId contains frResultats 1..1
* templateId[frResultats] 1..1
* templateId[frResultats].root = "1.2.250.1.213.1.1.3.208"
* templateId[frResultats] ^short = "Conformité FR-Resultats (CI-SIS)"
* templateId[frResultats] ^definition = "Conformité FR-Resultats (CI-SIS)"
* code MS
* code 1..1
* code ^short = "Code de l'entrée en LOINC.
Type de résultat : 
- 26436-6 Biologie polyvalente 
- 18748-4 Imagerie
- 26438-2 Cytologie
- 27898-6 Pathologie
- 26435-8 Génétique humaine"
* code ^definition = "Code de l'entrée en LOINC"
* code from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-resultat-type-cisis
* statusCode MS
* statusCode 1..1
* statusCode ^short = "Statut de l'entrée : completed"
* statusCode ^definition = "Statut de l'entrée"
* effectiveTime MS
* effectiveTime 0..1
* effectiveTime ^short = "Date"
* effectiveTime ^definition = "Date"
* performer 1..1
* performer ^short = "Exécutant"
* performer ^definition = "Exécutant"
* performer only FRCDALaboratoireExecutant
* author 1..1
* author ^short = "Auteur"
* author ^definition = "Auteur"
* author only FRCDAAuthor
* component MS
* component 1..1
* component ^slicing.discriminator.type = #type
* component ^slicing.discriminator.path = "$this"
* component ^slicing.rules = #open
* component contains
frResultat 1..1 
* component[frResultat].observation 0..1 
* component[frResultat].observation only FRCDAResultat
* component[frResultat].observation ^short = "Entrée FR-Resultat"
* component[frResultat].observation ^definition = "Entrée FR-Resultat"