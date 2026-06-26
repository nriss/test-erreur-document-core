ValueSet: FRValueSetEncounterClass
Id: fr-vs-encounter-class
Title: "FR ValueSet Encounter Class"
Description: """
ValueSet pour les types de rencontre basé sur HL7 v3 ActEncounterCode.
 - Ce ValueSet peut être étendu ultérieurement avec des codes spécifiques définis par les différents volets pour répondre à des besoins métier particuliers.
"""
// Inclusion de tous les codes du ValueSet HL7 ActEncounterCode
* include codes from system http://terminology.hl7.org/ValueSet/v3-ActEncounterCode

* ^experimental = false