 include 'emu8086.inc'
.model small
.stack 100h
.data 
     arr db 2,5,4,7,8  
     
.code
   main proc
      mov ax,@data        
      mov ds,ax
      
      mov si,offset arr
      mov cx,5
      mov bl,[si]
      
      loopA:
      cmp [si],bl  
      jle small
      
      compare:
      inc si
      loop loopA 
      
      
      
      print "Smallest value of Array is:"
        add bl,48  
        mov dl,bl
      mov ah,2
      int 21h
        
      small:
      mov bl,[si]
      jmp compare
        
      
       
   main endp
    end main