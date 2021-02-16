;--------------------------
; src/x64/count.asm
; Counts to 10

%include 'io.asm'

section	 .text
global	 _start

_start:
	xor		ecx, ecx

.nextnum:
	inc 	ecx
	mov 	edi, ecx
	push	rcx
	call 	iprintln
	pop 	rcx
	
	cmp		ecx, 10 	; Count up to 10
	jl		.nextnum

.finish:
	xor 	edi, edi
	call 	exit
