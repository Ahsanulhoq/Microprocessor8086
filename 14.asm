
;14. Multiply the number stored in AL register by 2, 4, 8, and 16.

.model small
.stack 100h
.data
.code

main proc
     
     
    mov al,2
     
    mov bl,2 
    mul bl
    
    mov bl,4 
    mul bl
    
    mov bl,8 
    mul bl
    
    mov bl,16 
    mul bl
    
     
      
endp main
end main