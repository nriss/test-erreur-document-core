Profile: FRCDAPeriodeDeRenouvellement
Parent: http://hl7.org/cda/stds/core/StructureDefinition/Supply
Id: fr-cda-periode-de-renouvellement
Title: "CDA - FR Periode de renouvellement"
Description: "Entrée FR-Periode-de-renouvellement: IHE-PRE - Renewal Period. Cette observation permet d'indiquer la période de renouvellement."
* classCode MS
* moodCode MS
* moodCode = #RQO
* templateId 1..2
* templateId ^slicing.discriminator.type = #value
* templateId ^slicing.discriminator.path = "root"
* templateId ^slicing.rules = #open
* templateId contains iheRenewalPeriod 1..1
and frPeriodeDeRenouvellement 1..1
* templateId[iheRenewalPeriod].root 1..1
* templateId[iheRenewalPeriod].root = "1.3.6.1.4.1.19376.1.9.1.3.15"
* templateId[iheRenewalPeriod] ^short = "Conformité Renewal Period (IHE PRE)"
* templateId[iheRenewalPeriod] ^definition = "Conformité Renewal Period (IHE PRE)"
* templateId[frPeriodeDeRenouvellement].root 1..1
* templateId[frPeriodeDeRenouvellement].root = "1.2.250.1.213.1.1.3.88"
* templateId[frPeriodeDeRenouvellement] ^short = "Conformité FR-periode-de-renouvellement (CI-SIS)"
* templateId[frPeriodeDeRenouvellement] ^definition = "Conformité FR-periode-de-renouvellement (CI-SIS)"
* effectiveTime MS
* effectiveTime 1..1
* effectiveTime ^short = "- Si la période de renouvellement est définie à partir d'une date précise, utiliser les éléments <low> et <high> avec l'élément <high> (date de fin) obligatoire et l'élément <low> (date de début) facultatif.
- Si la période de renouvellement est définie par une durée, utiliser les éléments <low> et <width> avec  l'élément <width> (période de temps) obligatoire et l'élément <low> (date de début) facultatif."
* effectiveTime ^definition = "Période de renouvellement"
* effectiveTime obeys fr-effectiveTime-type
* effectiveTime obeys fr-inv-effectiveTime

Invariant: fr-effectiveTime-type
Description: "La durée doit être IVL-TS"
Expression: "is(IVL_TS)"
Severity: #error

Invariant: fr-inv-effectiveTime
Description: "Soit high, soit width doit être présent, mais pas les deux"
Expression: "(high.exists() xor width.exists())"
Severity: #error