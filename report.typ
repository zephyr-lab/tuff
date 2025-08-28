= ASCII-Funktionsplotter in C

== Einleitung
Im Rahmen des C-Programmierprojekts haben wir ein Programm entwickelt, das ein
Koordinatensystem im Terminal darstellt und verschiedene Funktionen wie Linien,
Parabeln und eine sinusähnliche Schwingung ausgeben kann.  
Die Umsetzung erfolgt ausschließlich mit C, for-Schleifen und if/else-Bedingungen.

== Vorgehensweise

=== Schritt 1: ASCII-Zeichen
Zuerst haben wir getestet, welche Zeichen sich für die Darstellung eignen.
Beispielsweise: `*  #  |  -  +`.

=== Schritt 2: Leeres Koordinatensystem
Wir haben mit Schleifen die y-Achse (`|`), die x-Achse (`-`) sowie den Ursprung (`+`) gezeichnet.

=== Schritt 3: Linien
Im nächsten Schritt konnten wir einfache Linien darstellen, z. B. die Diagonale `y = x`.

=== Schritt 4: Funktionen
Danach erweiterten wir das Programm um mathematische Funktionen:
- Parabel `y = x^2` (diskretisiert auf die Terminalkoordinaten)
- Sinus-ähnliche Welle um die Mittelachse

== Screenshots
// Hier deine Screenshots einfügen
/*#figure(
  image("", width: 80%),
  caption: "Leeres Koordinatensystem"
)

#figure(
  image("", width: 80%),
  caption: "Sinusdarstellung im Terminal"
)*/

== (Optional) Diagramme
Zur Veranschaulichung haben wir ein Diagramm erstellt, das den Programmablauf zeigt:


flowchart TD
    A[Start] --> B[Zeichen testen]
    B --> C[Koordinatensystem]
    C --> D[Linien zeichnen]
    D --> E[Funktionen plotten]
    E --> F[Ende]
