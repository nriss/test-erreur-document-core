Profile: CISISTelecom
Parent: http://hl7.org/cda/stds/core/StructureDefinition/TEL
Id: cisis-telecom
Title: "CDA - FR CISIS Telecom"
Description: "Coordonnées télécom : 
 - Exemples :
<telecom value='tel:0147150000' use='H'/>
<telecom value='mailto:adam.homme@fournisseur.fr'/>
<telecom value='ftp://serveur/dossierdesante/exemple/'/>"

* use 0..1 MS
* use ^short = """Code d'usage formé d'un à plusieurs codes séparés les uns des autres par un espace. \r\n
Les valeurs permises sont les suivantes :
'H' pour domicile
'HP' pour domicile principal
'HV' pour lieu de vacances
'WP' pour lieu de travail
'DIR' pour numéro direct
'PUB' pour numéro public (standard)
'EC' pour numéro d'urgence
'MC' pour téléphone mobile
'PG' pour beeper
"""

* value MS
* value ^short = """
Adresse de télécommunication (sous la forme préfixe:chaîne). \r\n
Valeurs du préfixe permises sont les suivantes :
'tel' pour téléphone, 
'fax' pour télécopie, 
'mailto' pour adresse courrier électronique, 
'http' pour adresse internet ou intranet, 
'ftp' pour adresse de transfert de fichiers, 
'mllp' pour adresse pour utilisation avec le protocole MLLP de HL7, \r\n
La chaîne doit représenter une adresse valide selon le protocole introduit par le préfixe. Le caractère espace est interdit dans cette chaîne, quel que soit le préfixe.
"""

