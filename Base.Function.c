#include <stdio.h>

int BaseFunction() {
    int width = 10;
    int height = 10;

    printf("Diagonale y = x\n");


    for (int y = height; y >= 0; y--) {
        for (int x = 0; x <= width; x++) {
            if (x == 0 && y == 0) {
                printf("+");          
            } else if (x == 0) {
                printf("|");          
            } else if (y == 0) {
                printf("-");          
            } else if (x == y) {
                printf("*");          
            } else {
                printf("");         
            }
        }
        printf("\n");
    }

    return 0;
}
