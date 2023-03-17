.model small
.stack 100h
.data
    msg db 'Enter the Letter in Lower Case $'
    msg1 db  'Enter the Letter in Upper Case : $' 
    temp db ?
    .code
      main proc
        mov ax,@data
        mov ds,ax
        ;Display the Message
        mov ah,09h 
        mov dx,offset msg
        int 21h
        ;Input chracter
        mov ah,01h
        int 21h
        mov temp,al
         ;Display the message
         mov ah,09h 
         mov dx,offset msg1
         int 21h
         sub temp,32
         ;Display a character
         mov ah,02h
         mov dl,temp
         int 12h
         ;terminate 
         mov ah,4ch
         int 21h
         main endp
      end main
         