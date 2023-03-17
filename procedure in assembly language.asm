.model small
.stack 100h
.data
msg1 db 'Hello$'
msg2 db 'Pakistan$'
msg3 db 'Attiq ur rehman$'
.code
main proc
mov ax,@data
mov ds,ax

mov dx,offset msg1
mov ah,9
int 21h
call enterkey
mov dx,offset msg2
mov ah,9
int 21h
call enterkey
mov dx,offset msg3
mov ah,9
int 21h
  main endp
 
  
  enterkey proc
     mov dx,10
     mov ah,2
     int 21h
     
     mov dx,13
     mov ah,2
     int 21h 
     ret
  enterkey endp 
  end main