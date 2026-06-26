Profile: FRCDAImageIllustrative
Parent: http://hl7.org/cda/stds/core/StructureDefinition/ObservationMedia
Id: fr-cda-image-illustrative
Title: "CDA - FR Image illustrative"
Description: "Entrée FR-Image-illustrative: Image illustrative. Cette entrée, utilisable dans toute entrée, permet de positionner une image, référencée dans le texte de la section par l’attribut renderMultimedia.referencedObject. 
 - L’image doit toujours être de type gif, jpeg, png ou bm. Elle est encodée en base 64 et encapsulée dans un élément de type observationMedia.
 - Cet élément observationMedia peut-être seul ou encapsulé dans un élément Région d’intérêt sur image illustrative qui permet de repérer une zone particulière de l’image.
 - Note : Cette entrée ne peut porter que des images au format gif, jpeg, png ou bm, contrairement à l’entrée FR-Document-attache qui permet de porter pratiquement tous types de média (pdf, image, etc…), et qui utilise également un élément de type ObservationMedia. "
* classCode MS
* moodCode MS
* ID MS 
* ID 1..1
* id MS
* id ^short = "Identifiant de l'entrée"
* id ^definition = "Identifiant de l'entrée"
* templateId 1..2
* templateId ^slicing.discriminator.type = #value
* templateId ^slicing.discriminator.path = "root"
* templateId ^slicing.rules = #open
* templateId contains frImageIllustrative 1..1
and ccdObservationMedia 1..1
* templateId[frImageIllustrative].root 1..1
* templateId[frImageIllustrative].root = "1.2.250.1.213.1.1.3.103"
* templateId[frImageIllustrative] ^short = "Conformité FR-Image-illustrative (CI-SIS)"
* templateId[frImageIllustrative] ^definition = "Conformité FR-Image-illustrative (CI-SIS)"
* templateId[ccdObservationMedia].root 1..1
* templateId[ccdObservationMedia].root = "2.16.840.1.113883.10.12.304"
* templateId[ccdObservationMedia] ^short = "Conformité CDAObservationMedia (CCD)"
* templateId[ccdObservationMedia] ^definition = "Conformité CDAObservationMedia (CCD)"
* languageCode MS
* languageCode ^short = "Langue"
* languageCode ^definition = "Langue"
* value MS
* value 1..1
* value ^short = "Image encodée en Base6. Les attributs de cet élément prennent les valeurs suivantes :
- mediaType='image/gif' ou 'image/jpeg' ou 'image/png' ou 'image/bm'
- representation='B64'
- Dans cette entrée utilisée dans les résultats d’examens de biologie, seules les petites images sont autorisées (en format gif, jpeg, png ou bmp). Ce ne sont pas dans la plupart des cas des images réelles mais des graphismes simples, comme un graphique électrophoresis, intégré dans le rapport, ou une illustration des résultats des tests."
* value ^definition = "Image encodée en Base6"
* value only ED
* subject MS
* specimen MS
* performer MS
* author MS
* informant MS
* participant MS
* entryRelationship MS
* reference MS
* precondition MS