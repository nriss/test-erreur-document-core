Profile: FRCDASectionCRBIOChapitre
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Section
Id: fr-cda-cr-bio-chapitre
Title: "CDA - FR CR BIO Chapitre"
Description: "IHE-PaLM - Laboratory Specialty Section
 - Une section de premier niveau est appelée 'Chapitre' et correspond à une sous-discipline de la biologie médicale (par exemple « biochimie »). Elle contient :
  - soit directement la présentation des résultats d'examens de biologie médicale obtenus pour ce chapitre : dans ce cas, il y a un unique élément <text> (présentation du contenu pour le lecteur) et un unique élément <entry> (données codées pour les SIS dont procède le contenu de l'élément <text>)
  - soit une liste de sections de second niveau, appelés sous-chapitres (par exemple « Gaz du sang ») : dans ce cas, il y a une liste d'éléments <component> dont chacun introduit une <section> de second niveau présentant un sous-ensemble de un ou plusieurs résultats d'examens de biologie médicale.Remarque : L'arborescence du corps du compte rendu d'examens de biologie médicale est choisie par le LPS producteur du document selon la logique de présentation définie par le laboratoire."
* templateId 1..2
* templateId ^slicing.discriminator.type = #value
* templateId ^slicing.discriminator.path = "root"
* templateId ^slicing.rules = #open
* templateId contains iheLaboratorySpecialtySection 1..1
and frSectionCrBioChapitre 1..1
* templateId[iheLaboratorySpecialtySection].root = "1.3.6.1.4.1.19376.1.3.3.2.1"
* templateId[iheLaboratorySpecialtySection] ^short = "Déclaration de conformité de la section aux spécifications IHE PCC"
* templateId[frSectionCrBioChapitre].root = "1.2.250.1.213.1.1.2.70"
* templateId[frSectionCrBioChapitre] ^short = "Déclaration de conformité de la section aux spécifications CI-SIS"
* id MS
* id ^short = "Identifiant de la section"
* id ^definition = "Identifiant de la section"
* code MS
* code 1..1
* code ^short = "Code du chapitre. Le code du chapitre doit être un code issu du jeu de valeurs Circuit de la biologie (disponible sur bioloinc.fr), onglet ‘2.Chapitres LOINC’ et contenant les codes et libellés traduits en français pour la biologie."
* code ^definition = "Code du chapitre"
* code.code 1..1 
* code.displayName 1..1
* code.codeSystem 1..1
* title MS
* title ^short = "Titre du chapitre"
* title ^definition = "Titre du chapitre"
* text MS
* text ^short = "Résultats présentés et interprétés pour le lecteur Présentation textuelle et/ou graphique pour le lecteur, des résultats des examens de biologie médicale du chapitre, accompagnés de leur interprétation."
* text ^definition = "Résultats présentés et interprétés pour le lecteur"
* entry 0..1 
* entry.act only FRCDAResultatsExamensDeBiologieMedicale 
* component.section only FRCDASectionCRBIOSousChapitre 
* obeys entry-or-component

Invariant: entry-or-component
Description: "La section doit contenir soit des entries soit des components, mais pas les deux."
Expression: "(entry.exists() and component.empty()) or (component.exists() and entry.empty())"
Severity: #error