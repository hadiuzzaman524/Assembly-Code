.MODEL SMALL 
.STACK 100H
.DATA   
msg db 'hello$'
.CODE 
MAIN PROC 
    
      
      
    mov ax ,@data
    mov ds,ax
    
    led dx,msg
    mov ah,9
    int 21h
       
       
       
MOV AH,4CH 
INT 21H
MAIN ENDP
END MAIN