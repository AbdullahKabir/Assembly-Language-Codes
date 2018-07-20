.modeL small
.stack 100h
.data
    A db 042
.code

MAIN PROC
       
       MOV AX, @DATA
       MOV DS,AX
       
       

       
       MOV AH,2
       MOV DL, 010
       INT 21H
       MOV DL, 13
       INT 21H
       
       mov ah , 2
       mov dl, A
       int 21h
       
       
EXIT:
MOV AH,4CH
INT 21H
MAIN ENDP
END MAIN

ret




