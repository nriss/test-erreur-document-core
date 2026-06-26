Profile: FRCDADocumentAttache
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Organizer
Id: fr-cda-document-attache
Title: "CDA - FR Document attache"
Description: "Entrée FR-Document-attache: L'entrée Document Attaché est une entrée de type organiser qui permet de regrouper dans une même entrée les éléments qui contiennent :  
 - un élément de type Simple Observations (1.3.6.1.4.1.19376.1.5.3.1.4.13) définissant la nature du document attaché,  
 - un élément de type ObservationMedia acceptant tout type d'objets prévus par CDA et qui porte le document attaché. Son contenu est un élément codé en Base 64. Le charset par défaut est le charset ISO-8859-1. L'avantage de cette entrée est qu'elle permet de porter pratiquement tous types de média (pdf, image, etc…), contrairement à l'élément Image illustrative qui ne peut porter que des images au format gif, jpeg, png ou bm. "
* classCode MS
* classCode = #CLUSTER
* moodCode MS
* id 1..1 MS
* id ^short = "Identifiant de l'entrée"
* id ^definition = "Identifiant de l'entrée"
* templateId 1..1
* templateId.root = "1.2.250.1.213.1.1.3.18"
* templateId ^short = "Conformité FR-Document-attache (CI-SIS)"
* templateId ^definition = "Conformité FR-Document-attache (CI-SIS)"
* code MS
* code 1..1
* code ^short = "Code de l'entrée"
* code ^definition = "Code de l'entrée"
* code.code = #55107-7
* code.displayName = "Document attaché"
* code.codeSystem = "2.16.840.1.113883.6.1"
* code.codeSystemName = "LOINC"
* code.code 1..1 MS
* code.displayName MS
* code.codeSystem 1..1 MS
* statusCode MS
* statusCode 1..1
* statusCode ^short = "Statut de l'entrée"
* statusCode ^definition = "Statut de l'entrée"
* statusCode.code = #completed
* effectiveTime MS
* effectiveTime ^short = "Date de l'entrée"
* effectiveTime ^definition = "Date de l'entrée"
* component MS
* component 1..2
* component ^slicing.discriminator.type = #type
* component ^slicing.discriminator.path = "$this"
* component ^slicing.rules = #open
* component contains
frTypeDocumentAttache 1..1 and
frObservationMedia  1..1 
* component[frTypeDocumentAttache].observation 0..1 
* component[frTypeDocumentAttache].observation only FRCDATypeDocumentAttache
* component[frTypeDocumentAttache] ^short = "Type de document attaché"
* component[frObservationMedia] ^short = "Document attaché"
* component[frObservationMedia].observationMedia 1..1
* component[frObservationMedia].observationMedia 
  * classCode MS
  * moodCode MS
  * id 0..1
  * id ^short = "Identifiant de l'observationMedia"
  * id ^definition = "Identifiant de l'observationMedia"
  * value MS
  * value 1..1
  * value ^short = "Document encodé en Base 64.  Le charset utilisé par défaut est iso-8859-1"
    * representation MS
    * representation ^short = "B64"
    * mediaType MS
    * mediaType ^short = "Valeurs les plus utilisées : 'image/gif' ou 'image/jpeg' ou 'image/png' ou 'image/bm'ou 'image/tiff' ou 'text/rtf' ou 'text/plain' ou 'application/pdf'ou ou 'application/xml. D’autres valeurs peuvent être utilisées."
