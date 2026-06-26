Profile: FRCDASujetPersonne
Parent: http://hl7.org/cda/stds/core/StructureDefinition/SubjectPerson
Id: fr-cda-sujet-personne
Title: "CDA - FR Sujet personne"
Description: "élément utilisé dans FR-Sujet/relatedSubject pour identifier une personne physique."
* administrativeGenderCode MS
* administrativeGenderCode ^short = "Sexe du sujet"
* administrativeGenderCode ^definition = "Sexe du sujet"
* administrativeGenderCode from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-hl7-v3-AdministrativeGender-cisis (required)
* birthTime MS
* birthTime ^short = "Date de naissance du sujet"
* birthTime ^definition = "Date de naissance du sujet"
* sdtcDeceasedInd MS
* sdtcDeceasedInd ^short = "Sujet décédé"
* sdtcDeceasedInd ^definition = "Sujet décédé"
* sdtcDeceasedTime MS
* sdtcDeceasedTime ^short = "Date et heure du décès du sujet"
* sdtcDeceasedTime ^definition = "Date et heure du décès du sujet"
* sdtcMultipleBirthInd MS
* sdtcMultipleBirthInd ^short = "Sujet né d’une naissance multiple"
* sdtcMultipleBirthInd ^definition = "Sujet né d’une naissance multiple"
* sdtcMultipleBirthOrderNumber MS
* sdtcMultipleBirthOrderNumber ^short = "Rang de naissance (en cas de naissances multiples)"
* sdtcMultipleBirthOrderNumber ^definition = "Rang de naissance (en cas de naissances multiples)"