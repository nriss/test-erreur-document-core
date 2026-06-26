Profile: FRFamilyMemberHistoryDocument
Parent: FamilyMemberHistory
Id: fr-family-member-history-document
Title: "FamilyMemberHistory - FR Family Member History Document"
Description: "FRFamilyMemberHistoryDocument est un profil utilisé pour apporter des informations complémentaires relatives aux membres de la famille du patient (pathologies, etc…)."

// mettre le bon canonical à partir de HL7 Europe Base and Core FHIR IG
//* ^extension[$imposeProfile].valueCanonical = Canonical()

* status MS
* status ^short = "Statut de l'antécédent familial"
* status = #completed
* relationship MS
* relationship ^short = "Lien avec un autre sujet"
* relationship from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-hl7-v3-PersonalRelationshipRoleType-cisis

* patient MS
* patient ^short = "Patient concerné"
* patient only Reference(FRPatientINSDocument or FRPatientDocument)

* date MS
* date ^short = "Date de la mise à jour de l'historique"

* condition MS
* condition ^short = "Problème"
* condition.code MS
* condition.code ^short = "Problème rencontré par le patient"
* condition.code from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-code-probleme-cisis (required)

* condition.outcome 1..1 MS
* condition.outcome ^short = "Résultat de l'observation effectuée"

* condition.extension contains
    FRFamilyMemberHistoryBodySiteExtension named bodySite 0..1 MS and
    FRInterpretationExtension named interpretation 0..1 MS and
    FRMethodExtension named method 0..1 MS and
    FRActorExtension named author 0..1 MS

* condition.extension[bodySite] ^short = "Localisation anatomique"

* condition.extension[author] ^short = "Auteur"
* condition.extension[author].extension[type].valueCode = #AUT
* condition.extension[author].extension[actor].valueReference only Reference(FRPractitionerRoleDocument or FRPatientINSDocument or FRDeviceAuteurDocument or FRPatientDocument)
