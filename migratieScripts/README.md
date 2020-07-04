# Scripts voor inlezen van migratiedata van Bas naar Mira

Deze .zip bevat de volgende scripts:

## makeBASTables.sql
Dit script bevat de structuur van de tabellen die de te migreren data zal bevatten. Het is bewust zo gemaakt dat het later nogmaals kan worden gedraaid om de tabellen te her-initialiseren. 
Het script is bedoeld voor een postgres database. Het draaien van dit script dient altijd te worden vervolgd door het toevoegen van de indexen.

## Indexes.sql
Script om indexen te (her-)definieren op de BAS_* tabellen. Dit script wordt in tegenstelling tot de andere scripts niet gegenereerd, maar met de hand onderhouden.

## loadScript.postgress
Dit script heeft als doel om de .csv bestanden in te laden in de tabellen die met het script `makeBASTables.sql` zijn.
Dit plain-tekst bestand kan (na een kleine modificatie) worden uitgevoerd in de psql omgeving van postgres. De modificatie is nodig om de locatie aan te duiden waar de .csv bestanden zich bevinden. Met zoek/vervang moet de tekst `PAD-NAAR_CSVs` worden vervangen. 

De .csv bestanden moeten apart worden aangeleverd. 

## dropBASTables.sql
Script waarmee de BAS_* tabellen kunnen worden verwijderd. Dit zal nuttig blijken nadat de migratie is afgerond.

## tablesToCSV.sas
Programmacode om in SAS/EG de library zoals aangeleverd vanuit BAS om te kunnen zetten in de juiste formaten en naar de .csv bestanden. In dit script wordt rekening gehouden met een aantal 'eigenaardigheden' in SAS, met de aanlevering zelf en met de manier waarop we dat graag in Postgres terugzien:
  * In postgres willen we deze tabellen graag kunnen herkennen aan de naam `BAS_%`, maar mag de totale naamlengte niet langer zijn dan 32 characters.
  * Attribuutnamen in postgres mogen bepaalde characters niet bevatten. In sommige gevallen wordt de naam daarom iets aangepast, zonder de herkenbaarheid ervan teniet te doen (log van deze aanpassingen is terug te vinden in het bestand `modifiedNames.txt`)
  * Formaten worden geuniformeerd. (datum/tijd velden als volgens ISO standaard)
  * Pega heeft een attribuut nodig als technische sleutel. Daarom wordt er aan elke tabel een extra attribuut toegevoegd met de naam `techId`. Dat veld wordt gevuld met het rijnummer, zodat elke rij een uniek nummer heeft. 
  * Out-of-the-box voorziet SAS elke string niet van quotes. Postgres kan daar niet tegen in het geval van newline characters in de string. Dit is opgelost in het script.
  * De aangeleverde data wordt geacht in de Windows-latin (codepage 1252) encoding te zijn. Dit is echter niet strict altijd het geval. Postgres is daar heel precies in. Words die niet kunnen worden omgezet via de juiste codering worden vervangen door het character `Ð` (unicode codepoint 00D0).
  * Door de omzetting naar UTF8 kan in uitzonderlijke situaties de lengte van de string langer worden dan toegestaan. In dat geval wordt de string afgekapt. 

Dit script wordt (uiteraard!) gegenereerd. Als input dient hiervoor Basinfo.csv, dat in SAS/EG wordt gegenereerd op basis van de aangeleverde library vanuit BAS. 

