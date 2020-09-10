.MODEL SMALL 
.STACK 100H
.DATA 
.CODE 
MAIN PROC 
    
    MOV AH,1 
    INT 21H 
    MOV BL,AL 
    CALL PRINT
    

    
MOV AH,4CH 
INT 21H 
MAIN ENDP 
      
      PRINT PROC  
        
        
        MOV AH,2 
        MOV DL,AL 
        INT 21H 
      RET  
      PRINT ENDP 
      END MAIN 
     