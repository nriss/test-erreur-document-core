Profile: FRCDATypeDocumentAttache
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Observation
Id: fr-cda-type-document-attache
Title: "CDA - FR Type document attache"
Description: "Entrée FR-Type-document-attache: Élément de type Simple Observations (1.3.6.1.4.1.19376.1.5.3.1.4.13) définissant le type de document attaché."
* classCode MS
* classCode = #OBS
* moodCode MS
* moodCode = #EVN
* id 1..1 MS
* id ^short = """Identifiant de l'entrée : \r\n
Sous la forme UID (UUID ou OID) Attribué par le LPS avec si possible les attributs @root et @extension. Sinon, un identifiant unique de type UUID est affecté à l’attribut root et l’attribut extension est omis.
"""
* id ^definition = "Identifiant de l'entrée"
* templateId 1..3
* templateId ^slicing.discriminator.type = #value
* templateId ^slicing.discriminator.path = "root"
* templateId ^slicing.rules = #open
* templateId contains iheSimpleObservation 1..1
and frSimpleObservation 1..1
and frTypeDocumentAttache 1..1
* templateId[iheSimpleObservation].root 1..1
* templateId[iheSimpleObservation].root = "1.3.6.1.4.1.19376.1.5.3.1.4.13"
* templateId[iheSimpleObservation] ^short = "Conformité Simple Observation (IHE PCC)"
* templateId[iheSimpleObservation] ^definition = "Conformité Simple Observation (IHE PCC)"
* templateId[frSimpleObservation].root 1..1
* templateId[frSimpleObservation].root = "1.2.250.1.213.1.1.3.48"
* templateId[frSimpleObservation] ^short = "Conformité FR-Simple-Observation (CI-SIS)"
* templateId[frSimpleObservation] ^definition = "Conformité FR-Simple-Observation (CI-SIS)"
* templateId[frTypeDocumentAttache].root 1..1
* templateId[frTypeDocumentAttache].root = "1.2.250.1.213.1.1.3.48.18"
* templateId[frTypeDocumentAttache] ^short = "Conformité FR-Type-document-attache (CI-SIS)"
* templateId[frTypeDocumentAttache] ^definition = "Conformité FR-Type-document-attache (CI-SIS)"
* code MS
* code ^short = "Code de l'observation"
* code ^definition = "Code de l'observation"
* code.code = #69764-9
* code.displayName = "Type de document"
* code.codeSystem = "2.16.840.1.113883.6.1"
* code.codeSystemName = "LOINC"
* code.code 1..1 MS
* code.displayName MS
* code.codeSystem 1..1 MS
* text MS
* text 1..1
* text ^short = "Partie narrative de l’observation"
* text.reference 1..1 MS
* statusCode MS
* statusCode 1..1
* statusCode ^short = "Statut de l’observationFixé à la valeur 'completed'"
* statusCode ^definition = "Statut de l’observation"
* statusCode.code = #completed
* effectiveTime MS
* effectiveTime 1..1
* effectiveTime ^short = """Date de l'observation :\r\n
Elle peut être notifiée si elle est différente de la réalisation du docu-ment, sinon elle pourra prendre une valeur nullFlavor."""
* effectiveTime ^definition = "Date de l'observation"
* value MS
* value 1..1
* value ^short = """Nature du document :\r\n
(compte-rendu de radiologie, rétinographie, etc.)."""
* value only CD
* value.originalText MS
* value.originalText ^short = """Référence à l’élément narratif de la section : \r\n
S’il est présent, cet élément permet de pointer vers un élément textuel de la partie narrative de la section. L’élément textuel pointé contient les commentaires éventuels faits sur les documents attachés."""
* value.originalText.reference ^short = "Référence à l'élément narratif de la section. value=' identifiant de l'image '  Cet identifiant est utilisé dans la partie narrative par l'élément renderMultiMedia/referenceObject."
* value.originalText.reference 1..1 MS
* value.qualifier MS
* value.qualifier ^short = """Précision :\r\n
Élément permettant s'il y a lieu de préciser l'élément observé dans un document attaché (typiquement ‘gauche' ou ‘droite' pour latéraliser la vue d'un élément d'imagerie)."""
* value.qualifier.name  1..1 MS
* value.qualifier.name ^short = """Type de précision :\r\n
Les jeux de valeurs contenant ces données sont définis dans chaque volet Modèle de document médical qui l’utilise."""
* value.qualifier.value 1..1 MS
* value.qualifier.value ^short = """Valeur de la latéralité :\r\n
Les attributs de cet élément peuvent prendre les valeurs : gauche, droite, supérieur, inférieur, antérieur, postérieur, etc. Les jeux de valeurs contenant ces données sont définis dans chaque volet Modèle de document médical qui l'utilise."""
