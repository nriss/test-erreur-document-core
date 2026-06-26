Profile: FRCDASectionResultatsDeBiologieDeSecondeIntention
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Section
Id: fr-cda-resultats-de-biologie-de-seconde-intention
Title: "CDA - FR Resultats de biologie de seconde intention"
Description: "Cette section, optionnelle, est utilisée uniquement dans le cas d'usage particulier des résultats d'examen de laboratoire de biologie de seconde intention, lorsqu'ils ne peuvent être fournis dans un format structuré mais uniquement au format PDF.Cette solution permet d'encapsuler un fichier au format (PDF) et encodé en base 64 dans une section spécifique 'Résultats de laboratoire de biologie de seconde intention'.Attention : cette solution n'est pas conseillée et reste temporaire, car à terme, tous les résultats émanant des laboratoires de biologie devront être fournis dans un format structuré et codé."
* templateId 1..1
* templateId ^slicing.discriminator.type = #value
* templateId ^slicing.discriminator.path = "root"
* templateId ^slicing.rules = #open
* templateId contains frSectionResultatsDeLaboratoireDeBiologieDeSecondeIntention 1..1
* templateId[frSectionResultatsDeLaboratoireDeBiologieDeSecondeIntention].root = "1.2.250.1.213.1.1.2.60"
* templateId[frSectionResultatsDeLaboratoireDeBiologieDeSecondeIntention] ^short = "Conformité de la section aux spécifications (CI-SIS)"
* id MS
* id ^short = "Identifiant de la section"
* id ^definition = "Identifiant de la section"
* code MS
* code 1..1
* code ^short = "Code de la section"
* code ^definition = "Code de la section"
* code.code 1..1 MS
* code.code = #101792-0
* code.displayName 1..1 MS
* code.displayName = "Résultats de laboratoire scannés"
* code.codeSystem 1..1 MS
* code.codeSystem = "2.16.840.1.113883.6.1"
* code.codeSystemName = "LOINC"
* title MS
* title ^short = "Titre de la section"
* title ^definition = "Titre de la section"
* text 1..1 MS
* text ^short = "Bloc narratif"
* text ^definition = "Bloc narratif"
* entry MS
* entry 1..*
* entry ^slicing.discriminator.type = #type
* entry ^slicing.discriminator.path = "$this"
* entry ^slicing.rules = #open
* entry contains
frSimpleObservation 0..1 and
frDocumentAttache 1..*
* entry[frSimpleObservation].observation only FRCDASimpleObservation
* entry[frSimpleObservation].observation ^short = "Entrée Simple observation"
* entry[frDocumentAttache].organizer only FRCDADocumentAttache
* entry[frDocumentAttache].organizer ^short = "Entrée Document attaché"
