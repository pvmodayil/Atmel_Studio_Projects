;
; ALP_Sorting.asm
;
; Created: 23-03-2020 11:50:05
; Author : pvmod
;


; Replace with your application code
.cseg
.org 0x00

ldi r19,$09	;outer loop counter
outloop:
ldi r26,00	;loading pointer x with the value 0100
ldi r27,01
ldi r18,$09	;loading counter value 9 for inner loop
inloop:
ld r16,x+	;loading the value pointed by x first to r16 and then increment x
ld r17,x	;loading the value pointed by x to r17
cp r16,r17 ;comparing between first and second elements
brlt swp	;go to swap operation if less than
back:
dec r18		;decrementing inner loop counter
brne inloop ;branch if not equal to zero to inloop i.e, continuing with our inner loop
dec r19		;decrementing outer loop counter
brne outloop
end:
mp end

swp:
st x,r16	;swap
st -x,r17
inc r26
rjmp back