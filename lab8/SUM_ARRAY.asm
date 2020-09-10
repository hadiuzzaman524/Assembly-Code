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
          
          
          MOV BX,'0'
          
          ADDNUM: 
          ADD BX,[SI]
          ADD SI,2
          LOOP ADDNUM
          
          
          MOV AH,2
          MOV DX,BX
          INT 21H
          
          
MOV AH,4CH 
INT 21H 
MAIN ENDP 
END MAIN 