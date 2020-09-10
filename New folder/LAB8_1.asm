.MODEL SMALL 
.STACK 100H
.DATA 
.CODE 
MAIN PROC 
    
    MOV CX,0
    MOV AH,1
    INT 21H 
    
    TOP: 
    CMP AL,0DH 
    JE END_TOP
    PUSH AX 
    INC CX 
    INT 21H 
    JMP TOP
    
    END_TOP:
    MOV AH,2 
    MOV DL,0DH
    INT 21H
    MOV DL,0AH 
    INT 21H 
    
    JCXZ EXIT  
    
    PRINT: 
    POP DX 
    INT 21H 
    LOOP PRINT 
    
EXIT: 
    
MOV AH,4CH 
INT 21H 
MAIN ENDP 
END MAIN 