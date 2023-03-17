.model small
.stack 100h
.data

MSG DB 'ELEMENT IS FOUND AT INDEX $'
MSG1 DB 'ELEMENT IS NOT FOUND $'
NUM DB 9
ARR DB 7,5,6,9,6,0,15,10

.CODE 
      MAIN PROC FAR
        MOV AX, @DATA
        MOV DS,AX
        
        MOV SI,0
        MOV CX,8
        MOV BL,NUM
        
        LAB1: 
                CMP BL,ARR[SI]
                JE FOUND
                INC SI
                LOOP LAB1
                
                LEA DX, MSG1
                MOV AH,09H
                INT 21H
                JMP EXIT
                
        FOUND:
                LEA DX, MSG
                MOV AH,09H
                INT 21H
                
                MOV DX,SI
                MOV AH,02H
                INT 21H
   EXIT:
    
    main endp
  end main
