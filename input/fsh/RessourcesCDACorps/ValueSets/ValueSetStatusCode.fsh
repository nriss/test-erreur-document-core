ValueSet: FRValueSetStatusCode
Id: fr-valueset-status-code
Title: "ValueSet - FR ValueSet StatusCode"
Description: "Jeu de valeurs permet d'indique le niveau de complétude des résultats d’un examen (complet, partiel ou abandonné).
 - 'completed' : Rendu final complet. Tous les résultats attendus pour cet examen sont présents.
 - 'active' : Rendu partiel. Certains résultats sont encore à venir pour cet examen.
 - 'aborted' : L'examen est abandonné. Quelques résultats peuvent apparaître."

* include https://smt.esante.gouv.fr/fhir/ValueSet/jdv-hl7-v3-ActStatus-cisis#completed
* include https://smt.esante.gouv.fr/fhir/ValueSet/jdv-hl7-v3-ActStatus-cisis#active
* include https://smt.esante.gouv.fr/fhir/ValueSet/jdv-hl7-v3-ActStatus-cisis#aborted