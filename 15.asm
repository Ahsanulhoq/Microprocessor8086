;15 Divide the number stored in AX register by 2, 4, 8, and 16.

.model small
.stack 100h
.data
.code

main proc
     
     
    mov ax,2048
     
    mov bx,2 
    div bx
    
    mov bx,4 
    div bx
    
    mov bx,8 
    div bx
    
    mov bx,16 
    div bx
    
    hlt
     
      
endp main
end main