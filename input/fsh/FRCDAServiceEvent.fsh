Profile: FRCDAServiceEvent
Parent: http://hl7.org/cda/stds/core/StructureDefinition/ServiceEvent
Id: fr-cda-service-event
Title: "CDA - serviceEvent"
Description: "L'élément de l'en-tête du CDA serviceEvent permet de représenter un évènement (acte, traitement, diagnostic, etc…) décrit dans le document. 
L'occurrence de documentationOf/serviceEvent contenant les données de l’évènement documenté principal doit inclure un élément effectiveTime et un élément performer renseignés, sans recours à l'attribut nullFlavor." 
* ^status = #draft
* nullFlavor 0..0
* typeId.nullFlavor 0..0
* typeId.assigningAuthorityName 0..0
* typeId.displayable 0..0
* id ^short = "Identifiant de l’évènement documenté : Obligatoire pour :
- les prescriptions pour porter l'identifiant EPU de la prescription (et faisant office d'Order Placer Number)
- la demande d'acte d'imagerie pour porter l'Order Placer Number
- les CR d’imagerie pour porter le studyInstanceUID dans l'attribut @root uniquement (pas d'attribut @extension) et limité à 64 car. (voir DICOM Part 5 / section 9 Unique Identifiers (UIDs) et Annexe B Creating a Privately Defined Unique Identifier)"
* code ^short = "Code de l’évènement documenté : Obligatoire pour :
- une demande d'acte d'imagerie
- un CR d’imagerie
- un CR d’examen de l’enfant
- un document d’expression personnelle du patient/usager
Pour les documents produits via les SNR : non utilisé" 
* code.code ^short = "Code de l’évènement :
Pour les documents des professionnels :
- Pour un document au format CDA R2 N3, se reporter au volet de contenus correspondant.
- Pour certains documents au format CDA R2 N1, la valeur est fixée (voir tableau qui suit).
- Dans les autres cas, utiliser une valeur issue d'une terminologie internationale (ex : CIM10 pour les actes) ou nationale (ex : CCAM pour les actes).
- Pour les documents d’expression personnelle du patient/usager :
- valeur fixée"
* code.code 1..1
* code.codeSystem 1..1
* code.displayName 1..1
* code.nullFlavor 0..0 
* code.codeSystemVersion 0..0
* code.sdtcValueSet 0..0
* code.sdtcValueSetVersion 0..0
* code.translation ^short = "Obligatoire pour :
- un CR d’imagerie
- un CR d’examen de l’enfant"
* code.translation.nullFlavor 0..0
* code.translation.codeSystemVersion 0..0
* code.translation.codeSystemVersion 0..0
* code.translation.sdtcValueSet 0..0
* code.translation.sdtcValueSetVersion 0..0
* code.translation.qualifier ^short = "Précise que le translation concerne :
- la modalité d'imagerie (obligatoire)
- la région anatomique (obligatoire)"
* effectiveTime.nullFlavor 0..0 
* effectiveTime ^short = "Date/heure de début et de fin de l'évènement documenté :
Précisée à la minute minimum avec précision du décalage par rapport au temps universel (UTC)"
* effectiveTime.low 1..1
* effectiveTime.high 0..1
* effectiveTime.low ^short = "Date/heure de début de l'évènement documenté"
* effectiveTime.high ^short = "Date/heure de fin de l'évènement documenté"
* effectiveTime.center 0..0
* effectiveTime.width 0..0
* effectiveTime.operator 0..0
* performer 0..1
* performer.nullFlavor 0..0
* performer only fr-cda-performer
* performer ^short = "Exécutant de l’évènement documenté : performer est obligatoire et son attribut nullFlavor interdit pour l’évènement documenté principal. En effet, si le document de santé est déposé dans un système d'information partagé alors l'élément documentationOf/serviceEvent/performer/assignedEntity/representedOrganization/standardIndustryClassCode alimente la métadonnée XDS practiceSettingCode obligatoire."
* performer.typeCode = #PRF
