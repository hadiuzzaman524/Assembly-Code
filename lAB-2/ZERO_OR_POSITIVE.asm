.MODEL SAMALL 
.STACK 100H
.DATA  
MSG DB 'ZERO $'
MSG2 DB 'POSITIVE $'
.CODE
MAIN PROC 
    
MOV AX,@DATA
MOV DS,AX
   
MOV AH,1
INT 21H 
MOV BL,AL

MOV AH,2
MOV DL,0DH
INT 21H
MOV DL ,0AH
INT 21H

CMP BL,'0'  

JE NEXT 

JG NEXT2


NEXT:  

MOV AH,9
LEA DX,MSG
INT 21H
JMP FINISH
  
NEXT2:
MOV AH,9
LEA DX,MSG2
INT 21H
   
   
   
 

FINISH:    
MOV AH,4CH
INT 21H
MAIN ENDP 
END MAIN