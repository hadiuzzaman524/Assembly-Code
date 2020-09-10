.MODEL SMALL
.STACK 100H
.DATA
.CODE
MAIN PROC  
    
    CALL INPUUT
 
   EXIT: 
   MOV AH,4CH
   INT 21H
   MAIN ENDP  
    
   INPUUT PROC
   
     INPUT:
    MOV AH,1
    INT 21H 
    
    REPEAT2:
    CMP AL,'0'
    JL NOT_DIGIT
    CMP AL,'9'
    JG NOT_DIGIT
    
    AND AX,000FH
    
    PUSH AX
    MOV AX,10
    MUL BX
    POP BX
    ADD BX,AX
    
    MOV AH,1
    INT 21H
    CMP AL,0DH
    JNE REPEAT2
    
    MOV AX,BX 
    
   PUSH AX 
    
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV AH,2
    MOV DL,0AH
    INT 21H 
    
    POP AX
    CALL OUTPUT
    
    NOT_DIGIT:
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV AH,2
    MOV DL,0AH
    INT 21H
    JMP INPUT
    
    RET
    INPUUT ENDP 
   
   OUTPUT PROC
    
     XOR CX,CX
    MOV BX,10D
    
    REPEAT1:
    XOR DX,DX
    DIV BX
    PUSH DX
    INC CX
    
    OR AX,AX
    JNE REPEAT1
    
    MOV AH,2
    PRINT_LOOP:
    POP  DX
    OR DL,30H
    INT 21H
    LOOP PRINT_LOOP 
    
    RET 
    OUTPUT ENDP
    


END MAIN
    