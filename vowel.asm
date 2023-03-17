.model small
.stack 100h
.data
  msg db 'Enter the character $'
  msg1 db 0dh,02h,'Character is vowel $'
  msg2 db 0dh,02h,'Character is consonant'
.code
    ;Display Message 
    mov ah,09h
    lea dx,msg
    int 21h
    
    ;input character
    
    mov ah,01h
    int 21h
    
    cmp al,'a'
    je vowel
    cmp al,'e'
    je vowel
    cmp al,'i'
    je vowel
    cmp al,'o'
    je vowel
    cmp al,'u'
    je vowel
    
    mov ah,09h
    lea dx,msg2
    int 21h
    
    jmp exit
    
    vowel:
    mov ah,09h
    lea dx,msg1
    int 21h 
    exit:
    mov ah,4ch
    int 21h
     main endp
    end main    