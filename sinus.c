#include <stdio.h>
#include <math.h>

void zeichneSinus() {
    printf("Funktion y = sin(x)\n");
    
    int hoehe = 8;
    int breite = 20;
    
    for(int zeile = hoehe - 1; zeile >= 0; zeile--) {
        printf("|");
        for(int spalte = 0; spalte < breite; spalte++) {
            double x = (spalte - 10.0) / 3.0;
            double y = sin(x) * 3.0 + 4.0;
            int yPos = (int)(y + 0.5);
            
            if(yPos == zeile) {
                printf("*");
            } else {
                printf(" ");
            }
        }
        printf("\n");
    }
    printf("+");
    for(int i = 0; i < breite; i++) {
        printf("-");
    }
    printf("\n");
}

int main() {
    zeichneSinus();
    return 0;
}