;20. Change the sign bit of the data stored in BL register.


.model small
.stack 100h
.data
.code

main proc
     
     
    mov bl,16d
    mov cl,128d
    xor bl,cl 
    hlt
    
     
      
endp main
end main