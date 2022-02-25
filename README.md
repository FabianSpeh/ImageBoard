# README

## Beschreibung

Diese Webapplikation ist ein Imageboard, welche einem die Möglichkeit bietet accountgebunden Bilder hochzuladen, diese zu beschreiben und auch die Bilder anderer zu bestaunen und diese zu kommentieren und zu liken.


## Featureliste

### notwendige Features

- [x] Usersystem
- [x] Bilder hochladen und beschreiben
- [x] Beschreibung von Bildern ändern
- [x] Bilder löschen
- [x] Bilder liken/disliken
- [x] Bilder kommentieren
- [x] Kommentare löschen
- [x] Kommentare ändern
- [x] Sichtbarkeitseinstellungen - angemeldet/abgemeldet
- [x] Bilder mit Tags versehen

### optionale Features

- [ ] Sortieren von Bildern mit Tags
- [ ] Freundesliste für Sichtbarkeitseinstellungen
- [ ] Bilder als Favorit markieren und nach Favoriten filtern können
- [ ] Alle Bilder eines Users einsehen können
- [ ] Kommentare sortieren (Bewertung, Neu)
- [ ] Kommentare kommentieren
- [ ] Rollensystem für User

## Installation

* Gesamtes Verzeichnis herunterladen
* In der Konsole in das Verzeichnis wechseln
* Den Befehl `bin/rails db:migrate` ausführen
* Den Befehl `bin/rails webpacker:install` ausführen und mit "Y" bestätigen falls nötig
* Den Befehl `bin/rails db:seed` ausführen um die Datenbank zu füllen
* Die App sollte jetzt startklar sein und kann mit `bin/rails s` auf der Adresse `localhost:3000` gestartet werden!



