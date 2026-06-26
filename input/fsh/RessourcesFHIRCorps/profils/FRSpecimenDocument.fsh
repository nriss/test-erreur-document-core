Profile: FRSpecimenDocument
Parent: Specimen
Id: fr-specimen-document
Title: "Specimen - FR Specimen Document"
Description: "FRSpecimenDocument est un profil utilisé pour décrire le prélèvement et l'échantillon biologique (le matériel)."

// mettre le bon canonical à partir de HL7 Europe Base and Core FHIR IG
//* ^extension[$imposeProfile].valueCanonical = Canonical()

* identifier 1..1 MS
* identifier ^short = """
Identifiant de l'échantillon : L'identifiant de l'échantillon est éventuellement multiple (premier identifiant attribué par le préleveur, puis réidentification par le laboratoire).
L'un des identifiants est visible sur l'échantillon matériel (par exemple en code barre sur le tube ou le bocal).
"""

* type 1..1 MS
* type ^short = "Échantillon prélevé (Si specimen provenant du corps du patient)"

// à discuter avec Nicolas RISS si on doit mettre le JDV en required extensible ou bien preferred
// Si specimen provenant du corps du patient :
* type from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-specimen-type-cisis (extensible)

* status MS
* status ^short = "Statut du specimen"

* processing.description ^short = """
Acte de prélèvement :

Pour un prélèvement en vue d'examen de biologie médicale, le code affiné NABM de l'acte de prélèvement doit être renseigné si connu, sauf dans le cas d'un recueil d'échantillon effectué par le patient lui-même.
Un prélèvement cytologique ou de tissu en vue d'un examen d'anatomie ou de cytologie pathologiques est codé à l'aide d'une nomenclature précisée dans les modèles de contenus métiers.
Par défaut, utiliser le code suivant :
code='33882-2'
displayName='Prélèvement'
codeSystem='2.16.840.1.113883.6.1'
codeSystemName='LOINC'
"""
* processing.procedure.coding.code 1..1 MS
* processing.procedure.coding.code ^short = "Acte de prélèvement"

* processing.additive ^short = "Produit utilisé"
* processing.additive MS
* processing.additive only Reference(Substance)

// Si specimen extérieur au patient :
* subject 1..1 MS
* subject only Reference(Substance)
* subject ^short = "Source de l’échantillon(substance) : Si specimen extérieur au patient"

* receivedTime MS
* receivedTime ^short = "Date de réception de l'échantillon"

* parent only Reference(FRSpecimenDocument)

* collection.collector only Reference(FRPractitionerRoleDocument or FRPractitionerDocument)
* collection.collector ^short = "Organisation prélevante"
* collection.collected[x] MS
* collection.collected[x] ^short = """
Date du prélèvement :
La date et heure de prélèvement doit être renseignée si elle est connue. En cas d'acte ponctuel, c'est la date et heure de fin (élément collectedPeriod.end) qui horodate le prélèvement.
"""

* collection.bodySite MS
* collection.bodySite ^short = "Localisation anatomique"
* collection.bodySite from http://hl7.org/fhir/ValueSet/body-site (extensible)

* container MS
* container ^short = "Dispositif utilisé"
* container.type 1..1 MS
* container.type ^short = "Code du dispositif"