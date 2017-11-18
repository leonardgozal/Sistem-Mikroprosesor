; ===== FIBONACI===================================

	MOV	AL,0	; COPY 0 TO AL
	MOV	BL,1	; COPY 1 TO BL
	MOV	CL,0	; COPY 0 TO CL
	INC	CL	; ADD 1 TO CL

Rep:			; Jump back to this label
	ADD	AL,BL	; ADD BL TO AL, SAVED TO AL
	MOV 	[C0],AL	; AL TO [C0]
	MOV	CL,[C0]	; [CO] TO CL
	ADD	BL,AL	; ADD AL TO BL, SAVED TO BL
	MOV 	[C1],BL	; BL TO [C1]
	MOV	CL,[C1]	; [C1] TO CL
	JMP	Rep	; Jump back to Rep

	END		; Program Ends

; ===== Program Ends ===============================


	TASK
	=====
	
	Rewrite the program to count backwards using DEC BL.
	
	Rewrite the program to count in threes using ADD BL,3.
	
	Rewrite the program to count 1 2 4 8 16 using MUL BL,2
	
	Here is a more difficult task.  
	Count 0 1 1 2 3 5 8 13 21 34 55 98 overflow.  
	Here each number is the sum of the previous two.  
	You will need to use registers or RAM locations 
	for temporary storage of the numbers.  
	If you have never programmed before, this is a real brain teaser. 
	Remember that the result will overflow when it goes above 127.
	
	This number sequence was first described by 
	Leonardo Fibonacci of Pisa (1170_1230)
