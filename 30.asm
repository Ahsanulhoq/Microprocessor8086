;30. Add two bytes, if the result contains 
;even number of l's then store the result 
;in DL register, otherwise store it in DH register 


.model small
.stack 100h
.data
.code

main proc
     
     
    mov al,4h
    mov bl,3h
    add al,bl
    
    
    jp even
    mov dh,al; odd parity
    hlt
    
    even:
    mov dl,al; even parity
    hlt
     
      
endp main
end main