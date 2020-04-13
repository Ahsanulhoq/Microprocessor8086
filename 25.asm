;25. Clear the even indexed bits of AL register.

.model small
.stack 100h
.data
.code

main proc
     
     
    mov al,19h
    and al,10101010b; let index starts from 1 to 8
    
    
    
    hlt
    
     
      
endp main
end main