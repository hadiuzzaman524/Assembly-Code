.MODEL SMALL 
.STACK 100H 
.DATA 
MSG DB 'assembly lab test $'

.CODE 
MAIN PROC 
           
          
           MOV AX,@DATA 
           MOV DS,AX
          
           MOV CX,17
           XOR SI,SI  
           
           AND MSG[SI],0DFH 
           INC SI
           
          TOP: 
          CMP MSG[SI],' '
          JE NEXT  
          INC SI
          LOOP TOP 
         
          
          NEXT: 
          INC SI
          AND MSG[SI],0DFH 
         
          LOOP TOP
          
          
          MOV AH,9
          LEA DX,MSG
          INT 21H
          
          
MOV AH,4CH 
INT 21H 
MAIN ENDP 
END MAIN 