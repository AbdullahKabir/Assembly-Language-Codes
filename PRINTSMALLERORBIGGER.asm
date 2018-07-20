.MODEL SMALL  
.STACK 100H
.DATA
    ;A DB ?
   ;B DB ?
 
    MSG1 DB "GIVE INPUT 1$"
    MSG2 DB "GIVE INPUT 2$"
    MSG3 DB "IS SMALLER THEN$"
    MSG4 DB "IS BIGGER THEN$"      
.CODE
MAIN PROC 
       MOV AX,@DATA
       MOV DS,AX
       ;ADD B,30H
       LEA DX,MSG1       
       MOV AH,9
       INT 21H
       
       
       
       MOV AH,1
       INT 21H
       MOV CL,AL
                 
                 
       MOV AH,2
        INT 21H
        MOV DL, 010 ;Print new line
        INT 21H 
              
        MOV DL, 013 ;Clear the blank space
        INT 21H          
       LEA DX,MSG2         
       MOV AH,9
       INT 21H
       
       
       MOV AH,1
       INT 21H
       MOV BL,AL
       
       CMP CL,BL
       JL L1
       
        MOV AH,2
        INT 21H
        MOV DL, 010 ;Print new line
        INT 21H 
              
        MOV DL, 013 ;Clear the blank space
        INT 21H
   
        MOV DL , CL
        INT 21H 
        
        LEA DX,MSG4         
       MOV AH,9
       INT 21H
       
       
       MOV AH,2
       INT 21H
       MOV DL , BL
        INT 21H
        JMP L3 
       
       
       L1:
       MOV AH,2
       INT 21H
        MOV DL, 010 ;Print new line
        INT 21H 
              
        MOV DL, 013 ;Clear the blank space
        INT 21H
   
        MOV DL , CL
        INT 21H
        
        LEA DX,MSG3         
       MOV AH,9
       INT 21H
       
       MOV AH,2
       INT 21H
       MOV DL , BL
        INT 21H 
       
  L3:
  
  EXIT:
   MOV AH , 4CH
   INT 21H
   MAIN ENDP
   END MAIN



