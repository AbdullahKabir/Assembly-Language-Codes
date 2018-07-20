.MODEL SMALL
.STACK 100H
.DATA
 MSG1 DB 'GIVE INPUT1 $'
 MSG2 DB 'GIVE INPUT2 $'
 MSG3 DB 'GIVE INPUT3 $'
 
 MSG DB '  OUTPUT $'


.CODE
MAIN PROC  
    MOV AX,@DATA
    MOV DS,AX 
    
    LEA DX,MSG1
    MOV AH,9
    INT 21H
    MOV AH,2 
    MOV DL,09
    INT 21H 
    
    MOV AH,1
    INT 21H
    MOV BL,AL
    
    MOV AH,2
    MOV DL,010
    INT 21H
    MOV AH,2
    MOV DL,013
    INT 21H
    
    ;INPUT 2
    LEA DX,MSG2
    MOV AH,9
    INT 21H

    MOV AH,2 
    MOV DL,09
    INT 21H
    
    
    MOV AH,1
    INT 21H
    MOV CL,AL
    
    MOV AH,2
    MOV DL,010
    INT 21H
    MOV AH,2
    MOV DL,013
    INT 21H 
    
     ;INPUT 3
    
    LEA DX,MSG3
    MOV AH,9
    INT 21H

    MOV AH,2 
    MOV DL,09
    INT 21H
    
    MOV AH,1
    INT 21H
    MOV CH,AL
    
    MOV AH,2
    MOV DL,010
    INT 21H
    MOV AH,2
    MOV DL,013
    INT 21H 
    
    
    
    LEA DX,MSG
    MOV AH,9
    INT 21H
    MOV AH,2 
    MOV DL,09
    INT 21H
    
    
    MOV AH,2
    MOV DL,010
    INT 21H
    MOV AH,2
    MOV DL,013
    INT 21H 
    
    ;;;;
    
    
    
 
    
    
    MOV AH,2
    MOV DL,010
    INT 21H
    MOV AH,2
    MOV DL,013
    INT 21H
      
  
    
    
   
    
    MOV AH,2
    ADD BL,17
    MOV DL,BL
    INT 21H 
    MOV AH,2
    MOV DL,010
    INT 21H
    MOV AH,2
    MOV DL,013
    INT 21H
    
     
    MOV AH,2
    ADD CL,17
    MOV DL,CL
    INT 21H
    MOV AH,2
    MOV DL,010
    INT 21H
    MOV AH,2
    MOV DL,013
    INT 21H
    
    
     
    MOV AH,2
    ADD CH,17
    MOV DL,CH
    INT 21H
    MOV AH,2
    MOV DL,010
    INT 21H
    MOV AH,2
    MOV DL,013
    INT 21H
    
    
    
     
   



    
   
    
    
 EXIT:

MOV AH,4CH
INT 21H
MAIN ENDP
END MAIN
RET








