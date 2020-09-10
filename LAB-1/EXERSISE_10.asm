.MODEL SMALL 
.STACK 100H
.DATA  

MSG DB 'ENTER A HEX DIGIT:  $'  
MSG2 DB 'IN DECIMAL IT IS $'
MSG3 DB ' IS $'
.CODE 
MAIN PROC 
    
    MOV AX,@DATA
    MOV DS,AX    
      
      
     LEA DX,MSG 
     MOV AH,9
    
     INT 21H
   
  
  MOV AH,1
  INT 21H
  MOV BL,AL 
  
  MOV AH,2
  MOV DL,0DH
  INT 21H 
  MOV DL,0AH
  INT 21H 
  
    
     LEA DX,MSG2
     MOV AH,9
    
     INT 21H 
     
     
    MOV AH,2
   MOV DL,'1'
   INT 21H
   
   
   SUB BL,11H
   MOV AH,2
   MOV DL,BL
   INT 21H
    
MOV AH,4CH
INT 21H
MAIN ENDP
END MAIN 