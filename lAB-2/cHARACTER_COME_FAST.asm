.MODEL SAMALL 
.STACK 100H
.DATA
.CODE
MAIN PROC
    
MOV AH,1
MOV CL,AL
INT 21H

MOV AH,1
MOV BL,AL
INT 21H

MOV AH,2
MOV DL,0DH
INT 21H
MOV DL ,0AH
INT 21H

CMP CL,BL
JG NEXT
JL NEXT2


NEXT:  

MOV AH,2
MOV DL,CL
INT 21H 
JMP FINISH
  
NEXT2:
MOV AH,2
MOV DL,BL
INT 21H

FINISH:    
MOV AH,4CH
INT 21H
MAIN ENDP 
END MAIN