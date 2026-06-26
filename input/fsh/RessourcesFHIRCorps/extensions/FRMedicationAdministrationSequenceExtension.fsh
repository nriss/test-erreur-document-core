Extension: FRMedicationAdministrationSequenceExtension
Id: fr-medication-administration-sequence-extension
Title: "FR Medication Administration Sequence Extension"
Description: "Extension permettant d'indiquer l’ordre d’une prise dans le cadre d’un schéma de traitement comportant des dosages progressifs ou fractionnés dans le contexte de MedicationAdministration. La valeur est un entier (integer) représentant le numéro de séquence de l’administration."
* ^context[+].type = #element
* ^context[=].expression = "MedicationAdministration"

* value[x] only integer
* valueInteger 0..1