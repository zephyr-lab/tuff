#include <stdio.h>

#define HEIGHT 10
#define WIDTH 20   // etwas breiter, damit man die x-Achse besser sieht

int main() {
    printf("Schritt 1: ASCII Zeichen Test\n");
    printf("*  #  |  -  +\n\n");

    for (int y = HEIGHT; y >= 0; y--) {   
        for (int x = 0; x <= WIDTH; x++) { 
            if (x == 0 && y == 0) {
                printf("+");   
            }
            else if (x == 0) {
                printf("|");   
            }
            else if (y == 0) {
                printf("-");   
            }
            else {
                printf(" ");   
            }
        }
        printf("\n");
    }

    return 0;
}
