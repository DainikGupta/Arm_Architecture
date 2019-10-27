	AREA    nestedif,CODE,READONLY
    EXPORT __main
    ENTRY
	
__main    FUNCTION
		MOV R0, #10		;NUMBER
		MOV R1, #20
		CMP R0, #20
		ITTE EQ
		MOVEQ R4, #1
		BEQ LOOP1
		BNE STOP		
		B STOP		

LOOP1	CMP R1, #30
		ITE EQ
		MOVEQ R2, #1
		MOVNE R3, #1
		
STOP    B STOP			;LOOP TO STOP THE EXECUTION
		ENDFUNC
		END
			
;THIS CODE CAN WORK AS NESTED ITE 
;BUT THE NESTED LOOP CANNOT BE ADDED TO THE IF-THEN STATEMENT 
;BECAUSE THE BRANCH STATEMENT IS ALLOWED ONLY AT THE END OF ITE.

;THE NESTED LOOP IS NOT POSSIBLE IN ARM.
;BECAUSE THE CONITIONS REQUIRED SHOULD BE MUTUALLY EXCLUSIVE.
;ALSO, THE BRANCH INSTRUCTION COULD ONLY BE USED IN THE LAST STATEMENT.

;WHEN THE ABOVE CODE IS BUILD, THEN A ERROR IS SHOWN
;Q4.s(11): error: A1603E: This instruction inside IT block has UNPREDICTABLE results
