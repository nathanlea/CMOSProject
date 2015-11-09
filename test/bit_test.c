/*
 * Author: James E. Stine, Jr.
 * Affiliation: Oklahoma State University
 * Objective: IRSIM test vectors 
 * 
 * Notes: gcc -o bit_test bit_test.c -lm
 *
 *
 */

#include <stdio.h>
#include <math.h>
#include <stdlib.h>

/*
  Binary Conversion
*/

void disp_bin(double x, int bits_to_left, int bits_to_right) {

  double diff;
  int i;
  if (fabs(x) <  pow(2.0, -bits_to_right)) {
    for (i = -bits_to_left + 1; i <= bits_to_right; i++) {
      printf("0");
    }
    return;
  }
  if (x < 0.0) {
    x = pow(2.0, ((double) bits_to_left)) + x;
  }
  for (i = -bits_to_left + 1; i <= bits_to_right; i++) {
    diff = pow(2.0, -i);
    if (x < diff) {
      printf("0");
    }
    else {
      printf("1");
      x -= diff;
    }
    if (i == 0) {
      printf("");
    }
  }
}


/* main loop */
int main() {

  /* Number of Bits */
  int bits = 8;
  /* Number of Loops */
  int loops = 4;
  /* 
     Random incrementor 
     can make 1 for exhaustive 
  */
  int DB = 23;
  int DA = 43;
  /* input operands */
  int b;
  int a;
  /* loop counter */
  int i;
  /* max/min/mask */
  int max;
  int min;
  int mask;
  /* sum or difference */
  int sum;

  max = (int) pow(2.0, (double) bits-1);
  mask = (int) pow(2.0, (double) bits) - 1;
  
  /* To account for asymmetrical nature of t.c. */
  min = -max;
  max = max - 1;

  printf("| addition\n");

  /* Process Test for Random A + B */
  for (b=min; b < max; b=b+DB) {
    for (a=min; a < max; a=a+DA) {
      printf("h LoadB\n");
      printf("h LoadR\n");
      /* Simulate Addition/Subtraciton */
      sum = (b + a) & mask;
      printf("setvector A ");
      disp_bin(a, bits, 0);
      printf("\n");
      printf("setvector B ");
      disp_bin(b, bits, 0);
      printf("\n");
      printf("c\n");
      printf("assert Q ");
      disp_bin(sum, bits, 0);
      printf("\n");
      printf("c\n");

    }
  }

  printf("| subtract\n");

  /* assert subtract */
  printf("h subtract\n");
  /* Process Test for Random A - B */
  for (b=min; b < max; b=b+DB) {
    for (a=min; a < max; a=a+DA) {
      printf("h LoadB\n");
      printf("h LoadR\n");
      /* Simulate Addition/Subtraciton */
      sum = (b - a) & mask;
      printf("setvector A ");
      disp_bin(a, bits, 0);
      printf("\n");
      printf("setvector B ");
      disp_bin(b, bits, 0);
      printf("\n");
      printf("c\n");
      printf("assert Q ");
      disp_bin(sum, bits, 0);
      printf("\n");
      printf("c\n");

    }
  }

  printf("| addition w/loops\n");

  /* assert subtract */
  printf("l subtract\n");
  /* Initialize : you never know */
  sum = 0;
  /* Process Test for Random A + B */
  for (b=min; b < max; b=b+DB) {
    for (a=min; a < max; a=a+DA) {
      printf("h LoadB\n");
      printf("h LoadR\n");
      printf("setvector A ");
      disp_bin(a, bits, 0);
      printf("\n");
      printf("setvector B ");
      disp_bin(b, bits, 0);
      printf("\n");
      /* Simulate Addition/Subtraciton */
      sum = (b + a) & mask;
      printf("c\n");
      printf("assert Q ");
      disp_bin(sum, bits, 0);
      printf("\n");

      for (i=0; i < loops; i++) {
	printf("l LoadB\n");
	printf("c\n");
	/* Simulate Addition/Subtraciton */
	sum = (sum + a) & mask;
	printf("assert Q ");
	disp_bin(sum, bits, 0);
	printf("\n");
      }
      sum = 0;
    }
    printf("h LoadB\n");
  }

  printf("| subtract w/loops\n");

  /* assert subtract */
  printf("h subtract\n");
  /* Initialize : you never know */
  sum = 0;
  /* Process Test for Random A + B */
  for (b=min; b < max; b=b+DB) {
    for (a=min; a < max; a=a+DA) {
      printf("h LoadB\n");
      printf("h LoadR\n");
      printf("setvector A ");
      disp_bin(a, bits, 0);
      printf("\n");
      printf("setvector B ");
      disp_bin(b, bits, 0);
      printf("\n");
      /* Simulate Addition/Subtraciton */
      sum = (b - a) & mask;
      printf("c\n");
      printf("assert Q ");
      disp_bin(sum, bits, 0);
      printf("\n");

      printf("l LoadB\n");
      for (i=0; i < loops; i++) {
	printf("c\n");
	/* Simulate Addition/Subtraciton */
	sum = (sum - a) & mask;
	printf("assert Q ");
	disp_bin(sum, bits, 0);
	printf("\n");
      }
      printf("h LoadB\n");
    }
  }



}


