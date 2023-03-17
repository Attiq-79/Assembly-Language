.MODEL SMALL
.STACK
.DATA
     MSG DB 10,13, 'ENTER A NUMBER:$'
     MSG1 DB 10,13, 'NUMBER IS EVEN $'    
     MSG2 DB 10,13, 'NUMBER IS ODD $'
     
.CODE
  MAIN PROC
         MOV AX,@DATA
         MOV DS,AX
         
         LEA DX,MSG
         MOV AH,9
         INT 21H 
         
         MOV AH,1
         INT 21H
         
         MOV BL,2
         DIV BL
         CMP AH,0
         
         JE EVEN 
         LEA dx,msg2 
         mov ah,9
         int 21h
         
         mov ah,4ch
         int 21h
         
         EVEN:
         LEA DX,MSG1
         MOV AH,9
         INT 21H
          
    MAIN ENDP
  END MAIN