;26. Set the odd indexed bits of CL register.

.model small
.stack 100h
.data
.code

main proc
     
     
    mov cl,19h
    or cl,10101010b; let index starts from 1 to 8
    
    
    
    hlt
    
     
      
endp main
end main