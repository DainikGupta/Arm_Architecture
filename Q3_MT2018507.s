	AREA    evenodd,CODE,READONLY
    EXPORT __main
    ENTRY
	
__main    FUNCTION
		MOV R0, #30		;NUMBER
		AND R1, R0, #1	;AND WITH #1 WILL GIVE ONLY THE UNIT DIGIT OF THE NUMBER
		CMP R1, #0		;CHECK IF R1 IS 1 OR 0
		BEQ LOOP1		;IF 0 BRANCH TO LOOP1
		BNE LOOP2		;IF 1 BRANCH TO LOOP2

LOOP1 	MOV R2, #1		;R2 WHEN SET WILL REPRESENT EVEN NUMBER
		B STOP
		
LOOP2 	MOV R3, #1		;R3 WHEN SET WILL REPRESENT ODD NUMBER
		B STOP
		
STOP    B STOP			;LOOP TO STOP THE  EXECUTE
		ENDFUNC
		END

;This code tells whether the given number is either even or odd.
;I have AND the number with 1, This will give the unit digit of the number
;The unit digit is then compared with 0.
;If this is equal the number is even, register R2 will be set.
;If the result is not equal, the number is odd and register R3 is set.
