.model small
.stack 100h
.data
msg1 db 'Hello'

.code
main proc   
    mov ax,@data
    mov ds,ax
    mov si,offset msg1
    mov cx,5
    again:    
    mov bx,[si]
    push bx
    inc si
    loop again
    
    mov cx,5
    disp:    
    pop dx
    mov ah,2
    int 21h
    loop disp  
    mov ah,4ch
    int 21h
    
   main endp
end main