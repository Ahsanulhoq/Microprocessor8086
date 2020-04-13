;29. Add two bytes, if the result is zero then 
;store the result in DL register, otherwise store it in DH register


.model small
.stack 100h
.data
.code

main proc
     
     
    mov al,3h
    mov bl,0FDh
    add al,bl
    
    cmp al,0h
    jz zero
    mov dh,al
    hlt
    
    zero:
    mov dl,al
    hlt
     
      
endp main
end main