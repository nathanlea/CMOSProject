stepsize 1500.0
vector A {A[7]} {A[6]} {A[5]} {A[4]} {A[3]} {A[2]} {A[1]} {A[0]}
vector B {B[7]} {B[6]} {B[5]} {B[4]} {B[3]} {B[2]} {B[1]} {B[0]}
vector Q {Out[7]} {Out[6]} {Out[5]} {Out[4]} {Out[3]} {Out[2]} {Out[1]} {Out[0]}

ana -h A B Q clk subtract LoadB LoadR 
analyzer
clock clk 0 1
h LoadB
h LoadR
l subtract
c
c

| addition
h LoadB
h LoadR
setvector A 10000000
setvector B 10000000
c
assert Q 00000000
c
h LoadB
h LoadR
setvector A 10101011
setvector B 10000000
c
assert Q 00101011
c
h LoadB
h LoadR
setvector A 11010110
setvector B 10000000
c
assert Q 01010110
c
h LoadB
h LoadR
setvector A 00000001
setvector B 10000000
c
assert Q 10000001
c
h LoadB
h LoadR
setvector A 00101100
setvector B 10000000
c
assert Q 10101100
c
h LoadB
h LoadR
setvector A 01010111
setvector B 10000000
c
assert Q 11010111
c
h LoadB
h LoadR
setvector A 10000000
setvector B 10010111
c
assert Q 00010111
c
h LoadB
h LoadR
setvector A 10101011
setvector B 10010111
c
assert Q 01000010
c
h LoadB
h LoadR
setvector A 11010110
setvector B 10010111
c
assert Q 01101101
c
h LoadB
h LoadR
setvector A 00000001
setvector B 10010111
c
assert Q 10011000
c
h LoadB
h LoadR
setvector A 00101100
setvector B 10010111
c
assert Q 11000011
c
h LoadB
h LoadR
setvector A 01010111
setvector B 10010111
c
assert Q 11101110
c
h LoadB
h LoadR
setvector A 10000000
setvector B 10101110
c
assert Q 00101110
c
h LoadB
h LoadR
setvector A 10101011
setvector B 10101110
c
assert Q 01011001
c
h LoadB
h LoadR
setvector A 11010110
setvector B 10101110
c
assert Q 10000100
c
h LoadB
h LoadR
setvector A 00000001
setvector B 10101110
c
assert Q 10101111
c
h LoadB
h LoadR
setvector A 00101100
setvector B 10101110
c
assert Q 11011010
c
h LoadB
h LoadR
setvector A 01010111
setvector B 10101110
c
assert Q 00000101
c
h LoadB
h LoadR
setvector A 10000000
setvector B 11000101
c
assert Q 01000101
c
h LoadB
h LoadR
setvector A 10101011
setvector B 11000101
c
assert Q 01110000
c
h LoadB
h LoadR
setvector A 11010110
setvector B 11000101
c
assert Q 10011011
c
h LoadB
h LoadR
setvector A 00000001
setvector B 11000101
c
assert Q 11000110
c
h LoadB
h LoadR
setvector A 00101100
setvector B 11000101
c
assert Q 11110001
c
h LoadB
h LoadR
setvector A 01010111
setvector B 11000101
c
assert Q 00011100
c
h LoadB
h LoadR
setvector A 10000000
setvector B 11011100
c
assert Q 01011100
c
h LoadB
h LoadR
setvector A 10101011
setvector B 11011100
c
assert Q 10000111
c
h LoadB
h LoadR
setvector A 11010110
setvector B 11011100
c
assert Q 10110010
c
h LoadB
h LoadR
setvector A 00000001
setvector B 11011100
c
assert Q 11011101
c
h LoadB
h LoadR
setvector A 00101100
setvector B 11011100
c
assert Q 00001000
c
h LoadB
h LoadR
setvector A 01010111
setvector B 11011100
c
assert Q 00110011
c
h LoadB
h LoadR
setvector A 10000000
setvector B 11110011
c
assert Q 01110011
c
h LoadB
h LoadR
setvector A 10101011
setvector B 11110011
c
assert Q 10011110
c
h LoadB
h LoadR
setvector A 11010110
setvector B 11110011
c
assert Q 11001001
c
h LoadB
h LoadR
setvector A 00000001
setvector B 11110011
c
assert Q 11110100
c
h LoadB
h LoadR
setvector A 00101100
setvector B 11110011
c
assert Q 00011111
c
h LoadB
h LoadR
setvector A 01010111
setvector B 11110011
c
assert Q 01001010
c
h LoadB
h LoadR
setvector A 10000000
setvector B 00001010
c
assert Q 10001010
c
h LoadB
h LoadR
setvector A 10101011
setvector B 00001010
c
assert Q 10110101
c
h LoadB
h LoadR
setvector A 11010110
setvector B 00001010
c
assert Q 11100000
c
h LoadB
h LoadR
setvector A 00000001
setvector B 00001010
c
assert Q 00001011
c
h LoadB
h LoadR
setvector A 00101100
setvector B 00001010
c
assert Q 00110110
c
h LoadB
h LoadR
setvector A 01010111
setvector B 00001010
c
assert Q 01100001
c
h LoadB
h LoadR
setvector A 10000000
setvector B 00100001
c
assert Q 10100001
c
h LoadB
h LoadR
setvector A 10101011
setvector B 00100001
c
assert Q 11001100
c
h LoadB
h LoadR
setvector A 11010110
setvector B 00100001
c
assert Q 11110111
c
h LoadB
h LoadR
setvector A 00000001
setvector B 00100001
c
assert Q 00100010
c
h LoadB
h LoadR
setvector A 00101100
setvector B 00100001
c
assert Q 01001101
c
h LoadB
h LoadR
setvector A 01010111
setvector B 00100001
c
assert Q 01111000
c
h LoadB
h LoadR
setvector A 10000000
setvector B 00111000
c
assert Q 10111000
c
h LoadB
h LoadR
setvector A 10101011
setvector B 00111000
c
assert Q 11100011
c
h LoadB
h LoadR
setvector A 11010110
setvector B 00111000
c
assert Q 00001110
c
h LoadB
h LoadR
setvector A 00000001
setvector B 00111000
c
assert Q 00111001
c
h LoadB
h LoadR
setvector A 00101100
setvector B 00111000
c
assert Q 01100100
c
h LoadB
h LoadR
setvector A 01010111
setvector B 00111000
c
assert Q 10001111
c
h LoadB
h LoadR
setvector A 10000000
setvector B 01001111
c
assert Q 11001111
c
h LoadB
h LoadR
setvector A 10101011
setvector B 01001111
c
assert Q 11111010
c
h LoadB
h LoadR
setvector A 11010110
setvector B 01001111
c
assert Q 00100101
c
h LoadB
h LoadR
setvector A 00000001
setvector B 01001111
c
assert Q 01010000
c
h LoadB
h LoadR
setvector A 00101100
setvector B 01001111
c
assert Q 01111011
c
h LoadB
h LoadR
setvector A 01010111
setvector B 01001111
c
assert Q 10100110
c
h LoadB
h LoadR
setvector A 10000000
setvector B 01100110
c
assert Q 11100110
c
h LoadB
h LoadR
setvector A 10101011
setvector B 01100110
c
assert Q 00010001
c
h LoadB
h LoadR
setvector A 11010110
setvector B 01100110
c
assert Q 00111100
c
h LoadB
h LoadR
setvector A 00000001
setvector B 01100110
c
assert Q 01100111
c
h LoadB
h LoadR
setvector A 00101100
setvector B 01100110
c
assert Q 10010010
c
h LoadB
h LoadR
setvector A 01010111
setvector B 01100110
c
assert Q 10111101
c
h LoadB
h LoadR
setvector A 10000000
setvector B 01111101
c
assert Q 11111101
c
h LoadB
h LoadR
setvector A 10101011
setvector B 01111101
c
assert Q 00101000
c
h LoadB
h LoadR
setvector A 11010110
setvector B 01111101
c
assert Q 01010011
c
h LoadB
h LoadR
setvector A 00000001
setvector B 01111101
c
assert Q 01111110
c
h LoadB
h LoadR
setvector A 00101100
setvector B 01111101
c
assert Q 10101001
c
h LoadB
h LoadR
setvector A 01010111
setvector B 01111101
c
assert Q 11010100
c
| subtract
h subtract
h LoadB
h LoadR
setvector A 10000000
setvector B 10000000
c
assert Q 00000000
c
h LoadB
h LoadR
setvector A 10101011
setvector B 10000000
c
assert Q 11010101
c
h LoadB
h LoadR
setvector A 11010110
setvector B 10000000
c
assert Q 10101010
c
h LoadB
h LoadR
setvector A 00000001
setvector B 10000000
c
assert Q 01111111
c
h LoadB
h LoadR
setvector A 00101100
setvector B 10000000
c
assert Q 01010100
c
h LoadB
h LoadR
setvector A 01010111
setvector B 10000000
c
assert Q 00101001
c
h LoadB
h LoadR
setvector A 10000000
setvector B 10010111
c
assert Q 00010111
c
h LoadB
h LoadR
setvector A 10101011
setvector B 10010111
c
assert Q 11101100
c
h LoadB
h LoadR
setvector A 11010110
setvector B 10010111
c
assert Q 11000001
c
h LoadB
h LoadR
setvector A 00000001
setvector B 10010111
c
assert Q 10010110
c
h LoadB
h LoadR
setvector A 00101100
setvector B 10010111
c
assert Q 01101011
c
h LoadB
h LoadR
setvector A 01010111
setvector B 10010111
c
assert Q 01000000
c
h LoadB
h LoadR
setvector A 10000000
setvector B 10101110
c
assert Q 00101110
c
h LoadB
h LoadR
setvector A 10101011
setvector B 10101110
c
assert Q 00000011
c
h LoadB
h LoadR
setvector A 11010110
setvector B 10101110
c
assert Q 11011000
c
h LoadB
h LoadR
setvector A 00000001
setvector B 10101110
c
assert Q 10101101
c
h LoadB
h LoadR
setvector A 00101100
setvector B 10101110
c
assert Q 10000010
c
h LoadB
h LoadR
setvector A 01010111
setvector B 10101110
c
assert Q 01010111
c
h LoadB
h LoadR
setvector A 10000000
setvector B 11000101
c
assert Q 01000101
c
h LoadB
h LoadR
setvector A 10101011
setvector B 11000101
c
assert Q 00011010
c
h LoadB
h LoadR
setvector A 11010110
setvector B 11000101
c
assert Q 11101111
c
h LoadB
h LoadR
setvector A 00000001
setvector B 11000101
c
assert Q 11000100
c
h LoadB
h LoadR
setvector A 00101100
setvector B 11000101
c
assert Q 10011001
c
h LoadB
h LoadR
setvector A 01010111
setvector B 11000101
c
assert Q 01101110
c
h LoadB
h LoadR
setvector A 10000000
setvector B 11011100
c
assert Q 01011100
c
h LoadB
h LoadR
setvector A 10101011
setvector B 11011100
c
assert Q 00110001
c
h LoadB
h LoadR
setvector A 11010110
setvector B 11011100
c
assert Q 00000110
c
h LoadB
h LoadR
setvector A 00000001
setvector B 11011100
c
assert Q 11011011
c
h LoadB
h LoadR
setvector A 00101100
setvector B 11011100
c
assert Q 10110000
c
h LoadB
h LoadR
setvector A 01010111
setvector B 11011100
c
assert Q 10000101
c
h LoadB
h LoadR
setvector A 10000000
setvector B 11110011
c
assert Q 01110011
c
h LoadB
h LoadR
setvector A 10101011
setvector B 11110011
c
assert Q 01001000
c
h LoadB
h LoadR
setvector A 11010110
setvector B 11110011
c
assert Q 00011101
c
h LoadB
h LoadR
setvector A 00000001
setvector B 11110011
c
assert Q 11110010
c
h LoadB
h LoadR
setvector A 00101100
setvector B 11110011
c
assert Q 11000111
c
h LoadB
h LoadR
setvector A 01010111
setvector B 11110011
c
assert Q 10011100
c
h LoadB
h LoadR
setvector A 10000000
setvector B 00001010
c
assert Q 10001010
c
h LoadB
h LoadR
setvector A 10101011
setvector B 00001010
c
assert Q 01011111
c
h LoadB
h LoadR
setvector A 11010110
setvector B 00001010
c
assert Q 00110100
c
h LoadB
h LoadR
setvector A 00000001
setvector B 00001010
c
assert Q 00001001
c
h LoadB
h LoadR
setvector A 00101100
setvector B 00001010
c
assert Q 11011110
c
h LoadB
h LoadR
setvector A 01010111
setvector B 00001010
c
assert Q 10110011
c
h LoadB
h LoadR
setvector A 10000000
setvector B 00100001
c
assert Q 10100001
c
h LoadB
h LoadR
setvector A 10101011
setvector B 00100001
c
assert Q 01110110
c
h LoadB
h LoadR
setvector A 11010110
setvector B 00100001
c
assert Q 01001011
c
h LoadB
h LoadR
setvector A 00000001
setvector B 00100001
c
assert Q 00100000
c
h LoadB
h LoadR
setvector A 00101100
setvector B 00100001
c
assert Q 11110101
c
h LoadB
h LoadR
setvector A 01010111
setvector B 00100001
c
assert Q 11001010
c
h LoadB
h LoadR
setvector A 10000000
setvector B 00111000
c
assert Q 10111000
c
h LoadB
h LoadR
setvector A 10101011
setvector B 00111000
c
assert Q 10001101
c
h LoadB
h LoadR
setvector A 11010110
setvector B 00111000
c
assert Q 01100010
c
h LoadB
h LoadR
setvector A 00000001
setvector B 00111000
c
assert Q 00110111
c
h LoadB
h LoadR
setvector A 00101100
setvector B 00111000
c
assert Q 00001100
c
h LoadB
h LoadR
setvector A 01010111
setvector B 00111000
c
assert Q 11100001
c
h LoadB
h LoadR
setvector A 10000000
setvector B 01001111
c
assert Q 11001111
c
h LoadB
h LoadR
setvector A 10101011
setvector B 01001111
c
assert Q 10100100
c
h LoadB
h LoadR
setvector A 11010110
setvector B 01001111
c
assert Q 01111001
c
h LoadB
h LoadR
setvector A 00000001
setvector B 01001111
c
assert Q 01001110
c
h LoadB
h LoadR
setvector A 00101100
setvector B 01001111
c
assert Q 00100011
c
h LoadB
h LoadR
setvector A 01010111
setvector B 01001111
c
assert Q 11111000
c
h LoadB
h LoadR
setvector A 10000000
setvector B 01100110
c
assert Q 11100110
c
h LoadB
h LoadR
setvector A 10101011
setvector B 01100110
c
assert Q 10111011
c
h LoadB
h LoadR
setvector A 11010110
setvector B 01100110
c
assert Q 10010000
c
h LoadB
h LoadR
setvector A 00000001
setvector B 01100110
c
assert Q 01100101
c
h LoadB
h LoadR
setvector A 00101100
setvector B 01100110
c
assert Q 00111010
c
h LoadB
h LoadR
setvector A 01010111
setvector B 01100110
c
assert Q 00001111
c
h LoadB
h LoadR
setvector A 10000000
setvector B 01111101
c
assert Q 11111101
c
h LoadB
h LoadR
setvector A 10101011
setvector B 01111101
c
assert Q 11010010
c
h LoadB
h LoadR
setvector A 11010110
setvector B 01111101
c
assert Q 10100111
c
h LoadB
h LoadR
setvector A 00000001
setvector B 01111101
c
assert Q 01111100
c
h LoadB
h LoadR
setvector A 00101100
setvector B 01111101
c
assert Q 01010001
c
h LoadB
h LoadR
setvector A 01010111
setvector B 01111101
c
assert Q 00100110
c
| addition w/loops
l subtract
h LoadB
h LoadR
setvector A 10000000
setvector B 10000000
c
assert Q 00000000
l LoadB
c
assert Q 10000000
l LoadB
c
assert Q 00000000
l LoadB
c
assert Q 10000000
l LoadB
c
assert Q 00000000
h LoadB
h LoadR
setvector A 10101011
setvector B 10000000
c
assert Q 00101011
l LoadB
c
assert Q 11010110
l LoadB
c
assert Q 10000001
l LoadB
c
assert Q 00101100
l LoadB
c
assert Q 11010111
h LoadB
h LoadR
setvector A 11010110
setvector B 10000000
c
assert Q 01010110
l LoadB
c
assert Q 00101100
l LoadB
c
assert Q 00000010
l LoadB
c
assert Q 11011000
l LoadB
c
assert Q 10101110
h LoadB
h LoadR
setvector A 00000001
setvector B 10000000
c
assert Q 10000001
l LoadB
c
assert Q 10000010
l LoadB
c
assert Q 10000011
l LoadB
c
assert Q 10000100
l LoadB
c
assert Q 10000101
h LoadB
h LoadR
setvector A 00101100
setvector B 10000000
c
assert Q 10101100
l LoadB
c
assert Q 11011000
l LoadB
c
assert Q 00000100
l LoadB
c
assert Q 00110000
l LoadB
c
assert Q 01011100
h LoadB
h LoadR
setvector A 01010111
setvector B 10000000
c
assert Q 11010111
l LoadB
c
assert Q 00101110
l LoadB
c
assert Q 10000101
l LoadB
c
assert Q 11011100
l LoadB
c
assert Q 00110011
h LoadB
h LoadB
h LoadR
setvector A 10000000
setvector B 10010111
c
assert Q 00010111
l LoadB
c
assert Q 10010111
l LoadB
c
assert Q 00010111
l LoadB
c
assert Q 10010111
l LoadB
c
assert Q 00010111
h LoadB
h LoadR
setvector A 10101011
setvector B 10010111
c
assert Q 01000010
l LoadB
c
assert Q 11101101
l LoadB
c
assert Q 10011000
l LoadB
c
assert Q 01000011
l LoadB
c
assert Q 11101110
h LoadB
h LoadR
setvector A 11010110
setvector B 10010111
c
assert Q 01101101
l LoadB
c
assert Q 01000011
l LoadB
c
assert Q 00011001
l LoadB
c
assert Q 11101111
l LoadB
c
assert Q 11000101
h LoadB
h LoadR
setvector A 00000001
setvector B 10010111
c
assert Q 10011000
l LoadB
c
assert Q 10011001
l LoadB
c
assert Q 10011010
l LoadB
c
assert Q 10011011
l LoadB
c
assert Q 10011100
h LoadB
h LoadR
setvector A 00101100
setvector B 10010111
c
assert Q 11000011
l LoadB
c
assert Q 11101111
l LoadB
c
assert Q 00011011
l LoadB
c
assert Q 01000111
l LoadB
c
assert Q 01110011
h LoadB
h LoadR
setvector A 01010111
setvector B 10010111
c
assert Q 11101110
l LoadB
c
assert Q 01000101
l LoadB
c
assert Q 10011100
l LoadB
c
assert Q 11110011
l LoadB
c
assert Q 01001010
h LoadB
h LoadB
h LoadR
setvector A 10000000
setvector B 10101110
c
assert Q 00101110
l LoadB
c
assert Q 10101110
l LoadB
c
assert Q 00101110
l LoadB
c
assert Q 10101110
l LoadB
c
assert Q 00101110
h LoadB
h LoadR
setvector A 10101011
setvector B 10101110
c
assert Q 01011001
l LoadB
c
assert Q 00000100
l LoadB
c
assert Q 10101111
l LoadB
c
assert Q 01011010
l LoadB
c
assert Q 00000101
h LoadB
h LoadR
setvector A 11010110
setvector B 10101110
c
assert Q 10000100
l LoadB
c
assert Q 01011010
l LoadB
c
assert Q 00110000
l LoadB
c
assert Q 00000110
l LoadB
c
assert Q 11011100
h LoadB
h LoadR
setvector A 00000001
setvector B 10101110
c
assert Q 10101111
l LoadB
c
assert Q 10110000
l LoadB
c
assert Q 10110001
l LoadB
c
assert Q 10110010
l LoadB
c
assert Q 10110011
h LoadB
h LoadR
setvector A 00101100
setvector B 10101110
c
assert Q 11011010
l LoadB
c
assert Q 00000110
l LoadB
c
assert Q 00110010
l LoadB
c
assert Q 01011110
l LoadB
c
assert Q 10001010
h LoadB
h LoadR
setvector A 01010111
setvector B 10101110
c
assert Q 00000101
l LoadB
c
assert Q 01011100
l LoadB
c
assert Q 10110011
l LoadB
c
assert Q 00001010
l LoadB
c
assert Q 01100001
h LoadB
h LoadB
h LoadR
setvector A 10000000
setvector B 11000101
c
assert Q 01000101
l LoadB
c
assert Q 11000101
l LoadB
c
assert Q 01000101
l LoadB
c
assert Q 11000101
l LoadB
c
assert Q 01000101
h LoadB
h LoadR
setvector A 10101011
setvector B 11000101
c
assert Q 01110000
l LoadB
c
assert Q 00011011
l LoadB
c
assert Q 11000110
l LoadB
c
assert Q 01110001
l LoadB
c
assert Q 00011100
h LoadB
h LoadR
setvector A 11010110
setvector B 11000101
c
assert Q 10011011
l LoadB
c
assert Q 01110001
l LoadB
c
assert Q 01000111
l LoadB
c
assert Q 00011101
l LoadB
c
assert Q 11110011
h LoadB
h LoadR
setvector A 00000001
setvector B 11000101
c
assert Q 11000110
l LoadB
c
assert Q 11000111
l LoadB
c
assert Q 11001000
l LoadB
c
assert Q 11001001
l LoadB
c
assert Q 11001010
h LoadB
h LoadR
setvector A 00101100
setvector B 11000101
c
assert Q 11110001
l LoadB
c
assert Q 00011101
l LoadB
c
assert Q 01001001
l LoadB
c
assert Q 01110101
l LoadB
c
assert Q 10100001
h LoadB
h LoadR
setvector A 01010111
setvector B 11000101
c
assert Q 00011100
l LoadB
c
assert Q 01110011
l LoadB
c
assert Q 11001010
l LoadB
c
assert Q 00100001
l LoadB
c
assert Q 01111000
h LoadB
h LoadB
h LoadR
setvector A 10000000
setvector B 11011100
c
assert Q 01011100
l LoadB
c
assert Q 11011100
l LoadB
c
assert Q 01011100
l LoadB
c
assert Q 11011100
l LoadB
c
assert Q 01011100
h LoadB
h LoadR
setvector A 10101011
setvector B 11011100
c
assert Q 10000111
l LoadB
c
assert Q 00110010
l LoadB
c
assert Q 11011101
l LoadB
c
assert Q 10001000
l LoadB
c
assert Q 00110011
h LoadB
h LoadR
setvector A 11010110
setvector B 11011100
c
assert Q 10110010
l LoadB
c
assert Q 10001000
l LoadB
c
assert Q 01011110
l LoadB
c
assert Q 00110100
l LoadB
c
assert Q 00001010
h LoadB
h LoadR
setvector A 00000001
setvector B 11011100
c
assert Q 11011101
l LoadB
c
assert Q 11011110
l LoadB
c
assert Q 11011111
l LoadB
c
assert Q 11100000
l LoadB
c
assert Q 11100001
h LoadB
h LoadR
setvector A 00101100
setvector B 11011100
c
assert Q 00001000
l LoadB
c
assert Q 00110100
l LoadB
c
assert Q 01100000
l LoadB
c
assert Q 10001100
l LoadB
c
assert Q 10111000
h LoadB
h LoadR
setvector A 01010111
setvector B 11011100
c
assert Q 00110011
l LoadB
c
assert Q 10001010
l LoadB
c
assert Q 11100001
l LoadB
c
assert Q 00111000
l LoadB
c
assert Q 10001111
h LoadB
h LoadB
h LoadR
setvector A 10000000
setvector B 11110011
c
assert Q 01110011
l LoadB
c
assert Q 11110011
l LoadB
c
assert Q 01110011
l LoadB
c
assert Q 11110011
l LoadB
c
assert Q 01110011
h LoadB
h LoadR
setvector A 10101011
setvector B 11110011
c
assert Q 10011110
l LoadB
c
assert Q 01001001
l LoadB
c
assert Q 11110100
l LoadB
c
assert Q 10011111
l LoadB
c
assert Q 01001010
h LoadB
h LoadR
setvector A 11010110
setvector B 11110011
c
assert Q 11001001
l LoadB
c
assert Q 10011111
l LoadB
c
assert Q 01110101
l LoadB
c
assert Q 01001011
l LoadB
c
assert Q 00100001
h LoadB
h LoadR
setvector A 00000001
setvector B 11110011
c
assert Q 11110100
l LoadB
c
assert Q 11110101
l LoadB
c
assert Q 11110110
l LoadB
c
assert Q 11110111
l LoadB
c
assert Q 11111000
h LoadB
h LoadR
setvector A 00101100
setvector B 11110011
c
assert Q 00011111
l LoadB
c
assert Q 01001011
l LoadB
c
assert Q 01110111
l LoadB
c
assert Q 10100011
l LoadB
c
assert Q 11001111
h LoadB
h LoadR
setvector A 01010111
setvector B 11110011
c
assert Q 01001010
l LoadB
c
assert Q 10100001
l LoadB
c
assert Q 11111000
l LoadB
c
assert Q 01001111
l LoadB
c
assert Q 10100110
h LoadB
h LoadB
h LoadR
setvector A 10000000
setvector B 00001010
c
assert Q 10001010
l LoadB
c
assert Q 00001010
l LoadB
c
assert Q 10001010
l LoadB
c
assert Q 00001010
l LoadB
c
assert Q 10001010
h LoadB
h LoadR
setvector A 10101011
setvector B 00001010
c
assert Q 10110101
l LoadB
c
assert Q 01100000
l LoadB
c
assert Q 00001011
l LoadB
c
assert Q 10110110
l LoadB
c
assert Q 01100001
h LoadB
h LoadR
setvector A 11010110
setvector B 00001010
c
assert Q 11100000
l LoadB
c
assert Q 10110110
l LoadB
c
assert Q 10001100
l LoadB
c
assert Q 01100010
l LoadB
c
assert Q 00111000
h LoadB
h LoadR
setvector A 00000001
setvector B 00001010
c
assert Q 00001011
l LoadB
c
assert Q 00001100
l LoadB
c
assert Q 00001101
l LoadB
c
assert Q 00001110
l LoadB
c
assert Q 00001111
h LoadB
h LoadR
setvector A 00101100
setvector B 00001010
c
assert Q 00110110
l LoadB
c
assert Q 01100010
l LoadB
c
assert Q 10001110
l LoadB
c
assert Q 10111010
l LoadB
c
assert Q 11100110
h LoadB
h LoadR
setvector A 01010111
setvector B 00001010
c
assert Q 01100001
l LoadB
c
assert Q 10111000
l LoadB
c
assert Q 00001111
l LoadB
c
assert Q 01100110
l LoadB
c
assert Q 10111101
h LoadB
h LoadB
h LoadR
setvector A 10000000
setvector B 00100001
c
assert Q 10100001
l LoadB
c
assert Q 00100001
l LoadB
c
assert Q 10100001
l LoadB
c
assert Q 00100001
l LoadB
c
assert Q 10100001
h LoadB
h LoadR
setvector A 10101011
setvector B 00100001
c
assert Q 11001100
l LoadB
c
assert Q 01110111
l LoadB
c
assert Q 00100010
l LoadB
c
assert Q 11001101
l LoadB
c
assert Q 01111000
h LoadB
h LoadR
setvector A 11010110
setvector B 00100001
c
assert Q 11110111
l LoadB
c
assert Q 11001101
l LoadB
c
assert Q 10100011
l LoadB
c
assert Q 01111001
l LoadB
c
assert Q 01001111
h LoadB
h LoadR
setvector A 00000001
setvector B 00100001
c
assert Q 00100010
l LoadB
c
assert Q 00100011
l LoadB
c
assert Q 00100100
l LoadB
c
assert Q 00100101
l LoadB
c
assert Q 00100110
h LoadB
h LoadR
setvector A 00101100
setvector B 00100001
c
assert Q 01001101
l LoadB
c
assert Q 01111001
l LoadB
c
assert Q 10100101
l LoadB
c
assert Q 11010001
l LoadB
c
assert Q 11111101
h LoadB
h LoadR
setvector A 01010111
setvector B 00100001
c
assert Q 01111000
l LoadB
c
assert Q 11001111
l LoadB
c
assert Q 00100110
l LoadB
c
assert Q 01111101
l LoadB
c
assert Q 11010100
h LoadB
h LoadB
h LoadR
setvector A 10000000
setvector B 00111000
c
assert Q 10111000
l LoadB
c
assert Q 00111000
l LoadB
c
assert Q 10111000
l LoadB
c
assert Q 00111000
l LoadB
c
assert Q 10111000
h LoadB
h LoadR
setvector A 10101011
setvector B 00111000
c
assert Q 11100011
l LoadB
c
assert Q 10001110
l LoadB
c
assert Q 00111001
l LoadB
c
assert Q 11100100
l LoadB
c
assert Q 10001111
h LoadB
h LoadR
setvector A 11010110
setvector B 00111000
c
assert Q 00001110
l LoadB
c
assert Q 11100100
l LoadB
c
assert Q 10111010
l LoadB
c
assert Q 10010000
l LoadB
c
assert Q 01100110
h LoadB
h LoadR
setvector A 00000001
setvector B 00111000
c
assert Q 00111001
l LoadB
c
assert Q 00111010
l LoadB
c
assert Q 00111011
l LoadB
c
assert Q 00111100
l LoadB
c
assert Q 00111101
h LoadB
h LoadR
setvector A 00101100
setvector B 00111000
c
assert Q 01100100
l LoadB
c
assert Q 10010000
l LoadB
c
assert Q 10111100
l LoadB
c
assert Q 11101000
l LoadB
c
assert Q 00010100
h LoadB
h LoadR
setvector A 01010111
setvector B 00111000
c
assert Q 10001111
l LoadB
c
assert Q 11100110
l LoadB
c
assert Q 00111101
l LoadB
c
assert Q 10010100
l LoadB
c
assert Q 11101011
h LoadB
h LoadB
h LoadR
setvector A 10000000
setvector B 01001111
c
assert Q 11001111
l LoadB
c
assert Q 01001111
l LoadB
c
assert Q 11001111
l LoadB
c
assert Q 01001111
l LoadB
c
assert Q 11001111
h LoadB
h LoadR
setvector A 10101011
setvector B 01001111
c
assert Q 11111010
l LoadB
c
assert Q 10100101
l LoadB
c
assert Q 01010000
l LoadB
c
assert Q 11111011
l LoadB
c
assert Q 10100110
h LoadB
h LoadR
setvector A 11010110
setvector B 01001111
c
assert Q 00100101
l LoadB
c
assert Q 11111011
l LoadB
c
assert Q 11010001
l LoadB
c
assert Q 10100111
l LoadB
c
assert Q 01111101
h LoadB
h LoadR
setvector A 00000001
setvector B 01001111
c
assert Q 01010000
l LoadB
c
assert Q 01010001
l LoadB
c
assert Q 01010010
l LoadB
c
assert Q 01010011
l LoadB
c
assert Q 01010100
h LoadB
h LoadR
setvector A 00101100
setvector B 01001111
c
assert Q 01111011
l LoadB
c
assert Q 10100111
l LoadB
c
assert Q 11010011
l LoadB
c
assert Q 11111111
l LoadB
c
assert Q 00101011
h LoadB
h LoadR
setvector A 01010111
setvector B 01001111
c
assert Q 10100110
l LoadB
c
assert Q 11111101
l LoadB
c
assert Q 01010100
l LoadB
c
assert Q 10101011
l LoadB
c
assert Q 00000010
h LoadB
h LoadB
h LoadR
setvector A 10000000
setvector B 01100110
c
assert Q 11100110
l LoadB
c
assert Q 01100110
l LoadB
c
assert Q 11100110
l LoadB
c
assert Q 01100110
l LoadB
c
assert Q 11100110
h LoadB
h LoadR
setvector A 10101011
setvector B 01100110
c
assert Q 00010001
l LoadB
c
assert Q 10111100
l LoadB
c
assert Q 01100111
l LoadB
c
assert Q 00010010
l LoadB
c
assert Q 10111101
h LoadB
h LoadR
setvector A 11010110
setvector B 01100110
c
assert Q 00111100
l LoadB
c
assert Q 00010010
l LoadB
c
assert Q 11101000
l LoadB
c
assert Q 10111110
l LoadB
c
assert Q 10010100
h LoadB
h LoadR
setvector A 00000001
setvector B 01100110
c
assert Q 01100111
l LoadB
c
assert Q 01101000
l LoadB
c
assert Q 01101001
l LoadB
c
assert Q 01101010
l LoadB
c
assert Q 01101011
h LoadB
h LoadR
setvector A 00101100
setvector B 01100110
c
assert Q 10010010
l LoadB
c
assert Q 10111110
l LoadB
c
assert Q 11101010
l LoadB
c
assert Q 00010110
l LoadB
c
assert Q 01000010
h LoadB
h LoadR
setvector A 01010111
setvector B 01100110
c
assert Q 10111101
l LoadB
c
assert Q 00010100
l LoadB
c
assert Q 01101011
l LoadB
c
assert Q 11000010
l LoadB
c
assert Q 00011001
h LoadB
h LoadB
h LoadR
setvector A 10000000
setvector B 01111101
c
assert Q 11111101
l LoadB
c
assert Q 01111101
l LoadB
c
assert Q 11111101
l LoadB
c
assert Q 01111101
l LoadB
c
assert Q 11111101
h LoadB
h LoadR
setvector A 10101011
setvector B 01111101
c
assert Q 00101000
l LoadB
c
assert Q 11010011
l LoadB
c
assert Q 01111110
l LoadB
c
assert Q 00101001
l LoadB
c
assert Q 11010100
h LoadB
h LoadR
setvector A 11010110
setvector B 01111101
c
assert Q 01010011
l LoadB
c
assert Q 00101001
l LoadB
c
assert Q 11111111
l LoadB
c
assert Q 11010101
l LoadB
c
assert Q 10101011
h LoadB
h LoadR
setvector A 00000001
setvector B 01111101
c
assert Q 01111110
l LoadB
c
assert Q 01111111
l LoadB
c
assert Q 10000000
l LoadB
c
assert Q 10000001
l LoadB
c
assert Q 10000010
h LoadB
h LoadR
setvector A 00101100
setvector B 01111101
c
assert Q 10101001
l LoadB
c
assert Q 11010101
l LoadB
c
assert Q 00000001
l LoadB
c
assert Q 00101101
l LoadB
c
assert Q 01011001
h LoadB
h LoadR
setvector A 01010111
setvector B 01111101
c
assert Q 11010100
l LoadB
c
assert Q 00101011
l LoadB
c
assert Q 10000010
l LoadB
c
assert Q 11011001
l LoadB
c
assert Q 00110000
h LoadB
| subtract w/loops
h subtract
h LoadB
h LoadR
setvector A 10000000
setvector B 10000000
c
assert Q 00000000
l LoadB
c
assert Q 10000000
c
assert Q 00000000
c
assert Q 10000000
c
assert Q 00000000
h LoadB
h LoadB
h LoadR
setvector A 10101011
setvector B 10000000
c
assert Q 11010101
l LoadB
c
assert Q 00101010
c
assert Q 01111111
c
assert Q 11010100
c
assert Q 00101001
h LoadB
h LoadB
h LoadR
setvector A 11010110
setvector B 10000000
c
assert Q 10101010
l LoadB
c
assert Q 11010100
c
assert Q 11111110
c
assert Q 00101000
c
assert Q 01010010
h LoadB
h LoadB
h LoadR
setvector A 00000001
setvector B 10000000
c
assert Q 01111111
l LoadB
c
assert Q 01111110
c
assert Q 01111101
c
assert Q 01111100
c
assert Q 01111011
h LoadB
h LoadB
h LoadR
setvector A 00101100
setvector B 10000000
c
assert Q 01010100
l LoadB
c
assert Q 00101000
c
assert Q 11111100
c
assert Q 11010000
c
assert Q 10100100
h LoadB
h LoadB
h LoadR
setvector A 01010111
setvector B 10000000
c
assert Q 00101001
l LoadB
c
assert Q 11010010
c
assert Q 01111011
c
assert Q 00100100
c
assert Q 11001101
h LoadB
h LoadB
h LoadR
setvector A 10000000
setvector B 10010111
c
assert Q 00010111
l LoadB
c
assert Q 10010111
c
assert Q 00010111
c
assert Q 10010111
c
assert Q 00010111
h LoadB
h LoadB
h LoadR
setvector A 10101011
setvector B 10010111
c
assert Q 11101100
l LoadB
c
assert Q 01000001
c
assert Q 10010110
c
assert Q 11101011
c
assert Q 01000000
h LoadB
h LoadB
h LoadR
setvector A 11010110
setvector B 10010111
c
assert Q 11000001
l LoadB
c
assert Q 11101011
c
assert Q 00010101
c
assert Q 00111111
c
assert Q 01101001
h LoadB
h LoadB
h LoadR
setvector A 00000001
setvector B 10010111
c
assert Q 10010110
l LoadB
c
assert Q 10010101
c
assert Q 10010100
c
assert Q 10010011
c
assert Q 10010010
h LoadB
h LoadB
h LoadR
setvector A 00101100
setvector B 10010111
c
assert Q 01101011
l LoadB
c
assert Q 00111111
c
assert Q 00010011
c
assert Q 11100111
c
assert Q 10111011
h LoadB
h LoadB
h LoadR
setvector A 01010111
setvector B 10010111
c
assert Q 01000000
l LoadB
c
assert Q 11101001
c
assert Q 10010010
c
assert Q 00111011
c
assert Q 11100100
h LoadB
h LoadB
h LoadR
setvector A 10000000
setvector B 10101110
c
assert Q 00101110
l LoadB
c
assert Q 10101110
c
assert Q 00101110
c
assert Q 10101110
c
assert Q 00101110
h LoadB
h LoadB
h LoadR
setvector A 10101011
setvector B 10101110
c
assert Q 00000011
l LoadB
c
assert Q 01011000
c
assert Q 10101101
c
assert Q 00000010
c
assert Q 01010111
h LoadB
h LoadB
h LoadR
setvector A 11010110
setvector B 10101110
c
assert Q 11011000
l LoadB
c
assert Q 00000010
c
assert Q 00101100
c
assert Q 01010110
c
assert Q 10000000
h LoadB
h LoadB
h LoadR
setvector A 00000001
setvector B 10101110
c
assert Q 10101101
l LoadB
c
assert Q 10101100
c
assert Q 10101011
c
assert Q 10101010
c
assert Q 10101001
h LoadB
h LoadB
h LoadR
setvector A 00101100
setvector B 10101110
c
assert Q 10000010
l LoadB
c
assert Q 01010110
c
assert Q 00101010
c
assert Q 11111110
c
assert Q 11010010
h LoadB
h LoadB
h LoadR
setvector A 01010111
setvector B 10101110
c
assert Q 01010111
l LoadB
c
assert Q 00000000
c
assert Q 10101001
c
assert Q 01010010
c
assert Q 11111011
h LoadB
h LoadB
h LoadR
setvector A 10000000
setvector B 11000101
c
assert Q 01000101
l LoadB
c
assert Q 11000101
c
assert Q 01000101
c
assert Q 11000101
c
assert Q 01000101
h LoadB
h LoadB
h LoadR
setvector A 10101011
setvector B 11000101
c
assert Q 00011010
l LoadB
c
assert Q 01101111
c
assert Q 11000100
c
assert Q 00011001
c
assert Q 01101110
h LoadB
h LoadB
h LoadR
setvector A 11010110
setvector B 11000101
c
assert Q 11101111
l LoadB
c
assert Q 00011001
c
assert Q 01000011
c
assert Q 01101101
c
assert Q 10010111
h LoadB
h LoadB
h LoadR
setvector A 00000001
setvector B 11000101
c
assert Q 11000100
l LoadB
c
assert Q 11000011
c
assert Q 11000010
c
assert Q 11000001
c
assert Q 11000000
h LoadB
h LoadB
h LoadR
setvector A 00101100
setvector B 11000101
c
assert Q 10011001
l LoadB
c
assert Q 01101101
c
assert Q 01000001
c
assert Q 00010101
c
assert Q 11101001
h LoadB
h LoadB
h LoadR
setvector A 01010111
setvector B 11000101
c
assert Q 01101110
l LoadB
c
assert Q 00010111
c
assert Q 11000000
c
assert Q 01101001
c
assert Q 00010010
h LoadB
h LoadB
h LoadR
setvector A 10000000
setvector B 11011100
c
assert Q 01011100
l LoadB
c
assert Q 11011100
c
assert Q 01011100
c
assert Q 11011100
c
assert Q 01011100
h LoadB
h LoadB
h LoadR
setvector A 10101011
setvector B 11011100
c
assert Q 00110001
l LoadB
c
assert Q 10000110
c
assert Q 11011011
c
assert Q 00110000
c
assert Q 10000101
h LoadB
h LoadB
h LoadR
setvector A 11010110
setvector B 11011100
c
assert Q 00000110
l LoadB
c
assert Q 00110000
c
assert Q 01011010
c
assert Q 10000100
c
assert Q 10101110
h LoadB
h LoadB
h LoadR
setvector A 00000001
setvector B 11011100
c
assert Q 11011011
l LoadB
c
assert Q 11011010
c
assert Q 11011001
c
assert Q 11011000
c
assert Q 11010111
h LoadB
h LoadB
h LoadR
setvector A 00101100
setvector B 11011100
c
assert Q 10110000
l LoadB
c
assert Q 10000100
c
assert Q 01011000
c
assert Q 00101100
c
assert Q 00000000
h LoadB
h LoadB
h LoadR
setvector A 01010111
setvector B 11011100
c
assert Q 10000101
l LoadB
c
assert Q 00101110
c
assert Q 11010111
c
assert Q 10000000
c
assert Q 00101001
h LoadB
h LoadB
h LoadR
setvector A 10000000
setvector B 11110011
c
assert Q 01110011
l LoadB
c
assert Q 11110011
c
assert Q 01110011
c
assert Q 11110011
c
assert Q 01110011
h LoadB
h LoadB
h LoadR
setvector A 10101011
setvector B 11110011
c
assert Q 01001000
l LoadB
c
assert Q 10011101
c
assert Q 11110010
c
assert Q 01000111
c
assert Q 10011100
h LoadB
h LoadB
h LoadR
setvector A 11010110
setvector B 11110011
c
assert Q 00011101
l LoadB
c
assert Q 01000111
c
assert Q 01110001
c
assert Q 10011011
c
assert Q 11000101
h LoadB
h LoadB
h LoadR
setvector A 00000001
setvector B 11110011
c
assert Q 11110010
l LoadB
c
assert Q 11110001
c
assert Q 11110000
c
assert Q 11101111
c
assert Q 11101110
h LoadB
h LoadB
h LoadR
setvector A 00101100
setvector B 11110011
c
assert Q 11000111
l LoadB
c
assert Q 10011011
c
assert Q 01101111
c
assert Q 01000011
c
assert Q 00010111
h LoadB
h LoadB
h LoadR
setvector A 01010111
setvector B 11110011
c
assert Q 10011100
l LoadB
c
assert Q 01000101
c
assert Q 11101110
c
assert Q 10010111
c
assert Q 01000000
h LoadB
h LoadB
h LoadR
setvector A 10000000
setvector B 00001010
c
assert Q 10001010
l LoadB
c
assert Q 00001010
c
assert Q 10001010
c
assert Q 00001010
c
assert Q 10001010
h LoadB
h LoadB
h LoadR
setvector A 10101011
setvector B 00001010
c
assert Q 01011111
l LoadB
c
assert Q 10110100
c
assert Q 00001001
c
assert Q 01011110
c
assert Q 10110011
h LoadB
h LoadB
h LoadR
setvector A 11010110
setvector B 00001010
c
assert Q 00110100
l LoadB
c
assert Q 01011110
c
assert Q 10001000
c
assert Q 10110010
c
assert Q 11011100
h LoadB
h LoadB
h LoadR
setvector A 00000001
setvector B 00001010
c
assert Q 00001001
l LoadB
c
assert Q 00001000
c
assert Q 00000111
c
assert Q 00000110
c
assert Q 00000101
h LoadB
h LoadB
h LoadR
setvector A 00101100
setvector B 00001010
c
assert Q 11011110
l LoadB
c
assert Q 10110010
c
assert Q 10000110
c
assert Q 01011010
c
assert Q 00101110
h LoadB
h LoadB
h LoadR
setvector A 01010111
setvector B 00001010
c
assert Q 10110011
l LoadB
c
assert Q 01011100
c
assert Q 00000101
c
assert Q 10101110
c
assert Q 01010111
h LoadB
h LoadB
h LoadR
setvector A 10000000
setvector B 00100001
c
assert Q 10100001
l LoadB
c
assert Q 00100001
c
assert Q 10100001
c
assert Q 00100001
c
assert Q 10100001
h LoadB
h LoadB
h LoadR
setvector A 10101011
setvector B 00100001
c
assert Q 01110110
l LoadB
c
assert Q 11001011
c
assert Q 00100000
c
assert Q 01110101
c
assert Q 11001010
h LoadB
h LoadB
h LoadR
setvector A 11010110
setvector B 00100001
c
assert Q 01001011
l LoadB
c
assert Q 01110101
c
assert Q 10011111
c
assert Q 11001001
c
assert Q 11110011
h LoadB
h LoadB
h LoadR
setvector A 00000001
setvector B 00100001
c
assert Q 00100000
l LoadB
c
assert Q 00011111
c
assert Q 00011110
c
assert Q 00011101
c
assert Q 00011100
h LoadB
h LoadB
h LoadR
setvector A 00101100
setvector B 00100001
c
assert Q 11110101
l LoadB
c
assert Q 11001001
c
assert Q 10011101
c
assert Q 01110001
c
assert Q 01000101
h LoadB
h LoadB
h LoadR
setvector A 01010111
setvector B 00100001
c
assert Q 11001010
l LoadB
c
assert Q 01110011
c
assert Q 00011100
c
assert Q 11000101
c
assert Q 01101110
h LoadB
h LoadB
h LoadR
setvector A 10000000
setvector B 00111000
c
assert Q 10111000
l LoadB
c
assert Q 00111000
c
assert Q 10111000
c
assert Q 00111000
c
assert Q 10111000
h LoadB
h LoadB
h LoadR
setvector A 10101011
setvector B 00111000
c
assert Q 10001101
l LoadB
c
assert Q 11100010
c
assert Q 00110111
c
assert Q 10001100
c
assert Q 11100001
h LoadB
h LoadB
h LoadR
setvector A 11010110
setvector B 00111000
c
assert Q 01100010
l LoadB
c
assert Q 10001100
c
assert Q 10110110
c
assert Q 11100000
c
assert Q 00001010
h LoadB
h LoadB
h LoadR
setvector A 00000001
setvector B 00111000
c
assert Q 00110111
l LoadB
c
assert Q 00110110
c
assert Q 00110101
c
assert Q 00110100
c
assert Q 00110011
h LoadB
h LoadB
h LoadR
setvector A 00101100
setvector B 00111000
c
assert Q 00001100
l LoadB
c
assert Q 11100000
c
assert Q 10110100
c
assert Q 10001000
c
assert Q 01011100
h LoadB
h LoadB
h LoadR
setvector A 01010111
setvector B 00111000
c
assert Q 11100001
l LoadB
c
assert Q 10001010
c
assert Q 00110011
c
assert Q 11011100
c
assert Q 10000101
h LoadB
h LoadB
h LoadR
setvector A 10000000
setvector B 01001111
c
assert Q 11001111
l LoadB
c
assert Q 01001111
c
assert Q 11001111
c
assert Q 01001111
c
assert Q 11001111
h LoadB
h LoadB
h LoadR
setvector A 10101011
setvector B 01001111
c
assert Q 10100100
l LoadB
c
assert Q 11111001
c
assert Q 01001110
c
assert Q 10100011
c
assert Q 11111000
h LoadB
h LoadB
h LoadR
setvector A 11010110
setvector B 01001111
c
assert Q 01111001
l LoadB
c
assert Q 10100011
c
assert Q 11001101
c
assert Q 11110111
c
assert Q 00100001
h LoadB
h LoadB
h LoadR
setvector A 00000001
setvector B 01001111
c
assert Q 01001110
l LoadB
c
assert Q 01001101
c
assert Q 01001100
c
assert Q 01001011
c
assert Q 01001010
h LoadB
h LoadB
h LoadR
setvector A 00101100
setvector B 01001111
c
assert Q 00100011
l LoadB
c
assert Q 11110111
c
assert Q 11001011
c
assert Q 10011111
c
assert Q 01110011
h LoadB
h LoadB
h LoadR
setvector A 01010111
setvector B 01001111
c
assert Q 11111000
l LoadB
c
assert Q 10100001
c
assert Q 01001010
c
assert Q 11110011
c
assert Q 10011100
h LoadB
h LoadB
h LoadR
setvector A 10000000
setvector B 01100110
c
assert Q 11100110
l LoadB
c
assert Q 01100110
c
assert Q 11100110
c
assert Q 01100110
c
assert Q 11100110
h LoadB
h LoadB
h LoadR
setvector A 10101011
setvector B 01100110
c
assert Q 10111011
l LoadB
c
assert Q 00010000
c
assert Q 01100101
c
assert Q 10111010
c
assert Q 00001111
h LoadB
h LoadB
h LoadR
setvector A 11010110
setvector B 01100110
c
assert Q 10010000
l LoadB
c
assert Q 10111010
c
assert Q 11100100
c
assert Q 00001110
c
assert Q 00111000
h LoadB
h LoadB
h LoadR
setvector A 00000001
setvector B 01100110
c
assert Q 01100101
l LoadB
c
assert Q 01100100
c
assert Q 01100011
c
assert Q 01100010
c
assert Q 01100001
h LoadB
h LoadB
h LoadR
setvector A 00101100
setvector B 01100110
c
assert Q 00111010
l LoadB
c
assert Q 00001110
c
assert Q 11100010
c
assert Q 10110110
c
assert Q 10001010
h LoadB
h LoadB
h LoadR
setvector A 01010111
setvector B 01100110
c
assert Q 00001111
l LoadB
c
assert Q 10111000
c
assert Q 01100001
c
assert Q 00001010
c
assert Q 10110011
h LoadB
h LoadB
h LoadR
setvector A 10000000
setvector B 01111101
c
assert Q 11111101
l LoadB
c
assert Q 01111101
c
assert Q 11111101
c
assert Q 01111101
c
assert Q 11111101
h LoadB
h LoadB
h LoadR
setvector A 10101011
setvector B 01111101
c
assert Q 11010010
l LoadB
c
assert Q 00100111
c
assert Q 01111100
c
assert Q 11010001
c
assert Q 00100110
h LoadB
h LoadB
h LoadR
setvector A 11010110
setvector B 01111101
c
assert Q 10100111
l LoadB
c
assert Q 11010001
c
assert Q 11111011
c
assert Q 00100101
c
assert Q 01001111
h LoadB
h LoadB
h LoadR
setvector A 00000001
setvector B 01111101
c
assert Q 01111100
l LoadB
c
assert Q 01111011
c
assert Q 01111010
c
assert Q 01111001
c
assert Q 01111000
h LoadB
h LoadB
h LoadR
setvector A 00101100
setvector B 01111101
c
assert Q 01010001
l LoadB
c
assert Q 00100101
c
assert Q 11111001
c
assert Q 11001101
c
assert Q 10100001
h LoadB
h LoadB
h LoadR
setvector A 01010111
setvector B 01111101
c
assert Q 00100110
l LoadB
c
assert Q 11001111
c
assert Q 01111000
c
assert Q 00100001
c
assert Q 11001010
h LoadB
