.MODEL SMALL 
.STACK 100H 
.DATA 
ARRAY DW 1,3,2,1,2
.CODE 
MAIN PROC 
           
          
          MOV AX,@DATA 
          MOV DS,AX
          
          LEA SI,ARRAY 
          MOV CX,5
          
          PRINT:     
          
          MOV AH,2   
          MOV BL,[SI]   
          ADD BL,30H
          MOV DL,BL
          INT 21H 
          ADD SI,2
          LOOP PRINT  
          
          
MOV AH,4CH 
INT 21H 
MAIN ENDP 
END MAIN 