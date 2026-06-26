Invariant: FRCDAPersonFamilyRequired
Description: "L'élément name.family pour un professionnel doit être présent au moins une fois pour identifier la personne."
Severity: #error
Expression: "name.item.family.count() = 1"