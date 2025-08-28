#include <stdio.h>

void zeichneParabel() {
    printf("Schritt 4: Funktion y = x^2\n");
    
    for(int y = 5; y >= 0; y--) {
        printf("|");
        for(int x = 0; x < 20; x++) {
            int wert = x - 10;
            int parabel = wert * wert / 4;
            
            if(parabel == y) {
                printf("*");
            } else {
                printf(" ");
            }
        }
        printf("\n");
    }
    printf("+--------------------\n");
}

int main() {
    zeichneParabel();
    return 0;
}