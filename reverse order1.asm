;write a program in reverse order
.model small
.stack 100h
.data
     msg db 'Mehar Attiq'
.code
   main proc
    mov ax,@data
    mov ds,ax
    mov si,offset msg
    
    mov cx,10
    loop1:
    
    mov bx,[si]
    push bx
    inc si
    loop loop1
    mov cx,10
    
    loop2:
    pop dx
    mov ah,02h
    loop loop2
    
    main endp
   end main