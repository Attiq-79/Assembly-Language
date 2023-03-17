;Lood String byte
;Mov string byte
;Scan string byte
; To check particular chaRACTER 
;byte -al
;word - ax
;double word - eax
;The character must be al and offset address of that segment(string) should be
;in DI

;SCANSB/W/D

;1- AL
;2- ES:Di   

;Rep cx>0
;Rep 1- cx>0
;    2- ZF=1
;Repxe 1-cx>0
;      2-ZF=1          

.model small
.stack 100h
.data
   str db 'Science collage $' 
   msg db 'Character is found $' 
   msg1 db 'Not found $'
   len dw '$-str'
.code
  main proc    
    mov ax,@data
    mov ds,ax
    mov Es,ax
    mov di,offset str
    cld 
    mov al,'g'
    mov cx,len
    repne scasb
    jnz notfound
    lea dx,msg
    mov ah,09h
    int 21h
    notfound:
    mov dx,offset msg1
    mov ah,09h
    int 21h
    
    mov ah,4ch
    int 21h
    main endp 
  end main
    