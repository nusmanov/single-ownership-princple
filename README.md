# Marp-Präsentation mit draw.io-Diagrammen

24 Folien. Alle sieben unterschiedlichen Klassendiagramme und ihre Hervorhebungen sind als native, bearbeitbare draw.io-Objekte umgesetzt. Für die zwei Schlussfolgerungsfolien gibt es kompakte Varianten.

## Präsentieren

`slides.html` im Browser öffnen. Alle Bilder sind eingebettet. Pfeiltasten wechseln die Folie, `f` schaltet Vollbild ein, `p` öffnet die Referentenansicht.

## Bearbeiten

- `slides.md` in VS Code mit Marp for VS Code bearbeiten.
- `diagrams/all-diagrams.drawio` in draw.io öffnen: alle neun Diagrammvarianten als einzelne Seiten.
- Alternativ eine einzelne `.drawio`-Datei bearbeiten.
- Die gleichnamige `.svg`-Datei wird von der jeweiligen Folie verwendet. Sie enthält ebenfalls die native draw.io-Quelle und lässt sich in draw.io öffnen.

Nach Änderungen an einem Diagramm als SVG exportieren und **Kopie meines Diagramms einschließen** aktivieren. Unter dem bisherigen SVG-Dateinamen speichern. Danach die Marp-Präsentation erneut exportieren:

```sh
npx @marp-team/marp-cli slides.md --html -o slides.html
```

Marp-Quelle, Ordner `assets` und `diagrams` zusammen lassen. Die bereitgestellte HTML-Version funktioniert als einzelne Datei.

## Inhalt

Methodennamen, Rollen und Abhängigkeiten entsprechen den ursprünglichen Diagrammen. Blau, Rot und Grün markieren dieselben Verantwortlichkeiten. Die Hervorhebungen auf Folien 17–18 sind native Objekte (Lupe, Blitze, Herzen, Haken) und vollständig bearbeitbar. Fotos, Logos, Kontakticons und Slido-Grafik bleiben erhalten. Die Slido-Grafik enthält den historischen QR-Code. PowerPoint-Animationen werden nicht übernommen.
