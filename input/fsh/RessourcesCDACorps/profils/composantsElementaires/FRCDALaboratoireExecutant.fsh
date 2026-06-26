Profile: FRCDALaboratoireExecutant
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Performer2
Id: fr-cda-laboratoire-executant
Title: "CDA - FR Laboratoire executant"
Description: "FR-Laboratoire-executant: IHE-PCC - Laboratory performer. Laboratoire exécutant"
* typeCode MS
* sdtcFunctionCode MS
* sdtcFunctionCode ^short = "Rôle fonctionnel
Valeur issue du JDV_J47_FunctionCode_CISIS (1.2.250.1.213.1.1.5.124)"
* sdtcFunctionCode ^definition = "Rôle fonctionnel"
* sdtcFunctionCode.code from https://mos.esante.gouv.fr/NOS/JDV_J47-FunctionCode-CISIS/FHIR/JDV-J47-FunctionCode-CISIS (required)
* time MS
  * low MS
  * high MS
* assignedEntity MS
* assignedEntity only fr-cda-assigned-entity

