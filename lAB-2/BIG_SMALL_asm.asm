.MODEL SAMALL 
.STACK 100H
.DATA
.CODE
MAIN PROC
    
  
MOV CL,'2'
MOV BL,'1'

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