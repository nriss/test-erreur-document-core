ValueSet: FRValueSetMedicationTranslationDocument
Id: fr-vs-medication-translation-document
Title: "ValueSet - FR ValueSet Medication Translation Document"
Description: "Systèmes autorisés pour les autres codifications."

* include codes from system https://smt.esante.gouv.fr/terminologie-bdpm      // CIP : Code Identifiant de Présentation
* include codes from system https://smt.esante.gouv.fr/terminologie-cip_ucd      // UCD : Unités Communes de Dispensation
* include codes from system https://smt.esante.gouv.fr/terminologie-atc  // ATC : Classification anatomique, thérapeutique et chimique
* include codes from system https://smt.esante.gouv.fr/terminologie-medicabase      // MV : Médicament Virtuel
* include codes from system https://smt.esante.gouv.fr/terminologie-nuva/     // NUVA - Nomenclature Unifiée des Vaccins
 
 // DC (1.2.250.1.213.2.58) : Dénomination commune de l'EMA (lorsqu'il sera disponible)

* ^experimental = false