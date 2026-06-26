Logical: TestLogicalModel
Id: test-logical-model
Title: "Test Logical Model"
Description: "Modèle logique minimal pour test"
Characteristics: #can-be-target

* nom 0..1 string "Nom du patient"
* code 0..1 CodeableConcept "Code"
* date 0..1 dateTime "Date"
* description 0..1 markdown "Description"
