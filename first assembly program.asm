.model small
.stack 100h
.data
    msg db 'My first assembly language program'
    
.code
  main proc       
        mov ax,@data
        mov ds,ax
        ;display string 
        mov ah,09h
        mov dx,offset msg
        int 21h         
        ;terminate the program
        mov ah,4ch
        int 21h
    
    
    main endp
    end main
        
   