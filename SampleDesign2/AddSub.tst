// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/02/Add16.tst

load Add16.hdl,
output-file AddSub.out,
compare-to AddSub.cmp,
output-list a%B1.16.1 b%B1.16.1 out%B1.16.1;

set a %B0000000000000000,
set b %B0000000000000000,
set contr %B1,
eval,
output;

set a %B0000000000000000,
set b %B1111111111111111,
set contr %B0,
eval,
output;

set a %B1111111111111111,
set b %B1111111111111111,
set contr %B1,
eval,
output;

set a %B1010101010101010,
set b %B0101010101010101,
set contr %B0,
eval,
output;

set a %B0011110011000011,
set b %B0000111111110000,
set contr %B1,
eval,
output;

set a %B0001001000110100,
set b %B1001100001110110,
set contr %B0,
eval,
output;
