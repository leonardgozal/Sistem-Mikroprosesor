; --------------------------------------------------------------
;  Input key presses from the keyboard until Enter is pressed.
; --------------------------------------------------------------
	CLO		; Close unwanted windows.
	MOV	BL,C0	; POINT TO [C0]
	MOV	CL,0	; CL = 0
	MOV	DL,0	; DL = 0
Rep:
	IN	00	; Wait for key press - Store it in AL.
	PUSH	AL	; PUSH AL TO STACK
	INC	BL	; INCREMENT BL
	INC	CL	; INCREMENT CL
	CMP	AL,0D	; Was it the Enter key? (ASCII 0D)
	JNZ	Rep	; No - jump back.  Yes - end.
	MOV	BL,C0	; BL POINT TO C0
	DEC	CL	; CL-1
	POPF		; RESTORE STACK POINTER
Loop:
	POP	AL	; RESTORE AL
	MOV	[BL],AL	; COPY AL TO VDU BL IS POINTING TO
	INC	BL	; INCREMENT BL
	INC	DL	; INCREMENT DL
	CMP	CL,DL	; COMPARE DL = CL ?
	JNZ	Loop	; NO-JUMP YES-END
END
; --------------------------------------------------------------
TASK

11)	Easy!  Display each character at the top left position of the 
	VDU by copying them all to address [C0].

12)	Harder  Use BL to point to address [C0] and increment BL after 
	each key press in order to see the text as you type it.

13)	Harder!  Store all the text you type in RAM when you type it in.  
	When you press Enter, display the stored text on the VDU display.

14)	Difficult  Type in text and store it.  When Enter is pressed, 
	display it on the VDU screen in reverse order.  Using the stack 
	makes this task easier.

