.model small
.stack 100h
.data
msg1 db 'the quo num is$ :'
msg2 db 'The rem num is$ :' 
.code
  main proc
    mov ax,@data
    mov ds,ax
    
    mov dx,offset msg1
    mov ah,9
    int 21h
    
    mov ax,26
    mov bl,5
   
    div bl
   
   mov msg1,al
   mov msg2,ah
   
   mov dl,msg1
   add dl,48 
   
   mov ah,2
   int 21h 
   mov dx,13
   mov ah,2
   int 21h
   
   mov dx,10
   mov ah,2
   int 21h
   mov dx,offset msg2
   mov ah,9
   int 21h 
   
   mov dl,msg2
   add dl,48
   
   mov ah,2
   int 21h
   
   mov ah,4ch
   int 21h
   
   main endp
   end main
   
   