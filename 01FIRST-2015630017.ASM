; ===== WORK OUT 2 PLUS 2 ======================================
	CLO		; Close unwanted windows.
	MOV AL,2	; Copy a 2 into the AL register.
	MOV BL,2	; Copy a 2 into the BL register.
	MOV CL,2	; Copy a 2 into the CL register.
	MOV DL,0	; Copy a 0 into the DL register.
	ADD AL,BL	; Add AL to BL. Answer goes into AL.
	SUB AL,BL	; Subtract AL to BL. Answer goes into AL.
	DIV AL,BL	; Divide AL to BL. Answer goes into AL.
	MUL AL,BL	; Multiply AL to BL. Answer goes into AL.
	DIV CL,DL	; Divide CL to DL. Answer goes into CL.
	END		; Program ends
; ===== Program Ends ===========================================

	YOUR TASK
	=========
	Use SUB, DIV and MUL to subtract, divide and multiply.
	What happens if you divide by zero?
	Make use of CL and DL as well as AL and BL.
