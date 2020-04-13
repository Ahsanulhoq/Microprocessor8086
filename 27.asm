;27, Exchange the nibbles of AL register 
;without using XCHG op-code.


.model small
.stack 100h
.data
.code

main proc
     
     
    mov al,19h
    ror al,4   ; rotating lower nibble to higher
    
    hlt
    
     
      
endp main
end main