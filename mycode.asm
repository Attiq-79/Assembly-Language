.model small
.stack 100h
.data
   msg db 'Enter the letter in lower case $'
   msg1 db 0dh,0ah, 'Enter the letter in upper case'
   temp db ?
.code
  main proc
    mov ax,@data
    mov ds,ax
    
    ;Display Message
    mov ah,09h
    mov ax,offset msg
    int 21h
    
    ;input charater
    mov ah,01h
    int 21h
    mov temp,al 
    
    ;Display message
    mov ah,09h
    mov ax,offset msg1
    int 21h
    sub temp,32
    
    ;Display character
    mov ah,02h 
    mov dl,temp
    int 21h     
    
    ;Terminate
    mov ah,4ch
    int 21h
    
    main endp
     end main
      