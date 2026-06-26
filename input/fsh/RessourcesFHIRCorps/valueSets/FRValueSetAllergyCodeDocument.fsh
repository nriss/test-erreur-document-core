ValueSet: FRValueSetAllergyCodeDocument
Id: fr-vs-allergy-code
Title: "ValueSet – FR ValueSet Allergy Code Document"
Description: """
Jeu de valeurs permettant de coder l’agent responsable d’une allergie :
- Médicaments : CIP ou UCD
- Substances : SMS
- Aliments : CIM-11 Chapitre X Extensions – Allergènes ou substances non médicinales
- Agents environnementaux ou physiques : idem CIM-11 Chapitre X Extensions
- Allergènes pouvant induire une contre-indication vaccinale : jdv-allergie-vaccin-cisis
"""
//Pour les médicaments : code CIP ou UCD
* include codes from system https://smt.esante.gouv.fr/terminologie-bdpm    // CIP
* include codes from system https://smt.esante.gouv.fr/terminologie-cip_ucd      // UCD

// pour les aliments ou agents environnementaux ou physiques :  CIM11
// Chapitre X Codes d’extensions / Substances : Allergènes ou Substances, essentiellement non médicinales
* include codes from system http://id.who.int/icd/release/11/mms // CIM11

// pour les allergènes pouvant induire une contre-indication à la vaccination 
* include codes from valueset https://smt.esante.gouv.fr/fhir/ValueSet/jdv-allergie-vaccin-cisis

// Pour les substances : code SMS
* include codes from system https://smt.esante.gouv.fr/terminologie-sms // SMS