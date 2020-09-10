.MODEL SMALL 
.STACK 100H
.DATA  

MSG DB 'ENTER A LETTER: $'  
MSG2 DB 'OUTPUT: $'
.CODE 
MAIN PROC 
    
    MOV AX,@DATA
    MOV DS,AX    
    
    MOV AH,9
    LEA DX,MSG
    INT 21H
  
  MOV AH,1
  INT 21H
  MOV BL,AL   
            
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
            
    
    MOV AH,9
    LEA DX,MSG2
    INT 21H   
    
    SUB BL,11H
    
    MOV AH,2
    MOV DL,BL 
    INT 21H
    
    
MOV AH,4CH
INT 21H
MAIN ENDP
END MAIN 