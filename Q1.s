    AREA    |.text|,CODE,READONLY
    EXPORT __main
    ENTRY
__main    FUNCTION
		MOV R0, #0
		MOV R1, #1
		MOV R2, #10	;COUNT
		MOV R3, #0
		MOV R4, #0x20000000
				
loop1	CMP R2, #0	;
		BNE LOOP2
		BEQ stop
		
LOOP2	SUB R2, R2, #1
		ADD R3, R0, R1
		MOV R0, R1
		MOV R1, R3
		B loop1
	
stop    B stop
		ENDFUNC
		END
