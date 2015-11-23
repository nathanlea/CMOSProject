tkcon buffer 100000000
stepsize 1500.0
vector A {A[7]} {A[6]} {A[5]} {A[4]} {A[3]} {A[2]} {A[1]} {A[0]}
vector B {B[7]} {B[6]} {B[5]} {B[4]} {B[3]} {B[2]} {B[1]} {B[0]}
vector Out {Out[7]} {Out[6]} {Out[5]} {Out[4]} {Out[3]} {Out[2]} {Out[1]} {Out[0]}

ana -h A B clk subtract S loadR Out Cout
analyzer
clock clk 0 1
h S
h loadR
l subtract
c
c

| addition
h S
h loadR
setvector A 10000000
setvector B 10000000
c
assert Out 00000000
h S
c
h loadR
setvector A 10101011
setvector B 10000000
c
assert Out 00101011
c
h S
h loadR
setvector A 11010110
setvector B 10000000
c
assert Out 01010110
c
h S
h loadR
setvector A 00000001
setvector B 10000000
c
assert Out 10000001
c
h S
h loadR
setvector A 00101100
setvector B 10000000
c
assert Out 10101100
c
h S
h loadR
setvector A 01010111
setvector B 10000000
c
assert Out 11010111
c
h S
h loadR
setvector A 10000000
setvector B 10010111
c
assert Out 00010111
c
h S
h loadR
setvector A 10101011
setvector B 10010111
c
assert Out 01000010
c
h S
h loadR
setvector A 11010110
setvector B 10010111
c
assert Out 01101101
c
h S
h loadR
setvector A 00000001
setvector B 10010111
c
assert Out 10011000
c
h S
h loadR
setvector A 00101100
setvector B 10010111
c
assert Out 11000011
c
h S
h loadR
setvector A 01010111
setvector B 10010111
c
assert Out 11101110
c
h S
h loadR
setvector A 10000000
setvector B 10101110
c
assert Out 00101110
c
h S
h loadR
setvector A 10101011
setvector B 10101110
c
assert Out 01011001
c
h S
h loadR
setvector A 11010110
setvector B 10101110
c
assert Out 10000100
c
h S
h loadR
setvector A 00000001
setvector B 10101110
c
assert Out 10101111
c
h S
h loadR
setvector A 00101100
setvector B 10101110
c
assert Out 11011010
c
h S
h loadR
setvector A 01010111
setvector B 10101110
c
assert Out 00000101
c
h S
h loadR
setvector A 10000000
setvector B 11000101
c
assert Out 01000101
c
h S
h loadR
setvector A 10101011
setvector B 11000101
c
assert Out 01110000
c
h S
h loadR
setvector A 11010110
setvector B 11000101
c
assert Out 10011011
c
h S
h loadR
setvector A 00000001
setvector B 11000101
c
assert Out 11000110
c
h S
h loadR
setvector A 00101100
setvector B 11000101
c
assert Out 11110001
c
h S
h loadR
setvector A 01010111
setvector B 11000101
c
assert Out 00011100
c
h S
h loadR
setvector A 10000000
setvector B 11011100
c
assert Out 01011100
c
h S
h loadR
setvector A 10101011
setvector B 11011100
c
assert Out 10000111
c
h S
h loadR
setvector A 11010110
setvector B 11011100
c
assert Out 10110010
c
h S
h loadR
setvector A 00000001
setvector B 11011100
c
assert Out 11011101
c
h S
h loadR
setvector A 00101100
setvector B 11011100
c
assert Out 00001000
c
h S
h loadR
setvector A 01010111
setvector B 11011100
c
assert Out 00110011
c
h S
h loadR
setvector A 10000000
setvector B 11110011
c
assert Out 01110011
c
h S
h loadR
setvector A 10101011
setvector B 11110011
c
assert Out 10011110
c
h S
h loadR
setvector A 11010110
setvector B 11110011
c
assert Out 11001001
c
h S
h loadR
setvector A 00000001
setvector B 11110011
c
assert Out 11110100
c
h S
h loadR
setvector A 00101100
setvector B 11110011
c
assert Out 00011111
c
h S
h loadR
setvector A 01010111
setvector B 11110011
c
assert Out 01001010
c
h S
h loadR
setvector A 10000000
setvector B 00001010
c
assert Out 10001010
c
h S
h loadR
setvector A 10101011
setvector B 00001010
c
assert Out 10110101
c
h S
h loadR
setvector A 11010110
setvector B 00001010
c
assert Out 11100000
c
h S
h loadR
setvector A 00000001
setvector B 00001010
c
assert Out 00001011
c
h S
h loadR
setvector A 00101100
setvector B 00001010
c
assert Out 00110110
c
h S
h loadR
setvector A 01010111
setvector B 00001010
c
assert Out 01100001
c
h S
h loadR
setvector A 10000000
setvector B 00100001
c
assert Out 10100001
c
h S
h loadR
setvector A 10101011
setvector B 00100001
c
assert Out 11001100
c
h S
h loadR
setvector A 11010110
setvector B 00100001
c
assert Out 11110111
c
h S
h loadR
setvector A 00000001
setvector B 00100001
c
assert Out 00100010
c
h S
h loadR
setvector A 00101100
setvector B 00100001
c
assert Out 01001101
c
h S
h loadR
setvector A 01010111
setvector B 00100001
c
assert Out 01111000
c
h S
h loadR
setvector A 10000000
setvector B 00111000
c
assert Out 10111000
c
h S
h loadR
setvector A 10101011
setvector B 00111000
c
assert Out 11100011
c
h S
h loadR
setvector A 11010110
setvector B 00111000
c
assert Out 00001110
c
h S
h loadR
setvector A 00000001
setvector B 00111000
c
assert Out 00111001
c
h S
h loadR
setvector A 00101100
setvector B 00111000
c
assert Out 01100100
c
h S
h loadR
setvector A 01010111
setvector B 00111000
c
assert Out 10001111
c
h S
h loadR
setvector A 10000000
setvector B 01001111
c
assert Out 11001111
c
h S
h loadR
setvector A 10101011
setvector B 01001111
c
assert Out 11111010
c
h S
h loadR
setvector A 11010110
setvector B 01001111
c
assert Out 00100101
c
h S
h loadR
setvector A 00000001
setvector B 01001111
c
assert Out 01010000
c
h S
h loadR
setvector A 00101100
setvector B 01001111
c
assert Out 01111011
c
h S
h loadR
setvector A 01010111
setvector B 01001111
c
assert Out 10100110
c
h S
h loadR
setvector A 10000000
setvector B 01100110
c
assert Out 11100110
c
h S
h loadR
setvector A 10101011
setvector B 01100110
c
assert Out 00010001
c
h S
h loadR
setvector A 11010110
setvector B 01100110
c
assert Out 00111100
c
h S
h loadR
setvector A 00000001
setvector B 01100110
c
assert Out 01100111
c
h S
h loadR
setvector A 00101100
setvector B 01100110
c
assert Out 10010010
c
h S
h loadR
setvector A 01010111
setvector B 01100110
c
assert Out 10111101
c
h S
h loadR
setvector A 10000000
setvector B 01111101
c
assert Out 11111101
c
h S
h loadR
setvector A 10101011
setvector B 01111101
c
assert Out 00101000
c
h S
h loadR
setvector A 11010110
setvector B 01111101
c
assert Out 01010011
c
h S
h loadR
setvector A 00000001
setvector B 01111101
c
assert Out 01111110
c
h S
h loadR
setvector A 00101100
setvector B 01111101
c
assert Out 10101001
c
h S
h loadR
setvector A 01010111
setvector B 01111101
c
assert Out 11010100
c
| subtract
h subtract
h S
h loadR
setvector A 10000000
setvector B 10000000
c
assert Out 00000000
c
h S
h loadR
setvector A 10101011
setvector B 10000000
c
assert Out 11010101
c
h S
h loadR
setvector A 11010110
setvector B 10000000
c
assert Out 10101010
c
h S
h loadR
setvector A 00000001
setvector B 10000000
c
assert Out 01111111
c
h S
h loadR
setvector A 00101100
setvector B 10000000
c
assert Out 01010100
c
h S
h loadR
setvector A 01010111
setvector B 10000000
c
assert Out 00101001
c
h S
h loadR
setvector A 10000000
setvector B 10010111
c
assert Out 00010111
c
h S
h loadR
setvector A 10101011
setvector B 10010111
c
assert Out 11101100
c
h S
h loadR
setvector A 11010110
setvector B 10010111
c
assert Out 11000001
c
h S
h loadR
setvector A 00000001
setvector B 10010111
c
assert Out 10010110
c
h S
h loadR
setvector A 00101100
setvector B 10010111
c
assert Out 01101011
c
h S
h loadR
setvector A 01010111
setvector B 10010111
c
assert Out 01000000
c
h S
h loadR
setvector A 10000000
setvector B 10101110
c
assert Out 00101110
c
h S
h loadR
setvector A 10101011
setvector B 10101110
c
assert Out 00000011
c
h S
h loadR
setvector A 11010110
setvector B 10101110
c
assert Out 11011000
c
h S
h loadR
setvector A 00000001
setvector B 10101110
c
assert Out 10101101
c
h S
h loadR
setvector A 00101100
setvector B 10101110
c
assert Out 10000010
c
h S
h loadR
setvector A 01010111
setvector B 10101110
c
assert Out 01010111
c
h S
h loadR
setvector A 10000000
setvector B 11000101
c
assert Out 01000101
c
h S
h loadR
setvector A 10101011
setvector B 11000101
c
assert Out 00011010
c
h S
h loadR
setvector A 11010110
setvector B 11000101
c
assert Out 11101111
c
h S
h loadR
setvector A 00000001
setvector B 11000101
c
assert Out 11000100
c
h S
h loadR
setvector A 00101100
setvector B 11000101
c
assert Out 10011001
c
h S
h loadR
setvector A 01010111
setvector B 11000101
c
assert Out 01101110
c
h S
h loadR
setvector A 10000000
setvector B 11011100
c
assert Out 01011100
c
h S
h loadR
setvector A 10101011
setvector B 11011100
c
assert Out 00110001
c
h S
h loadR
setvector A 11010110
setvector B 11011100
c
assert Out 00000110
c
h S
h loadR
setvector A 00000001
setvector B 11011100
c
assert Out 11011011
c
h S
h loadR
setvector A 00101100
setvector B 11011100
c
assert Out 10110000
c
h S
h loadR
setvector A 01010111
setvector B 11011100
c
assert Out 10000101
c
h S
h loadR
setvector A 10000000
setvector B 11110011
c
assert Out 01110011
c
h S
h loadR
setvector A 10101011
setvector B 11110011
c
assert Out 01001000
c
h S
h loadR
setvector A 11010110
setvector B 11110011
c
assert Out 00011101
c
h S
h loadR
setvector A 00000001
setvector B 11110011
c
assert Out 11110010
c
h S
h loadR
setvector A 00101100
setvector B 11110011
c
assert Out 11000111
c
h S
h loadR
setvector A 01010111
setvector B 11110011
c
assert Out 10011100
c
h S
h loadR
setvector A 10000000
setvector B 00001010
c
assert Out 10001010
c
h S
h loadR
setvector A 10101011
setvector B 00001010
c
assert Out 01011111
c
h S
h loadR
setvector A 11010110
setvector B 00001010
c
assert Out 00110100
c
h S
h loadR
setvector A 00000001
setvector B 00001010
c
assert Out 00001001
c
h S
h loadR
setvector A 00101100
setvector B 00001010
c
assert Out 11011110
c
h S
h loadR
setvector A 01010111
setvector B 00001010
c
assert Out 10110011
c
h S
h loadR
setvector A 10000000
setvector B 00100001
c
assert Out 10100001
c
h S
h loadR
setvector A 10101011
setvector B 00100001
c
assert Out 01110110
c
h S
h loadR
setvector A 11010110
setvector B 00100001
c
assert Out 01001011
c
h S
h loadR
setvector A 00000001
setvector B 00100001
c
assert Out 00100000
c
h S
h loadR
setvector A 00101100
setvector B 00100001
c
assert Out 11110101
c
h S
h loadR
setvector A 01010111
setvector B 00100001
c
assert Out 11001010
c
h S
h loadR
setvector A 10000000
setvector B 00111000
c
assert Out 10111000
c
h S
h loadR
setvector A 10101011
setvector B 00111000
c
assert Out 10001101
c
h S
h loadR
setvector A 11010110
setvector B 00111000
c
assert Out 01100010
c
h S
h loadR
setvector A 00000001
setvector B 00111000
c
assert Out 00110111
c
h S
h loadR
setvector A 00101100
setvector B 00111000
c
assert Out 00001100
c
h S
h loadR
setvector A 01010111
setvector B 00111000
c
assert Out 11100001
c
h S
h loadR
setvector A 10000000
setvector B 01001111
c
assert Out 11001111
c
h S
h loadR
setvector A 10101011
setvector B 01001111
c
assert Out 10100100
c
h S
h loadR
setvector A 11010110
setvector B 01001111
c
assert Out 01111001
c
h S
h loadR
setvector A 00000001
setvector B 01001111
c
assert Out 01001110
c
h S
h loadR
setvector A 00101100
setvector B 01001111
c
assert Out 00100011
c
h S
h loadR
setvector A 01010111
setvector B 01001111
c
assert Out 11111000
c
h S
h loadR
setvector A 10000000
setvector B 01100110
c
assert Out 11100110
c
h S
h loadR
setvector A 10101011
setvector B 01100110
c
assert Out 10111011
c
h S
h loadR
setvector A 11010110
setvector B 01100110
c
assert Out 10010000
c
h S
h loadR
setvector A 00000001
setvector B 01100110
c
assert Out 01100101
c
h S
h loadR
setvector A 00101100
setvector B 01100110
c
assert Out 00111010
c
h S
h loadR
setvector A 01010111
setvector B 01100110
c
assert Out 00001111
c
h S
h loadR
setvector A 10000000
setvector B 01111101
c
assert Out 11111101
c
h S
h loadR
setvector A 10101011
setvector B 01111101
c
assert Out 11010010
c
h S
h loadR
setvector A 11010110
setvector B 01111101
c
assert Out 10100111
c
h S
h loadR
setvector A 00000001
setvector B 01111101
c
assert Out 01111100
c
h S
h loadR
setvector A 00101100
setvector B 01111101
c
assert Out 01010001
c
h S
h loadR
setvector A 01010111
setvector B 01111101
c
assert Out 00100110
c
| addition w/loops
l subtract
h S
h loadR
setvector A 10000000
setvector B 10000000
c
assert Out 00000000
l S
c
assert Out 10000000
l S
c
assert Out 00000000
l S
c
assert Out 10000000
l S
c
assert Out 00000000
h S
h loadR
setvector A 10101011
setvector B 10000000
c
assert Out 00101011
l S
c
assert Out 11010110
l S
c
assert Out 10000001
l S
c
assert Out 00101100
l S
c
assert Out 11010111
h S
h loadR
setvector A 11010110
setvector B 10000000
c
assert Out 01010110
l S
c
assert Out 00101100
l S
c
assert Out 00000010
l S
c
assert Out 11011000
l S
c
assert Out 10101110
h S
h loadR
setvector A 00000001
setvector B 10000000
c
assert Out 10000001
l S
c
assert Out 10000010
l S
c
assert Out 10000011
l S
c
assert Out 10000100
l S
c
assert Out 10000101
h S
h loadR
setvector A 00101100
setvector B 10000000
c
assert Out 10101100
l S
c
assert Out 11011000
l S
c
assert Out 00000100
l S
c
assert Out 00110000
l S
c
assert Out 01011100
h S
h loadR
setvector A 01010111
setvector B 10000000
c
assert Out 11010111
l S
c
assert Out 00101110
l S
c
assert Out 10000101
l S
c
assert Out 11011100
l S
c
assert Out 00110011
h S
h S
h loadR
setvector A 10000000
setvector B 10010111
c
assert Out 00010111
l S
c
assert Out 10010111
l S
c
assert Out 00010111
l S
c
assert Out 10010111
l S
c
assert Out 00010111
h S
h loadR
setvector A 10101011
setvector B 10010111
c
assert Out 01000010
l S
c
assert Out 11101101
l S
c
assert Out 10011000
l S
c
assert Out 01000011
l S
c
assert Out 11101110
h S
h loadR
setvector A 11010110
setvector B 10010111
c
assert Out 01101101
l S
c
assert Out 01000011
l S
c
assert Out 00011001
l S
c
assert Out 11101111
l S
c
assert Out 11000101
h S
h loadR
setvector A 00000001
setvector B 10010111
c
assert Out 10011000
l S
c
assert Out 10011001
l S
c
assert Out 10011010
l S
c
assert Out 10011011
l S
c
assert Out 10011100
h S
h loadR
setvector A 00101100
setvector B 10010111
c
assert Out 11000011
l S
c
assert Out 11101111
l S
c
assert Out 00011011
l S
c
assert Out 01000111
l S
c
assert Out 01110011
h S
h loadR
setvector A 01010111
setvector B 10010111
c
assert Out 11101110
l S
c
assert Out 01000101
l S
c
assert Out 10011100
l S
c
assert Out 11110011
l S
c
assert Out 01001010
h S
h S
h loadR
setvector A 10000000
setvector B 10101110
c
assert Out 00101110
l S
c
assert Out 10101110
l S
c
assert Out 00101110
l S
c
assert Out 10101110
l S
c
assert Out 00101110
h S
h loadR
setvector A 10101011
setvector B 10101110
c
assert Out 01011001
l S
c
assert Out 00000100
l S
c
assert Out 10101111
l S
c
assert Out 01011010
l S
c
assert Out 00000101
h S
h loadR
setvector A 11010110
setvector B 10101110
c
assert Out 10000100
l S
c
assert Out 01011010
l S
c
assert Out 00110000
l S
c
assert Out 00000110
l S
c
assert Out 11011100
h S
h loadR
setvector A 00000001
setvector B 10101110
c
assert Out 10101111
l S
c
assert Out 10110000
l S
c
assert Out 10110001
l S
c
assert Out 10110010
l S
c
assert Out 10110011
h S
h loadR
setvector A 00101100
setvector B 10101110
c
assert Out 11011010
l S
c
assert Out 00000110
l S
c
assert Out 00110010
l S
c
assert Out 01011110
l S
c
assert Out 10001010
h S
h loadR
setvector A 01010111
setvector B 10101110
c
assert Out 00000101
l S
c
assert Out 01011100
l S
c
assert Out 10110011
l S
c
assert Out 00001010
l S
c
assert Out 01100001
h S
h S
h loadR
setvector A 10000000
setvector B 11000101
c
assert Out 01000101
l S
c
assert Out 11000101
l S
c
assert Out 01000101
l S
c
assert Out 11000101
l S
c
assert Out 01000101
h S
h loadR
setvector A 10101011
setvector B 11000101
c
assert Out 01110000
l S
c
assert Out 00011011
l S
c
assert Out 11000110
l S
c
assert Out 01110001
l S
c
assert Out 00011100
h S
h loadR
setvector A 11010110
setvector B 11000101
c
assert Out 10011011
l S
c
assert Out 01110001
l S
c
assert Out 01000111
l S
c
assert Out 00011101
l S
c
assert Out 11110011
h S
h loadR
setvector A 00000001
setvector B 11000101
c
assert Out 11000110
l S
c
assert Out 11000111
l S
c
assert Out 11001000
l S
c
assert Out 11001001
l S
c
assert Out 11001010
h S
h loadR
setvector A 00101100
setvector B 11000101
c
assert Out 11110001
l S
c
assert Out 00011101
l S
c
assert Out 01001001
l S
c
assert Out 01110101
l S
c
assert Out 10100001
h S
h loadR
setvector A 01010111
setvector B 11000101
c
assert Out 00011100
l S
c
assert Out 01110011
l S
c
assert Out 11001010
l S
c
assert Out 00100001
l S
c
assert Out 01111000
h S
h S
h loadR
setvector A 10000000
setvector B 11011100
c
assert Out 01011100
l S
c
assert Out 11011100
l S
c
assert Out 01011100
l S
c
assert Out 11011100
l S
c
assert Out 01011100
h S
h loadR
setvector A 10101011
setvector B 11011100
c
assert Out 10000111
l S
c
assert Out 00110010
l S
c
assert Out 11011101
l S
c
assert Out 10001000
l S
c
assert Out 00110011
h S
h loadR
setvector A 11010110
setvector B 11011100
c
assert Out 10110010
l S
c
assert Out 10001000
l S
c
assert Out 01011110
l S
c
assert Out 00110100
l S
c
assert Out 00001010
h S
h loadR
setvector A 00000001
setvector B 11011100
c
assert Out 11011101
l S
c
assert Out 11011110
l S
c
assert Out 11011111
l S
c
assert Out 11100000
l S
c
assert Out 11100001
h S
h loadR
setvector A 00101100
setvector B 11011100
c
assert Out 00001000
l S
c
assert Out 00110100
l S
c
assert Out 01100000
l S
c
assert Out 10001100
l S
c
assert Out 10111000
h S
h loadR
setvector A 01010111
setvector B 11011100
c
assert Out 00110011
l S
c
assert Out 10001010
l S
c
assert Out 11100001
l S
c
assert Out 00111000
l S
c
assert Out 10001111
h S
h S
h loadR
setvector A 10000000
setvector B 11110011
c
assert Out 01110011
l S
c
assert Out 11110011
l S
c
assert Out 01110011
l S
c
assert Out 11110011
l S
c
assert Out 01110011
h S
h loadR
setvector A 10101011
setvector B 11110011
c
assert Out 10011110
l S
c
assert Out 01001001
l S
c
assert Out 11110100
l S
c
assert Out 10011111
l S
c
assert Out 01001010
h S
h loadR
setvector A 11010110
setvector B 11110011
c
assert Out 11001001
l S
c
assert Out 10011111
l S
c
assert Out 01110101
l S
c
assert Out 01001011
l S
c
assert Out 00100001
h S
h loadR
setvector A 00000001
setvector B 11110011
c
assert Out 11110100
l S
c
assert Out 11110101
l S
c
assert Out 11110110
l S
c
assert Out 11110111
l S
c
assert Out 11111000
h S
h loadR
setvector A 00101100
setvector B 11110011
c
assert Out 00011111
l S
c
assert Out 01001011
l S
c
assert Out 01110111
l S
c
assert Out 10100011
l S
c
assert Out 11001111
h S
h loadR
setvector A 01010111
setvector B 11110011
c
assert Out 01001010
l S
c
assert Out 10100001
l S
c
assert Out 11111000
l S
c
assert Out 01001111
l S
c
assert Out 10100110
h S
h S
h loadR
setvector A 10000000
setvector B 00001010
c
assert Out 10001010
l S
c
assert Out 00001010
l S
c
assert Out 10001010
l S
c
assert Out 00001010
l S
c
assert Out 10001010
h S
h loadR
setvector A 10101011
setvector B 00001010
c
assert Out 10110101
l S
c
assert Out 01100000
l S
c
assert Out 00001011
l S
c
assert Out 10110110
l S
c
assert Out 01100001
h S
h loadR
setvector A 11010110
setvector B 00001010
c
assert Out 11100000
l S
c
assert Out 10110110
l S
c
assert Out 10001100
l S
c
assert Out 01100010
l S
c
assert Out 00111000
h S
h loadR
setvector A 00000001
setvector B 00001010
c
assert Out 00001011
l S
c
assert Out 00001100
l S
c
assert Out 00001101
l S
c
assert Out 00001110
l S
c
assert Out 00001111
h S
h loadR
setvector A 00101100
setvector B 00001010
c
assert Out 00110110
l S
c
assert Out 01100010
l S
c
assert Out 10001110
l S
c
assert Out 10111010
l S
c
assert Out 11100110
h S
h loadR
setvector A 01010111
setvector B 00001010
c
assert Out 01100001
l S
c
assert Out 10111000
l S
c
assert Out 00001111
l S
c
assert Out 01100110
l S
c
assert Out 10111101
h S
h S
h loadR
setvector A 10000000
setvector B 00100001
c
assert Out 10100001
l S
c
assert Out 00100001
l S
c
assert Out 10100001
l S
c
assert Out 00100001
l S
c
assert Out 10100001
h S
h loadR
setvector A 10101011
setvector B 00100001
c
assert Out 11001100
l S
c
assert Out 01110111
l S
c
assert Out 00100010
l S
c
assert Out 11001101
l S
c
assert Out 01111000
h S
h loadR
setvector A 11010110
setvector B 00100001
c
assert Out 11110111
l S
c
assert Out 11001101
l S
c
assert Out 10100011
l S
c
assert Out 01111001
l S
c
assert Out 01001111
h S
h loadR
setvector A 00000001
setvector B 00100001
c
assert Out 00100010
l S
c
assert Out 00100011
l S
c
assert Out 00100100
l S
c
assert Out 00100101
l S
c
assert Out 00100110
h S
h loadR
setvector A 00101100
setvector B 00100001
c
assert Out 01001101
l S
c
assert Out 01111001
l S
c
assert Out 10100101
l S
c
assert Out 11010001
l S
c
assert Out 11111101
h S
h loadR
setvector A 01010111
setvector B 00100001
c
assert Out 01111000
l S
c
assert Out 11001111
l S
c
assert Out 00100110
l S
c
assert Out 01111101
l S
c
assert Out 11010100
h S
h S
h loadR
setvector A 10000000
setvector B 00111000
c
assert Out 10111000
l S
c
assert Out 00111000
l S
c
assert Out 10111000
l S
c
assert Out 00111000
l S
c
assert Out 10111000
h S
h loadR
setvector A 10101011
setvector B 00111000
c
assert Out 11100011
l S
c
assert Out 10001110
l S
c
assert Out 00111001
l S
c
assert Out 11100100
l S
c
assert Out 10001111
h S
h loadR
setvector A 11010110
setvector B 00111000
c
assert Out 00001110
l S
c
assert Out 11100100
l S
c
assert Out 10111010
l S
c
assert Out 10010000
l S
c
assert Out 01100110
h S
h loadR
setvector A 00000001
setvector B 00111000
c
assert Out 00111001
l S
c
assert Out 00111010
l S
c
assert Out 00111011
l S
c
assert Out 00111100
l S
c
assert Out 00111101
h S
h loadR
setvector A 00101100
setvector B 00111000
c
assert Out 01100100
l S
c
assert Out 10010000
l S
c
assert Out 10111100
l S
c
assert Out 11101000
l S
c
assert Out 00010100
h S
h loadR
setvector A 01010111
setvector B 00111000
c
assert Out 10001111
l S
c
assert Out 11100110
l S
c
assert Out 00111101
l S
c
assert Out 10010100
l S
c
assert Out 11101011
h S
h S
h loadR
setvector A 10000000
setvector B 01001111
c
assert Out 11001111
l S
c
assert Out 01001111
l S
c
assert Out 11001111
l S
c
assert Out 01001111
l S
c
assert Out 11001111
h S
h loadR
setvector A 10101011
setvector B 01001111
c
assert Out 11111010
l S
c
assert Out 10100101
l S
c
assert Out 01010000
l S
c
assert Out 11111011
l S
c
assert Out 10100110
h S
h loadR
setvector A 11010110
setvector B 01001111
c
assert Out 00100101
l S
c
assert Out 11111011
l S
c
assert Out 11010001
l S
c
assert Out 10100111
l S
c
assert Out 01111101
h S
h loadR
setvector A 00000001
setvector B 01001111
c
assert Out 01010000
l S
c
assert Out 01010001
l S
c
assert Out 01010010
l S
c
assert Out 01010011
l S
c
assert Out 01010100
h S
h loadR
setvector A 00101100
setvector B 01001111
c
assert Out 01111011
l S
c
assert Out 10100111
l S
c
assert Out 11010011
l S
c
assert Out 11111111
l S
c
assert Out 00101011
h S
h loadR
setvector A 01010111
setvector B 01001111
c
assert Out 10100110
l S
c
assert Out 11111101
l S
c
assert Out 01010100
l S
c
assert Out 10101011
l S
c
assert Out 00000010
h S
h S
h loadR
setvector A 10000000
setvector B 01100110
c
assert Out 11100110
l S
c
assert Out 01100110
l S
c
assert Out 11100110
l S
c
assert Out 01100110
l S
c
assert Out 11100110
h S
h loadR
setvector A 10101011
setvector B 01100110
c
assert Out 00010001
l S
c
assert Out 10111100
l S
c
assert Out 01100111
l S
c
assert Out 00010010
l S
c
assert Out 10111101
h S
h loadR
setvector A 11010110
setvector B 01100110
c
assert Out 00111100
l S
c
assert Out 00010010
l S
c
assert Out 11101000
l S
c
assert Out 10111110
l S
c
assert Out 10010100
h S
h loadR
setvector A 00000001
setvector B 01100110
c
assert Out 01100111
l S
c
assert Out 01101000
l S
c
assert Out 01101001
l S
c
assert Out 01101010
l S
c
assert Out 01101011
h S
h loadR
setvector A 00101100
setvector B 01100110
c
assert Out 10010010
l S
c
assert Out 10111110
l S
c
assert Out 11101010
l S
c
assert Out 00010110
l S
c
assert Out 01000010
h S
h loadR
setvector A 01010111
setvector B 01100110
c
assert Out 10111101
l S
c
assert Out 00010100
l S
c
assert Out 01101011
l S
c
assert Out 11000010
l S
c
assert Out 00011001
h S
h S
h loadR
setvector A 10000000
setvector B 01111101
c
assert Out 11111101
l S
c
assert Out 01111101
l S
c
assert Out 11111101
l S
c
assert Out 01111101
l S
c
assert Out 11111101
h S
h loadR
setvector A 10101011
setvector B 01111101
c
assert Out 00101000
l S
c
assert Out 11010011
l S
c
assert Out 01111110
l S
c
assert Out 00101001
l S
c
assert Out 11010100
h S
h loadR
setvector A 11010110
setvector B 01111101
c
assert Out 01010011
l S
c
assert Out 00101001
l S
c
assert Out 11111111
l S
c
assert Out 11010101
l S
c
assert Out 10101011
h S
h loadR
setvector A 00000001
setvector B 01111101
c
assert Out 01111110
l S
c
assert Out 01111111
l S
c
assert Out 10000000
l S
c
assert Out 10000001
l S
c
assert Out 10000010
h S
h loadR
setvector A 00101100
setvector B 01111101
c
assert Out 10101001
l S
c
assert Out 11010101
l S
c
assert Out 00000001
l S
c
assert Out 00101101
l S
c
assert Out 01011001
h S
h loadR
setvector A 01010111
setvector B 01111101
c
assert Out 11010100
l S
c
assert Out 00101011
l S
c
assert Out 10000010
l S
c
assert Out 11011001
l S
c
assert Out 00110000
h S
| subtract w/loops
h subtract
h S
h loadR
setvector A 10000000
setvector B 10000000
c
assert Out 00000000
l S
c
assert Out 10000000
c
assert Out 00000000
c
assert Out 10000000
c
assert Out 00000000
h S
h S
h loadR
setvector A 10101011
setvector B 10000000
c
assert Out 11010101
l S
c
assert Out 00101010
c
assert Out 01111111
c
assert Out 11010100
c
assert Out 00101001
h S
h S
h loadR
setvector A 11010110
setvector B 10000000
c
assert Out 10101010
l S
c
assert Out 11010100
c
assert Out 11111110
c
assert Out 00101000
c
assert Out 01010010
h S
h S
h loadR
setvector A 00000001
setvector B 10000000
c
assert Out 01111111
l S
c
assert Out 01111110
c
assert Out 01111101
c
assert Out 01111100
c
assert Out 01111011
h S
h S
h loadR
setvector A 00101100
setvector B 10000000
c
assert Out 01010100
l S
c
assert Out 00101000
c
assert Out 11111100
c
assert Out 11010000
c
assert Out 10100100
h S
h S
h loadR
setvector A 01010111
setvector B 10000000
c
assert Out 00101001
l S
c
assert Out 11010010
c
assert Out 01111011
c
assert Out 00100100
c
assert Out 11001101
h S
h S
h loadR
setvector A 10000000
setvector B 10010111
c
assert Out 00010111
l S
c
assert Out 10010111
c
assert Out 00010111
c
assert Out 10010111
c
assert Out 00010111
h S
h S
h loadR
setvector A 10101011
setvector B 10010111
c
assert Out 11101100
l S
c
assert Out 01000001
c
assert Out 10010110
c
assert Out 11101011
c
assert Out 01000000
h S
h S
h loadR
setvector A 11010110
setvector B 10010111
c
assert Out 11000001
l S
c
assert Out 11101011
c
assert Out 00010101
c
assert Out 00111111
c
assert Out 01101001
h S
h S
h loadR
setvector A 00000001
setvector B 10010111
c
assert Out 10010110
l S
c
assert Out 10010101
c
assert Out 10010100
c
assert Out 10010011
c
assert Out 10010010
h S
h S
h loadR
setvector A 00101100
setvector B 10010111
c
assert Out 01101011
l S
c
assert Out 00111111
c
assert Out 00010011
c
assert Out 11100111
c
assert Out 10111011
h S
h S
h loadR
setvector A 01010111
setvector B 10010111
c
assert Out 01000000
l S
c
assert Out 11101001
c
assert Out 10010010
c
assert Out 00111011
c
assert Out 11100100
h S
h S
h loadR
setvector A 10000000
setvector B 10101110
c
assert Out 00101110
l S
c
assert Out 10101110
c
assert Out 00101110
c
assert Out 10101110
c
assert Out 00101110
h S
h S
h loadR
setvector A 10101011
setvector B 10101110
c
assert Out 00000011
l S
c
assert Out 01011000
c
assert Out 10101101
c
assert Out 00000010
c
assert Out 01010111
h S
h S
h loadR
setvector A 11010110
setvector B 10101110
c
assert Out 11011000
l S
c
assert Out 00000010
c
assert Out 00101100
c
assert Out 01010110
c
assert Out 10000000
h S
h S
h loadR
setvector A 00000001
setvector B 10101110
c
assert Out 10101101
l S
c
assert Out 10101100
c
assert Out 10101011
c
assert Out 10101010
c
assert Out 10101001
h S
h S
h loadR
setvector A 00101100
setvector B 10101110
c
assert Out 10000010
l S
c
assert Out 01010110
c
assert Out 00101010
c
assert Out 11111110
c
assert Out 11010010
h S
h S
h loadR
setvector A 01010111
setvector B 10101110
c
assert Out 01010111
l S
c
assert Out 00000000
c
assert Out 10101001
c
assert Out 01010010
c
assert Out 11111011
h S
h S
h loadR
setvector A 10000000
setvector B 11000101
c
assert Out 01000101
l S
c
assert Out 11000101
c
assert Out 01000101
c
assert Out 11000101
c
assert Out 01000101
h S
h S
h loadR
setvector A 10101011
setvector B 11000101
c
assert Out 00011010
l S
c
assert Out 01101111
c
assert Out 11000100
c
assert Out 00011001
c
assert Out 01101110
h S
h S
h loadR
setvector A 11010110
setvector B 11000101
c
assert Out 11101111
l S
c
assert Out 00011001
c
assert Out 01000011
c
assert Out 01101101
c
assert Out 10010111
h S
h S
h loadR
setvector A 00000001
setvector B 11000101
c
assert Out 11000100
l S
c
assert Out 11000011
c
assert Out 11000010
c
assert Out 11000001
c
assert Out 11000000
h S
h S
h loadR
setvector A 00101100
setvector B 11000101
c
assert Out 10011001
l S
c
assert Out 01101101
c
assert Out 01000001
c
assert Out 00010101
c
assert Out 11101001
h S
h S
h loadR
setvector A 01010111
setvector B 11000101
c
assert Out 01101110
l S
c
assert Out 00010111
c
assert Out 11000000
c
assert Out 01101001
c
assert Out 00010010
h S
h S
h loadR
setvector A 10000000
setvector B 11011100
c
assert Out 01011100
l S
c
assert Out 11011100
c
assert Out 01011100
c
assert Out 11011100
c
assert Out 01011100
h S
h S
h loadR
setvector A 10101011
setvector B 11011100
c
assert Out 00110001
l S
c
assert Out 10000110
c
assert Out 11011011
c
assert Out 00110000
c
assert Out 10000101
h S
h S
h loadR
setvector A 11010110
setvector B 11011100
c
assert Out 00000110
l S
c
assert Out 00110000
c
assert Out 01011010
c
assert Out 10000100
c
assert Out 10101110
h S
h S
h loadR
setvector A 00000001
setvector B 11011100
c
assert Out 11011011
l S
c
assert Out 11011010
c
assert Out 11011001
c
assert Out 11011000
c
assert Out 11010111
h S
h S
h loadR
setvector A 00101100
setvector B 11011100
c
assert Out 10110000
l S
c
assert Out 10000100
c
assert Out 01011000
c
assert Out 00101100
c
assert Out 00000000
h S
h S
h loadR
setvector A 01010111
setvector B 11011100
c
assert Out 10000101
l S
c
assert Out 00101110
c
assert Out 11010111
c
assert Out 10000000
c
assert Out 00101001
h S
h S
h loadR
setvector A 10000000
setvector B 11110011
c
assert Out 01110011
l S
c
assert Out 11110011
c
assert Out 01110011
c
assert Out 11110011
c
assert Out 01110011
h S
h S
h loadR
setvector A 10101011
setvector B 11110011
c
assert Out 01001000
l S
c
assert Out 10011101
c
assert Out 11110010
c
assert Out 01000111
c
assert Out 10011100
h S
h S
h loadR
setvector A 11010110
setvector B 11110011
c
assert Out 00011101
l S
c
assert Out 01000111
c
assert Out 01110001
c
assert Out 10011011
c
assert Out 11000101
h S
h S
h loadR
setvector A 00000001
setvector B 11110011
c
assert Out 11110010
l S
c
assert Out 11110001
c
assert Out 11110000
c
assert Out 11101111
c
assert Out 11101110
h S
h S
h loadR
setvector A 00101100
setvector B 11110011
c
assert Out 11000111
l S
c
assert Out 10011011
c
assert Out 01101111
c
assert Out 01000011
c
assert Out 00010111
h S
h S
h loadR
setvector A 01010111
setvector B 11110011
c
assert Out 10011100
l S
c
assert Out 01000101
c
assert Out 11101110
c
assert Out 10010111
c
assert Out 01000000
h S
h S
h loadR
setvector A 10000000
setvector B 00001010
c
assert Out 10001010
l S
c
assert Out 00001010
c
assert Out 10001010
c
assert Out 00001010
c
assert Out 10001010
h S
h S
h loadR
setvector A 10101011
setvector B 00001010
c
assert Out 01011111
l S
c
assert Out 10110100
c
assert Out 00001001
c
assert Out 01011110
c
assert Out 10110011
h S
h S
h loadR
setvector A 11010110
setvector B 00001010
c
assert Out 00110100
l S
c
assert Out 01011110
c
assert Out 10001000
c
assert Out 10110010
c
assert Out 11011100
h S
h S
h loadR
setvector A 00000001
setvector B 00001010
c
assert Out 00001001
l S
c
assert Out 00001000
c
assert Out 00000111
c
assert Out 00000110
c
assert Out 00000101
h S
h S
h loadR
setvector A 00101100
setvector B 00001010
c
assert Out 11011110
l S
c
assert Out 10110010
c
assert Out 10000110
c
assert Out 01011010
c
assert Out 00101110
h S
h S
h loadR
setvector A 01010111
setvector B 00001010
c
assert Out 10110011
l S
c
assert Out 01011100
c
assert Out 00000101
c
assert Out 10101110
c
assert Out 01010111
h S
h S
h loadR
setvector A 10000000
setvector B 00100001
c
assert Out 10100001
l S
c
assert Out 00100001
c
assert Out 10100001
c
assert Out 00100001
c
assert Out 10100001
h S
h S
h loadR
setvector A 10101011
setvector B 00100001
c
assert Out 01110110
l S
c
assert Out 11001011
c
assert Out 00100000
c
assert Out 01110101
c
assert Out 11001010
h S
h S
h loadR
setvector A 11010110
setvector B 00100001
c
assert Out 01001011
l S
c
assert Out 01110101
c
assert Out 10011111
c
assert Out 11001001
c
assert Out 11110011
h S
h S
h loadR
setvector A 00000001
setvector B 00100001
c
assert Out 00100000
l S
c
assert Out 00011111
c
assert Out 00011110
c
assert Out 00011101
c
assert Out 00011100
h S
h S
h loadR
setvector A 00101100
setvector B 00100001
c
assert Out 11110101
l S
c
assert Out 11001001
c
assert Out 10011101
c
assert Out 01110001
c
assert Out 01000101
h S
h S
h loadR
setvector A 01010111
setvector B 00100001
c
assert Out 11001010
l S
c
assert Out 01110011
c
assert Out 00011100
c
assert Out 11000101
c
assert Out 01101110
h S
h S
h loadR
setvector A 10000000
setvector B 00111000
c
assert Out 10111000
l S
c
assert Out 00111000
c
assert Out 10111000
c
assert Out 00111000
c
assert Out 10111000
h S
h S
h loadR
setvector A 10101011
setvector B 00111000
c
assert Out 10001101
l S
c
assert Out 11100010
c
assert Out 00110111
c
assert Out 10001100
c
assert Out 11100001
h S
h S
h loadR
setvector A 11010110
setvector B 00111000
c
assert Out 01100010
l S
c
assert Out 10001100
c
assert Out 10110110
c
assert Out 11100000
c
assert Out 00001010
h S
h S
h loadR
setvector A 00000001
setvector B 00111000
c
assert Out 00110111
l S
c
assert Out 00110110
c
assert Out 00110101
c
assert Out 00110100
c
assert Out 00110011
h S
h S
h loadR
setvector A 00101100
setvector B 00111000
c
assert Out 00001100
l S
c
assert Out 11100000
c
assert Out 10110100
c
assert Out 10001000
c
assert Out 01011100
h S
h S
h loadR
setvector A 01010111
setvector B 00111000
c
assert Out 11100001
l S
c
assert Out 10001010
c
assert Out 00110011
c
assert Out 11011100
c
assert Out 10000101
h S
h S
h loadR
setvector A 10000000
setvector B 01001111
c
assert Out 11001111
l S
c
assert Out 01001111
c
assert Out 11001111
c
assert Out 01001111
c
assert Out 11001111
h S
h S
h loadR
setvector A 10101011
setvector B 01001111
c
assert Out 10100100
l S
c
assert Out 11111001
c
assert Out 01001110
c
assert Out 10100011
c
assert Out 11111000
h S
h S
h loadR
setvector A 11010110
setvector B 01001111
c
assert Out 01111001
l S
c
assert Out 10100011
c
assert Out 11001101
c
assert Out 11110111
c
assert Out 00100001
h S
h S
h loadR
setvector A 00000001
setvector B 01001111
c
assert Out 01001110
l S
c
assert Out 01001101
c
assert Out 01001100
c
assert Out 01001011
c
assert Out 01001010
h S
h S
h loadR
setvector A 00101100
setvector B 01001111
c
assert Out 00100011
l S
c
assert Out 11110111
c
assert Out 11001011
c
assert Out 10011111
c
assert Out 01110011
h S
h S
h loadR
setvector A 01010111
setvector B 01001111
c
assert Out 11111000
l S
c
assert Out 10100001
c
assert Out 01001010
c
assert Out 11110011
c
assert Out 10011100
h S
h S
h loadR
setvector A 10000000
setvector B 01100110
c
assert Out 11100110
l S
c
assert Out 01100110
c
assert Out 11100110
c
assert Out 01100110
c
assert Out 11100110
h S
h S
h loadR
setvector A 10101011
setvector B 01100110
c
assert Out 10111011
l S
c
assert Out 00010000
c
assert Out 01100101
c
assert Out 10111010
c
assert Out 00001111
h S
h S
h loadR
setvector A 11010110
setvector B 01100110
c
assert Out 10010000
l S
c
assert Out 10111010
c
assert Out 11100100
c
assert Out 00001110
c
assert Out 00111000
h S
h S
h loadR
setvector A 00000001
setvector B 01100110
c
assert Out 01100101
l S
c
assert Out 01100100
c
assert Out 01100011
c
assert Out 01100010
c
assert Out 01100001
h S
h S
h loadR
setvector A 00101100
setvector B 01100110
c
assert Out 00111010
l S
c
assert Out 00001110
c
assert Out 11100010
c
assert Out 10110110
c
assert Out 10001010
h S
h S
h loadR
setvector A 01010111
setvector B 01100110
c
assert Out 00001111
l S
c
assert Out 10111000
c
assert Out 01100001
c
assert Out 00001010
c
assert Out 10110011
h S
h S
h loadR
setvector A 10000000
setvector B 01111101
c
assert Out 11111101
l S
c
assert Out 01111101
c
assert Out 11111101
c
assert Out 01111101
c
assert Out 11111101
h S
h S
h loadR
setvector A 10101011
setvector B 01111101
c
assert Out 11010010
l S
c
assert Out 00100111
c
assert Out 01111100
c
assert Out 11010001
c
assert Out 00100110
h S
h S
h loadR
setvector A 11010110
setvector B 01111101
c
assert Out 10100111
l S
c
assert Out 11010001
c
assert Out 11111011
c
assert Out 00100101
c
assert Out 01001111
h S
h S
h loadR
setvector A 00000001
setvector B 01111101
c
assert Out 01111100
l S
c
assert Out 01111011
c
assert Out 01111010
c
assert Out 01111001
c
assert Out 01111000
h S
h S
h loadR
setvector A 00101100
setvector B 01111101
c
assert Out 01010001
l S
c
assert Out 00100101
c
assert Out 11111001
c
assert Out 11001101
c
assert Out 10100001
h S
h S
h loadR
setvector A 01010111
setvector B 01111101
c
assert Out 00100110
l S
c
assert Out 11001111
c
assert Out 01111000
c
assert Out 00100001
c
assert Out 11001010
h S
dumph irsim_out.txt
