;21. Change the bits of the AL register those are 
;evenly indexed (0-6). given that indexing start from 0.



.model small
.stack 100h
.data
.code

main proc
     
     
    mov al,0FFh
    mov cl,10101010b
    xor al,cl 
    hlt
    
     
      
endp main
end main