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
          
          TOP: 
          CMP MSG[SI],' '
          JE NEXT 
          AND MSG[SI],0DFH
          
          NEXT: 
          INC SI
          LOOP TOP
          
          
          MOV AH,9
          LEA DX,MSG
          INT 21H
          
          
MOV AH,4CH 
INT 21H 
MAIN ENDP 
END MAIN 