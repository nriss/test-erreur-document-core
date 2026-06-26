Profile: FRCDANonRemboursable
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Observation
Id: fr-cda-non-remboursable
Title: "CDA - FR Non remboursable"
Description: "Entrée FR-Non-remboursable: Cette observation permet d'indiquer si le traitement auquel elle est associée est non remboursable."
* classCode MS
* classCode = #OBS
* moodCode MS
* moodCode = #EVN
* id 1..1 MS
* id ^short = "Identifiant de l'entrée"
* id ^definition = "Identifiant de l'entrée"
* templateId 1..3
* templateId ^slicing.discriminator.type = #value
* templateId ^slicing.discriminator.path = "root"
* templateId ^slicing.rules = #open
* templateId contains iheSimpleObservation 1..1
and frSimpleObservation 1..1
and frNonRemboursable 1..1
* templateId[iheSimpleObservation].root 1..1
* templateId[iheSimpleObservation].root = "1.3.6.1.4.1.19376.1.5.3.1.4.13"
* templateId[iheSimpleObservation] ^short = "Conformité Simple Observation (IHE PCC)"
* templateId[iheSimpleObservation] ^definition = "Conformité Simple Observation (IHE PCC)"
* templateId[frSimpleObservation].root 1..1
* templateId[frSimpleObservation].root = "1.2.250.1.213.1.1.3.48"
* templateId[frSimpleObservation] ^short = "Conformité FR-Simple-Observation (CI-SIS)"
* templateId[frSimpleObservation] ^definition = "Conformité FR-Simple-Observation (CI-SIS)"
* templateId[frNonRemboursable].root 1..1
* templateId[frNonRemboursable].root = "1.2.250.1.213.1.1.3.48.15"
* templateId[frNonRemboursable] ^short = "Conformité FR-Non-remboursable (CI-SIS)"
* templateId[frNonRemboursable] ^definition = "Conformité FR-Non-remboursable (CI-SIS)"
* code MS
* code ^short = "Code de l'observation"
* code ^definition = "Code de l'observation"
* code.code = #GEN-181
* code.displayName = "Non remboursable"
* code.codeSystem = "1.2.250.1.213.1.1.4.322"
* code.codeSystemName = "TerminologieCISIS"
* code.code 1..1 MS
* code.displayName MS
* code.codeSystem 1..1 MS
* text MS
* text 1..1
* text ^short = "Partie narrative de l'observation"
* text.reference 1..1 MS
* statusCode MS
* statusCode 1..1
* statusCode ^short = "Status de l'observation. Fixé à la valeur 'completed'"
* statusCode ^definition = "Status de l'observation"
* statusCode.code = #completed
* effectiveTime MS
* effectiveTime ^short = "Date de l'observation"
* effectiveTime ^definition = "Date de l'observation"
* value MS
* value 1..1
* value ^short = "Valeur de l'observation"
* value ^definition = "Valeur de l'observation. 
L'attribut @value pourra prendre l'une des deux valeurs suivantes :
value='true' : le traitement prescrit n'est pas remboursable. value='false' : le traitement prescrit est remboursable"
* value only BL
* author only FRCDAAuthor