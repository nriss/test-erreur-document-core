ValueSet: TestValueSet
Id: test-value-set
Title: "Test ValueSet"
Description: "ValueSet minimal pour test"
* http://loinc.org#LA6-2 "Female"
* http://loinc.org#LA2-8 "Male"

Instance: TestConceptMap
InstanceOf: ConceptMap
Title: "Test ConceptMap"
Description: "ConceptMap minimal pour test"
* status = #draft
* group[0].source = "http://example.org/source"
* group[0].target = "http://example.org/target"
* group[0].element[0].code = #src-code
* group[0].element[0].display = "Source code"
* group[0].element[0].target[0].code = #tgt-code
* group[0].element[0].target[0].display = "Target code"
* group[0].element[0].target[0].equivalence = #equivalent
