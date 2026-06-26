ValueSet: FRValueSetProcedureCodeDocument
Id: fr-vs-procedure-code
Title: "ValueSet – FR ValueSet Codes d’actes"
Description: """
Codes autorisés pour indiquer un acte.
Inclut :
- Terminologie CCAM
- NCIT (code C25218 : 'Intervention') si l'acte n'est pas trouvé dans CCAM
- CISIS jdv-absent-or-unknown-procedure-cisis pour actes chirurgicaux inconnus ou absents.

Si aucun code approprié n’est disponible, l’acte peut être décrit en texte libre.
"""

// CCAM
* include codes from system https://smt.esante.gouv.fr/terminologie-ccam

// NCIT (Intervention)
* http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C25218

// CISIS absent/unknown
* include codes from valueset https://smt.esante.gouv.fr/fhir/ValueSet/jdv-absent-or-unknown-procedure-cisis