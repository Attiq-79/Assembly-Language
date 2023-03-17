.model small
.stack 100h
.data
  msg1 db 'Number is equal$'
  msg2 db 'Number is not equal$'
.code
   main proc
   mov ax,@data
   mov ds,ax
   
   mov dl,'5'
   mov ah,1
   int 21h
   cmp dl,al
   
   je l1
   mov dx,offset msg2
   mov ah,09h
   int 21h 
   jmp exit
   
   l1:
   mov dx,offset msg1
   mov ah,09h
   int 21h
   
   jmp exit
   
   exit:
   mov ah,4ch
   int 21h
    
    main endp
   end main