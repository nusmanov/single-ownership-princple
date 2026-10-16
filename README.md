# Marp-Präsentation mit draw.io-Diagrammen

24 Folien über das Single Responsibility Principle (SRP) und das Single Ownership Principle (SOP). Die Präsentation zeigt am Student-Beispiel, warum Methoden und verwendete Technik keine Änderungsgründe definieren. SOP führt zur Frage nach der Anforderungsrolle hinter jeder Änderung; eine eigene Folie zeigt, wie sich damit ein Design prüfen lässt. Martins Einordnung von 2014 macht die inhaltliche Überschneidung ausdrücklich klar. Vor dem Fazit folgen drei Klassenbeispiele mit je einer Aussage zu SRP und SOP. Die verwendeten Diagramme sind als draw.io-Dateien bearbeitbar.

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

Das ausführliche Student-Beispiel zeigt vier Methoden, im angenommenen Szenario drei unabhängige Änderungsgründe und drei Owner. Employee und Invoice verletzen beide Formulierungen; UserAccount erfüllt beide unter der Annahme einer gemeinsamen Authentifizierungs-Policy. „Owner“ bezeichnet eine Rolle, die Anforderungen für eine zusammenhängende Policy definiert; es ist nicht automatisch das Team, das den Code pflegt. Eine Person kann mehrere Owner-Rollen übernehmen; ein Plattformteam kann mehrere Owner unterstützen. In den Referentennotizen zum Employee-Beispiel steht eine Frage zur Einordnung von `SummarizeHoursWorked`. Die Zuordnungen sind Annahmen für die Beispiele und müssen im konkreten System geprüft werden. Der alte Slido-QR-Code wird nicht verwendet. PowerPoint-Animationen werden nicht übernommen.
