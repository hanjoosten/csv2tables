# Scripts voor inlezen van migratiedata van Bas naar Mira

Deze .zip bevat de volgende scripts:

## makeBASTables.sql
Dit script bevat de structuur van de tabellen die de te migreren data zal bevatten. Het is bewust zo gemaakt dat het later nogmaals kan worden gedraaid om de tabellen te her-initialiseren. 
Het script is bedoeld voor een postgres database.

## loadScript.postgress
Dit script heeft als doel om de .csv bestanden in te laden in de tabellen die met het script `makeBASTables.sql` zijn.
Dit plain-tekst bestand kan (na een kleine modificatie) worden uitgevoerd in de psql omgeving van postgres. De modificatie is nodig om de locatie aan te duiden waar de .csv bestanden zich bevinden. Met zoek/vervang moet de tekst `PAD-NAAR_CSVs` worden vervangen. 

De .csv bestanden moeten apart worden aangeleverd. 

Voor vragen: Han Joosten, 0620532131
