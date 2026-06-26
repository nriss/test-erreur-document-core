Profile: FRAdvanceDirectiveDocument
Parent: Consent
Id: fr-advance-directive-document
Title: "Consent - FR Advance directive Document"
Description: "FRAdvanceDirectiveDocument permet  d’indiquer si les directives anticipées du patient.
Article L1111-11 du Code de la Santé Publique : 
« Toute personne majeure peut rédiger des directives anticipées pour le cas où elle serait un 
jour hors d'état d'exprimer sa volonté. Ces directives anticipées expriment la volonté de la personne 
relative à sa fin de vie en ce qui concerne les conditions de la poursuite, de la limitation, 
de l'arrêt ou du refus de traitement ou d'acte médicaux.»"

// mettre le bon canonical à partir de HL7 Europe Base and Core FHIR IG
//* ^extension[$imposeProfile].valueCanonical = Canonical()
* identifier MS
* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open

* identifier contains mainIdentifier 1..1 MS
* identifier[mainIdentifier] ^short = "Identifiant de la directive anticipée"

* status MS
* status ^short = "Statut"

* dateTime MS
* dateTime ^short = "Date de la directive anticipée"

* scope MS
* scope ^short = "Consent de type directive anticipée"
* scope = $consentscope#adr "Advance Directive"

* provision MS
* provision.code ^short = "Type de la directive anticipée"
* provision.code from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-type-directive-anticipee-cisis (required)

//JDV utilisé pour provision.type : http://hl7.org/fhir/ValueSet/consent-provision-type (Required) deny | permit
* provision.type ^short = "Procédure autorisée ou pas :
Le type de la directive identifiée permet d’indiquer l’autorisation ou la non autorisation :
- si l’élément <<provision.code>> est 'Autre directive' : dans ce cas, l'élément <<provision.type>> n'est pas présent
- si l’élément <<provision.code>> est 'Directives anticipées' : dans ce cas, l'élément <<provision.type>> n'est pas présent et un document encodé en B64 est encapsulé dans l'élément 'sourceAttachment'."

* source[x] ^short = "Documents"
* sourceReference MS
* sourceReference ^short = "Référence à un document externe"
* sourceReference only Reference(FRDocumentReferenceDocument)

// Document encapsulé en B64 //
* sourceAttachment MS
* sourceAttachment ^short = "Document encapsulé en B64"
* sourceAttachment.data ^short = "Representation en B64"
* sourceAttachment.url ^short = "URI"