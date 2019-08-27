// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/02/Add16.tst

load Add32.hdl,
output-file Add32.out,
compare-to Add32.cmp,
output-list a%B1.16.1 b%B1.16.1 out%B1.16.1;

set a1 %B0000000000000000,
set b1 %B0000000000000000,
set a2 %B0000000000000011,
set b2 %B0000000000000110,
eval,
output;

set a1 %B0000000000000000,
set b1 %B1111111111111111,
set a2 %B0000000000000001,
set b2 %B0000000000000001,
eval,
output;

set a1 %B1111111111111111,
set b1 %B1111111111111111,
set a2 %B1111111111111100,
set b2 %B0000000000000011,
eval,
output;

set a1 %B1010101010101010,
set b1 %B0101010101010101,
set a2 %B1010101010101011,
set b2 %B0101010101010111,
eval,
output;

set a1 %B0011110011000011,
set b1 %B0000111111110000,
set a2 %B0011110011000011,
set b2 %B0000111111110001,
eval,
output;

set a1 %B0001001000110100,
set b1 %B1001100001110110,
set a2 %B0001001000110101,
set b2 %B1001100001110110,
eval,
output;
