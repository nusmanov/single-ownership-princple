# Marp-Präsentation mit draw.io-Diagrammen

17 Folien über das Single Responsibility Principle (SRP) und das Single Ownership Principle (SOP), durchgehend am Student-Beispiel. Die Präsentation führt die vier Methoden schrittweise ein, fragt nach den Änderungsquellen und erklärt SOP als vorgeschlagene Umformulierung von SRP. Die verwendeten Diagramme sind als draw.io-Dateien bearbeitbar.

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
ruby --disable-gems embed-assets.rb slides.html
```

Marp-Quelle, Ordner `assets` und `diagrams` zum Bearbeiten zusammen lassen. Der zweite Befehl bettet alle verwendeten Bilder in `slides.html` ein; diese Version funktioniert danach als einzelne Datei.

## Inhalt

Die Präsentation verwendet nur das Student-Beispiel: vier Methoden, im angenommenen Szenario drei unabhängige Änderungsquellen und die daraus folgende Aufteilung. Eine Verantwortung kann mehrere Funktionen umfassen, wenn dieselbe Gruppe Änderungen an ihnen verlangt. „Owner“ bezeichnet hier die Gruppe, deren Anforderungen eine Verantwortung bestimmen. Eine kritische Folie macht deutlich, dass die Zuordnung zu DBA und Operations / BI sowie Abhängigkeiten nach der Aufteilung im konkreten System geprüft werden müssen. Der alte Slido-QR-Code wird nicht verwendet. PowerPoint-Animationen werden nicht übernommen.
