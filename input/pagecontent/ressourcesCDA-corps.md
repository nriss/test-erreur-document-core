### Liste des profils

Cette page contient la liste des profils CDA définis dans le guide **ANS IG Document Core**, utilisés pour l'implémentation de la partie corps des documents médicaux et médico-sociaux.

#### Liste des profils des sections du corps des documents
{% sql {
  "query": "
    SELECT title AS Title, Description, Web
    FROM Resources
    WHERE Type = 'StructureDefinition'
      AND (
        Title LIKE '%CDA%'
      )
      AND Description NOT LIKE '%L''élément de l''en-tête%'
      AND Name LIKE '%FRCDASection%'
  ",
  "class": "lines",
  "columns": [
    { "title": "Titre du profil", "type": "link", "source": "Title", "target": "Web" },
    { "title": "Description", "type": "markdown", "source": "Description" }
  ]
} %}

#### Liste des profils des entrées du corps des documents
{% sql {
  "query": "
    SELECT title AS Title, Description, Web
    FROM Resources
    WHERE Type = 'StructureDefinition'
      AND (
        Title LIKE '%CDA%'
      )
      AND Description NOT LIKE '%L''élément de l''en-tête%'
      AND Name NOT LIKE '%FRCDASection%'
  ",
  "class": "lines",
  "columns": [
    { "title": "Titre du profil", "type": "link", "source": "Title", "target": "Web" },
    { "title": "Description", "type": "markdown", "source": "Description" }
  ]
} %}