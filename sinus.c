#include <stdio.h>
#include <math.h>

int main(){
  int breite, hoehe; 
  printf("Breite: "); scanf("%d", &breite);
  printf("Hoehe:  "); scanf("%d", &hoehe);
  double pi = 3.1415926535;
  for(int y=hoehe; y>=0; y--){
    for(int x=0; x<=breite; x++){
      double t = (double)x/(double)breite;
      int yy = (int)floor((sin(2*pi*t)+1.0)*0.5*hoehe + 0.5);
      int punkt = (y==yy);
      if(x==0 && y==0) printf("+");
      else if(punkt)   printf("*");
      else if(x==0)    printf("|");
      else if(y==0)    printf("-");
      else             printf(" ");
    }
    printf("\n");
  }
  return 0;
}
