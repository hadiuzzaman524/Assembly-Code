.MODEL SAMALL 
.STACK 100H
.DATA  
MSG DB '0 $'
MSG2 DB 'E $'
.CODE
MAIN PROC 
    
MOV AX,@DATA
MOV DS,AX
   

MOV BL,'*' 
MOV CL,80

TOP:  
 
 CMP CL,0
 JE FINISH
 
 MOV AH,2
 MOV DL,BL
 INT 21H 

SUB CL,1
 LOOP TOP

 

FINISH:    
MOV AH,4CH
INT 21H
MAIN ENDP 
END MAIN