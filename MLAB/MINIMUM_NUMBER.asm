.MODEL SMALL 
.STACK 100H
.DATA 
.CODE 

MAIN PROC 
   
   MOV BL,41H  
   
     INPUT: 
  MOV AH,1
  INT 21H 

  CMP AL,13 
  JE TOP 
 
 CMP BL,AL
 JGE GRATER
  JMP INPUT
  
  
GRATER: 
MOV BL,AL 
JMP INPUT
   
   TOP:   
   MOV AH,2
   MOV DL ,0DH
   INT 21H
   MOV DL,0AH
   INT 21H 
   
  MOV AH,2 
  MOV DL,BL 
  INT 21H
  JMP END
  

END:
MOV AH,4CH 
INT 21H 
MAIN ENDP 
END MAIN 