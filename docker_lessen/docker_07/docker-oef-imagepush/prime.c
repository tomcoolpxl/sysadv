#include <stdio.h>
void main() {
  int i = 3;
  int count;
  int c;
  printf("Hier zijn de eerste 30 priemgetallen: \n2 ");
  for (count = 2; count <= 30; i++) {
    for (c = 2; c < i; c++) {
      if (i%c == 0) break;
    }
    if (c == i) {
      printf("%d ", i);
      count++;
    }
  }
  printf("\n\n");
}