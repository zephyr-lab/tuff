
// Dokumentation: ASCII-Graphen in C (Typst)
#set page(
  margin: 2.2cm,
)
#set text(size: 11pt)

#align(center)[
  #set text(size: 24pt, weight: "bold")
  ASCII‑Graphen in C
]



#v(1pt)
#line(length: 100%)

#v(8pt)
#heading[Ziel]
In unserem Projekt haben wir uns mit der Darstellung von einfachen Funktionen in C beschäftigt. Ziel war es, Schritt für Schritt ein Programm zu entwickeln, das im Terminal kleine Diagramme mit ASCII-Zeichen darstellen kann. Wir wollten zeigen, dass man auch ohne zusätzliche Bibliotheken oder Grafikausgabe einfache mathematische Zusammenhänge sichtbar machen kann.
Dazu sind wir in mehreren Schritten vorgegangen:
Zuerst haben wir getestet, welche Zeichen sich überhaupt gut für eine Darstellung eignen.
Danach haben wir ein leeres Koordinatensystem aufgebaut. Anschließend konnten wir erste Funktionen wie eine Diagonale, eine Parabel oder sogar einen Sinus mit Sternchen darstellen.
Unser Fokus lag darauf, die Lösung verständlich und einfach umzusetzen, sodass man den Ablauf auch als Einsteiger nachvollziehen kann.

#v(12pt)
#heading[Schritt 1 – ASCII‑Zeichen testen]
Ein kleiner Test zum start.

```c
#include <stdio.h>

int main() {
    printf("Schritt 1: ASCII Zeichen Test\n");
    printf("#\n");
    printf("*\n");
    printf("@\n");
    printf("$\n");
    printf("?\n");
    printf("~\n");
    return 0;
}
```

#v(10pt)
#heading[Schritt 2 – Leeres Koordinatensystem]
Wir fragen *Breite* und *Höhe* ab und zeichnen Achsen: `|` ist y‑Achse, `-` ist x‑Achse, `+` ist der Ursprung.

```c
#include <stdio.h>

int main() {
    int height, width;
    printf("Breite: "); scanf("%d", &height);
    printf("Hoehe:  "); scanf("%d", &width);

    for (int y = height; y >= 0; y--) {
        for (int x = 0; x <= width; x++) {
            if (x == 0 && y == 0) printf("+");
            else if (x == 0)      printf("|");
            else if (y == 0)      printf("-");
            else                  printf(" ");
        }
        printf("\n");
    }
    return 0;
}
```

#v(10pt)
#heading[Schritt 3 – Linie (Diagonale y = x)]
Wir erweitern die Logik: Auf Zellen mit `x == y` setzen wir `*`.

```c
#include <stdio.h>

int main() {
    int height, width;
    printf("Breite: "); scanf("%d", &height);
    printf("Hoehe:  "); scanf("%d", &width);
    printf("Diagonale y = x\n");

    for (int y = height; y >= 0; y--) {
        for (int x = 0; x <= width; x++) {
            if (x == 0 && y == 0)      printf("+");
            else if (x == 0)           printf("|");
            else if (y == 0)           printf("-");
            else if (x == y)           printf("*");
            else                       printf(" ");
        }
        printf("\n");
    }
    return 0;
}
```


#v(10pt)
#heading[Schritt 4 – Vordefinierte Funktionen]
Wir zeichnen *Parabel* und *Sinus*. Die y‑Werte werden *diskretisiert* (ganzzahlig) und dem Raster zugeordnet.

Parabel (Beispiel)
Einfaches Mapping: `x` wird verschoben und skaliert, dann `y = (x-10)^2 / 4`.


```c
#include <stdio.h>

int main() {
    printf("Schritt 4: Funktion y = x^2\n");
    int height, width;
    printf("Breite: "); scanf("%d", &height);
    printf("Hoehe:  "); scanf("%d", &width);

    for (int y = height; y >= 0; y--) {
        printf("|");
        for (int x = 0; x < width; x++) {
            int wert = x - 10;
            int parabel = wert * wert / 4;
            if (parabel == y) printf("*"); else printf(" ");
        }
        printf("\n");
    }
    printf("+");
    for (int i = 0; i < width; i++) printf("-");
    printf("\n");
    return 0;
}
```

#pagebreak()

Sinus (ohne Mathe‑Library)
Wir nutzen ein *vordefiniertes Array* mit y‑Werten, um die Idee einer Sinuskurve zu zeigen.

```c
#include <stdio.h>

int main() {
    printf("Funktion y = sin(x)\n");
    
    int height;
    int width;
    printf("Breite: "); scanf("%d", &height);
    printf("Hoehe:  "); scanf("%d", &width);

    int sinus[20] = {3,4,5,5,4,3,2,1,1,2,3,4,5,5,4,3,2,1,1,2};

    for (int y = height; y >= 0; y--) {
        printf("|");
        for (int x = 0; x < 20; x++) {
            if (sinus[x] == y) printf("*"); else printf(" ");
        }
        printf("\n");
    }
    printf("+--------------------\n");
    return 0;
}
```

#v(10pt)
#heading[Einfaches Diagramm – Ablauf / Logik]
Die folgende Skizze zeigt die *Programm‑Logik* in drei Schritten.

#box(stroke: 1pt, inset: 10pt)[
  #grid(
    columns: (1fr, 1fr, 1fr),
    column-gutter: 12pt,
    row-gutter: 8pt,
    [
      #box(fill: luma(95%), inset: 8pt, radius: 6pt)[
        *Eingabe*  
        Breite, Höhe
      ]
    ],
    [
      #box(fill: luma(95%), inset: 8pt, radius: 6pt)[
        *Berechnung*  
        Achsen & Bedingung (z.B. x==y)
      ]
    ],
    [
      #box(fill: luma(95%), inset: 8pt, radius: 6pt)[
        *Ausgabe*  
        Zeichen in Schleifen drucken
      ]
    ],
  )
]
