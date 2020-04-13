;24. Clear the CL register using XOR op-code

.model small
.stack 100h
.data
.code

main proc
     
     
    mov cl,19h
    xor cl,cl
    
     
      
endp main
end main